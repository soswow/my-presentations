# Before I start about this presentation format.
# > In this talk I guarantee "Hands-on", "hardcore" and a lot of code!
# I promised, I deliver!

# They say "Think in code" I say - "Present in code"

# Something not realted to SPA development specially, but modern web dev especially

# Open images beforehand
class conf.prensetations.ModernSPA extends conf.Presentation
  flashScreen: "<img src='../images/DevConFu%20presentation%20slide.png' />"

  initialize: ->
    @showSplashScreen()
    @defineSpeaker()
    @defineMainTopic()
    @askQuestions()
    for mainSlide in ModernSPA.slides()
      mainSlide.present()

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
      goals: @generateGoals()

  generateGoals: ->
    goals = []
    for guy in conf.participants when guy in @participants
      #TODO Check for sexism in variable name
      if guy instanceof FrontEndDeveloper

        if guy.isNoob()
          goals.push "Show what you should start learing yesterday"

        if guy.sleepingPeriodYears >= 5
          goals.push "Show what changed since you fallen asleep"

      else
        "Show what FrontEnd developers use today"

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
        'IDE to work in' # Everything start with IDE, right?
        'MV*' # Keep your code orginized
        'Templates' # Building blocks, your HTML source
        'CSS abstraction' # Keep your CSS maintainable, DRY and modular
        'ES 6' # Know edges of what you can use in pure JS and what comes soon
        'Modules Management' # Keep your hundreds of classes in order
        'Dependency management' # Proper way to include 3rd party assets
        'JS abstraction' # Don't like anything of pure JS, no problem
        'Processes automatization' # There tens of infrastructure we shouldn't care about
        'Debugging, Optimize' # When code is written, it's time for debug and optime
        'Community' # Where can I find answers, be up to date and constantly learning?
        #TODO   'Testing'
        #TODO   'HTML5 specs'
      ]
    ,

      title: 'Modules Management'
      problems: [
        "Script includes list become unmaintainable" #Show what I mean
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

      title: 'HTML Templates'
#      definition: "
#        A document that contains parameters, identified by some special syntax,
#        that are replaced by actual arguments by the template processing system.
#      "
      points: [
        "logic free"
        "inside html"
        "precompiled"
      ]
      # Mention WEB Components Template doc.
      solutions:
        handlebars:
          url: 'http://handlebarsjs.com/'
          examples: [
            #TODO
          ]
        underscore:
          url: 'http://underscorejs.org/#template'
          # Lazy dev chose
          examples: [
            #TODO
          ]
      info: "http://www.smashingmagazine.com/2012/12/05/client-side-templating/"
    ,

      title: "JS abstraction"
      motivation: "To fix broken language"
      #TODO See in my presentation
      problems:
      benifits:
      solutions:
        coffeescript: {}
        typescipt: {}
        clojescript: {}
    ,


      title: "CSS abstraction"
      solutions:
#        autoprefixer
#        SCSS
#        LESS
#        stylus
#      https://code.google.com/p/closure-stylesheets/
#     Compare result
#     Show pie-chart example



#   HTML5 specs -  "Web Hypertext Application Technology Working Group" makes it
#        "release a stable HTML5 Recommendation by the end of 2014"
#      web components

#   WebApps features status -
#     http://www.w3.org/2008/webapps/wiki/PubStatus

    #modernizer polifils

      title: 'IDE'
      moto: 'Know your tools'
      solutions: [
        'vim'
        'sublime'
        'Intellij IDE'
        'brackets'  #Adobe
        'atom'      #GitHub
      ]
    ,


      title: 'Debugging, Evaluate, optimize'
      tips:
        'developer-tools': [
          'Cmd + O'
          'Cmd + Shift + O'
          'Cmd + Alt + F'
          'Edit JS and Save'
          'Brake on ...'
          'Profile chart' #Show google one and own one
          'CSS preprocessors' #https://developer.chrome.com/devtools/docs/css-preprocessors
        ]

        'console': [ #in chrome
          '.log' #Your C.O.
          '.count(label)'
          '.log with formatting'
          '%c formatting' #Example from toggl-app
          '.profile / .profileEnd'
          '.time / .timeEnd'
          '.trace'
        ] #https://developer.chrome.com/devtools/docs/console-api

        'optimize': [
          'http://www.webpagetest.org/'
          'http://jankfree.org/'
        ]
    ,


      title: 'Community'
      experts: [
#        'Aral Balkan' #TODO Add if he is in the room
#        'Phil Hawksworth' #TODO Add if he is in the room
        'Douglas Crockford'
        'Paul Irish'
        'Christian Heilmann'
        'Bruce Lawson'
        'Paul Lewis'
        'Steve Souders'
        'Lea Verou'
        #In my field in view at least
      ]

      'working-groups':
        #To keep track what different working groups are doing:
        'WebApps working group': 'http://www.w3.org/2008/webapps/'
          #http://www.w3.org/2014/04/10-webapps-minutes.html - actuall discussions =)
        'TC39': 'https://github.com/rwaldron/tc39-notes'

      'everything-else':[
        'http://stackoverflow.com'
        'http://devshelf.us'
      ]
    ,


      title: 'Dependency management'
      reason: '' #FIXME
      #TODO ender: {}
      #TODO volo: {}
      #TODO jam: {}
      bower:
        link: ''
        config: ''
        command: ''
    ,


      title: 'Processes automatization'
      reasons: [
        'A lot processes to handle'
        'Why use other language? JS around already.'
        'Reuse others solutions (plugins)'
      ]
      solutions:
        #TODO gulp:
        grunt:
          command: 'grunt <task>[:target]'
          liveFile: './Gruntfile.coffee' #show config examples
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
    ,


      title: 'MV*'
      helpDecide: 'http://todomvc.com/'
      solutions:
        backbonejs:
          # Take from prev talks
          pros: []
          cons: []
          marionette:
            reason:
            liveExample:
#          chaplin: {}
        angularjs:
          pros: []
          cons: []
#       TODO ember: {}






      title: 'Cons'
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
    ,

      title: 'Problems?'
      problems:
        SEO:
          definition: 'Google have hard times navigating your SPA'
          solution: 'generate static version'

        "JS memory leaks":
          definition: 'One page and a lot of JS for hours
                       might lead to memory leaks'
          solution: 'User proper MV* or your MV* properly'
  ]