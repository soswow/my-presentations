class conf.prensetations.ModernSPA extends conf.Presentation

  initialize: ->
    @defineFormat()
    @defineSpeaker()
    @defineMainTopic()
    @askQuestions()
    for mainSlide in ModernSPA.slides()
      @present mainSlide

  defineFormat: ->
    [
      '
      <blockquote>
        In this talk I guarantee "Hands-on", "hardcore" and a lot of code!
      </blockquote>
      ' #I promised, I deliver!

      'They say "Think in code" I say - "Present in code"'

      'Try to read code with me'
    ]

  defineSpeaker: ->
    @speaker =
      name: "Aleksandr Motsjonov"
      company:
        name: "Toggl"
        role: "Front-end engineer"
        goal: "Insanely simple time tracking"
        moto: "To kill timesheets"
      contact: "soswow@gmail.com"
      notes: [
        "Original Devclub Estonia orginizer"
      ]

  SPA = "Single Page Application"
  defineMainTopic: ->
    @talk =
      title: "Development of #{SPA}, a Modern Approach"
      correction: "There are parts not realted to SPA development specially,
                    but modern web dev in general"
      goals: @generateGoals()

  generateGoals: ->
    goals = []

    for p in conf.participants when p in @participants
      #TODO Check for sexism in variable name
      if p instanceof FrontEndDeveloper
        if p.isNoob()
          goals.push "Show what you should start learing yesterday"
        if p.sleepingPeriodYears >= 5
          goals.push "Show what changed since you fallen asleep"
      else
        "Show what FrontEnd developers use today"

    goals.push "Make sure everyone will know at least one new thing"

    if conf.everything.fails()
      goals.push "Show crazy way of doing presentation in CoffeeScript"

    return goals

  askQuestions: ->
    questions = [
      "What Language do I speak?"
      "How many non-front-end devs here?"
      "Who don't know what is #{SPA} at all?"
      "You can stop me, ask, comment, yield at any moment"
    ]
    for question in questions
      confirm question

  slides: [
      #optional
      title: 'What is SPA?'
      summary: 'How it differs from traditional web-dev?'
    ,

      title: 'Aspects of Modern Web Dev?'
      reason: SPA in WEBDEV
      # This include SPA and classic way
      #TODO Find proper order. Prioritize. Talk about more important stuff first.
      #Have oneliners to connect topics
      components: [
        'IDE to work in'
        'MV*'
        'Templates'
        'JS abstraction'
        'CSS abstraction'
        #TODO 'ES 6' # Know edges of what you can use in pure JS and what comes soon
        'Modules Management'
        'Dependency management'
        'Processes automatization'
        'Debugging, Optimize'
        'Community'
        'Problems'
        #TODO   'Testing'
        #TODO   'HTML5 specs'
      ]
    ,

      #
      # Everything start with IDE, right?
      #
      title: 'IDE'
      solutions: [
        'vim'
        'Sublime'
        'Intellij IDE'
        'Brackets'  #Adobe #For web
        'Atom'      #GitHub
      ]
      moto: 'Know your tools!'
    ,

      #
      # Keep your thousands lines of code orginized
      #
      title: 'MV*'
      helpDecide: 'http://todomvc.com/'
      solutions: {

        angularjs:
          cons: [
            "Lerning curve"
            "cares only about view"
          ]
          pros: [
            "Easy"
            "Community"
            "Modern"
          ]
          examples: [
            "
            angular.module('todomvc')
              .controller('TodoCtrl', function TodoCtrl($scope, $routeParams, $filter, todoStorage) {
                'use strict';

                var todos = $scope.todos = todoStorage.get();

                $scope.newTodo = '';
                $scope.editedTodo = null;
                // ....
              });
            ",
            """
            <footer id="footer" ng-show="todos.length" ng-cloak>
              <span id="todo-count"><strong>{{remainingCount}}</strong>
                <ng-pluralize count="remainingCount" when="{ one: 'item left', other: 'items left' }"></ng-pluralize>
              </span>
              <ul id="filters">
                <li>
                  <a ng-class="{selected: status == ''} " href="#/">All</a>
                </li>
                <li>
                  <a ng-class="{selected: status == 'active'}" href="#/active">Active</a>
                </li>
                <li>
                  <a ng-class="{selected: status == 'completed'}" href="#/completed">Completed</a>
                </li>
              </ul>
              <button id="clear-completed" ng-click="clearCompletedTodos()" ng-show="completedCount">Clear completed ({{completedCount}})</button>
            </footer>
            """
          ]

        backbonejs:
          pros: [
            "Very simple"
            "Doesn't restrain your moves"
            "Low entrance threshold"
            "No magic whatsoever, just your code, just hardcore"
          ]
          cons: [
            "You have to code everything yourself"
            "Doesn’t dictate app structure"
            "Doesn’t require decoupling"
            "It’s even not a Framework!"
            "Not in the trend any more"
            "Unit Testing is impossible"
            "Useless in pure form"
          ]
          structure:
            Model: "Holds model data"
            Collection: "Holds list of models"
            View: "Represent Model or Collection in HTML"
            Router: "Keeps track of user location in application"
          simpleExamples: -> openProject("backbone-examples")

        marionette:
          reasons: [
            "Gives some structure"
            "Implements some usual boiler-plate code"
            "Solves memory leaking problem"
          ]
          simpleExamples: -> openProject("backbone-examples")

        chaplin: -> see @marionette
        #TODO ember: {}
      }
    ,

      #
      # Building blocks, your HTML source
      #
      title: 'HTML Templates'
      points: [
        "logic free" # Not necessarily
        "inside html"
        "precompiled"
      ]
      'more-info': "http://www.smashingmagazine.com/2012/12/05/client-side-templating/"
      solutions:

        handlebars:
          url: 'http://handlebarsjs.com/'
          liveExamples: -> openProject("meals", [
            "list-row.hbs" # General Syntax
            "edit.hbs" # Custom tags / helpers
            ["/templates", ".tmp/script/templates.js"] # Store and compile
          ])
          features: [
            "helpers"
            "very simple"
            "redumentary logic"
          ]

        underscore:
          url: 'http://underscorejs.org/#template'
          note: "Lazy devs choice"
          examples: "
            <a href='#'><%- variable %></a>
            <ul>
              <% items.forEach(function(item){ %>
                <li><%- item %></li>
              <% }) %>
            </ul>
          "

        'native': -> useInTheFuture('WEB Components/Template')
    ,

      #
      # Don't like something in pure JS, no problem
      #
      title: "JS abstraction"
      motivation: "To fix broken language"
      problems: [ #some of them
        "It's wasnt made as world's most popular language in mind"
        "A lot of pit falls" #WAT! video https://www.destroyallsoftware.com/talks/wat
        "There no sugar to it, too much syntax"
        "Javascript-Definitive-Guide-vs-The-Good-Parts.jpg" #show
        "google search.png" #show
      ]
      solutions:

        clojescript:
          targetGroup: 'Clojure/Lisp lovers'
          example:
            """
            (defn print-name []
              (println "Hello, " name)
              (let [name "Bob"]))
            """

        typescipt:
          company: "Microsoft"
          targetGroup: 'Java/C++ lovers'
          example:
            """
            class Camera {
                public forward: Vector;
                public right: Vector;
                public up: Vector;

                constructor(public pos: Vector, lookAt: Vector) {
                    var down = new Vector(0.0, -1.0, 0.0);
                    this.forward = Vector.norm(Vector.minus(lookAt, this.pos));
                    this.right = Vector.times(1.5, Vector.norm(Vector.cross(this.forward, down)));
                    this.up = Vector.times(1.5, Vector.norm(Vector.cross(this.forward, this.right)));
                }
            }

            interface Ray {
                start: Vector;
                dir: Vector;
            }
            """

        dart:
          company: "Google"
          # It is like GO only for JS: guly as hell, but promise to be fast"
          example:
            """
            import 'dart:io';
            import 'package:crypto/crypto.dart';

            void main() {
              new File('file.txt').readAsBytes().then((bytes) {
                // Do something with the bytes. For example, convert to base64.
                String base64 = CryptoUtils.bytesToBase64(bytes);
                // ...
              });
            }
            """

        coffeescript:
          targetGroup: 'Ruby/Python lovers'
          moto: "It's just a JavaScript" #Is not language to learn
          pros: [
            'Easy to write / read. Very-very sweet.'
            'Solves a lot of gotches': [
              "===;"
              "return \n {};"
              "only function expressions"
            ]
          ]
          cons: null
          featureExamples: ->
            for i in [1..10] when i % 2 is 0
              [a, b] = obj[i]

            mapped = a + b for {a, b}, i of obj when i % 2 is 0

            class A extends B
              method: -> console.log "BU"

          compiledJSExample: -> openProject "meals", ".tmp/script/application.js"

        traceur: {}
    ,

      #
      # Keep your CSS maintainable, DRY and modular
      #
      title: "CSS abstraction"
      solutions:

        autoprefixer:
          source: """
              a {
                display: flex;
              }
            """
          result: """
              a {
                display: -webkit-box;
                display: -webkit-flex;
                display: -moz-box;
                display: -ms-flexbox;
                display: flex
              }
            """

        'SCSS/LESS': [
          "_dashboard.scss:28"
          "_progress-radial.scss:104"
          ".tmp/styles/style.css:4194"
        ]

        stylus: """
          fonts = helvetica, arial, sans-serif

          border-radius() /* Mixin */
            -webkit-border-radius arguments
            -moz-border-radius arguments
            border-radius arguments

          body
            font 12px/1.4 fonts

          a.button
            border-radius 5px
        """
      debugging: "https://code.google.com/p/closure-stylesheets/"
    ,

      #
      # Keep your hundreds of classes in order
      #
      title: 'Modules Management'
      problems: [
        "Script includes list become unmaintainable" #Show script-includes.html
        "Hard to test without proper import mechanism"
      ]
      solutions:
        #TODO commonjs: {}
        amd:
          means: 'Asynchronous Module Definition'
          example: ->

            define 'myModule', ['jquery'] , ($) ->
              return -> # Function/Module beeing registered

          cons: "all libs shold be complient with AMD"
          pros: "dependencies can be loaded on demand"

        browserify:
          example: ->

            module.exports = -> # Function/Module beeing registered
            $ = require('jquery') #Using

          cons: "one big source file"
          pros: "can be used with any libraries"
    ,

      #
      # Proper way to include 3rd party assets
      #
      title: 'Dependency management'
      reason: "Node.js uses it, Ruby uses it, Python uses it ... you got a point"
      #TODO ender: {}
      #TODO volo: {}
      #TODO jam: {}
      bower:
        config: 'bower.json' #Show file
        command: 'bower install --save'
    ,

      #
      # There infrastructure we shouldn't care about (too much)
      #
      title: 'Processes automatization'
      reasons: [
        'A lot processes to handle' # SCSS, Coffee, minify, concat, versioning
        'Why use other language? JS around already.'
        'Reuse others solutions (plugins)'
      ]
      solutions:
        #TODO gulp:
        grunt:
          liveFile: './Gruntfile.coffee' #show config examples
          command: 'grunt <task>[:target]'
          tasksExamples: [
            'clean:dist'
            'htmlInclude'
            'concurrent:dist'
              'jst'
              'coffee'
              'compass:dist'
              'imagemin'
              'updatePkg'
            'logTransformer:dist'
            'useminPrepare'
            'concat'
            'cssmin'
            'uglify'
            'copy:dist'
            'filerev'
            'revManifest'
            'usemin'
            'targethtml:prod'
            'replace:distVersion'
            'compress:dist'
          ]
          customTasks: true
          deployTasks: true
          #Run something
    ,

      #
      # When code is written, it's time for debug and optimize
      #
      title: 'Debugging, optimize'
      tips:
        'developer-tools': [
          'Cmd + O'
          'Cmd + Shift + O'
          'Cmd + Alt + F'
          'Edit JS and Save'
          'Brake on ...'
          'Profile chart' #Show profile-chart.png
          'CSS preprocessors'
        ]

        console: [ #in chrome
          '.log' #Your C.O.
          '.count(label)'
          '.log with formatting'
          '%c formatting' #Example from toggl-app
          '.profile / .profileEnd'
          '.time / .timeEnd'
          '.trace'
        ] #https://developer.chrome.com/devtools/docs/console-api

        optimize: [
          'http://www.webpagetest.org/'
          #show webpagetest1.png
          #show webpagetest2.png
          'http://jankfree.org/'
        ]
    ,

      #
      # Where can I find answers, be up to date and constantly learning?
      #
      title: 'Community'
      experts: [
        #In my field of view at least
#        'Aral Balkan' #TODO Uncomment if is in the room
#        'Phil Hawksworth' #TODO Uncomment if is in the room
        'Douglas Crockford'
        'Paul Irish'
        'Christian Heilmann'
        'Bruce Lawson'
        'Paul Lewis'
        'Steve Souders'
        'Lea Verou'
      ]

      'working-groups':
        #To keep track what different working groups are doing:
        'WebApps working group': 'http://www.w3.org/2008/webapps/'
          #http://www.w3.org/2014/04/10-webapps-minutes.html - actuall discussions =)
        'TC39': 'https://github.com/rwaldron/tc39-notes'

      'everything-else': [
        'http://devshelf.us'
        'http://stackoverflow.com'
      ]
    ,

      #
      # Ofcause there is no silver bullet for anything
      #
      title: 'Problems?'
      problems:
        SEO:
          definition: 'Google have hard times navigating your SPA'
          solution: 'generate static version'

        "JS memory leaks":
          definition: 'One page and a lot of JS for hours
                       might lead to memory leaks'
          solution: 'User proper MV* or your MV* properly'
    ,

      title: 'ES 6'
      date: 'December 2014'
      urls: [
        'http://wiki.ecmascript.org/doku.php'
        'https://github.com/rwaldron/tc39-notes'
      ]
      supportTables:
        crossTable:
          'http://kangax.github.io/compat-table/es6/'
        chrome:
          'https://code.google.com/p/v8/issues/list?q=label:Harmony'
        firefox:
          'https://developer.mozilla.org/en/docs/Web/JavaScript/ECMAScript_6_support_in_Mozilla'
      shims: [
        'https://github.com/google/traceur-compiler'
        'https://github.com/paulmillr/es6-shim'
      ]
      examples:
        proxy: '' #TODO #http://soft.vub.ac.be/~tvcutsem/proxies/
        promise: ''
        #MORE
  ]