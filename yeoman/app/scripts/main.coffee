$ ->
  Reveal.initialize
    controls: true
    progress: true
    history: true
    center: true

    theme: Reveal.getQueryHash().theme, # available themes are in /css/theme
    transition: Reveal.getQueryHash().transition || 'default', # default/cube/page/concave/zoom/linear/fade/none

    # Optional libraries used to extend on reveal.js
    dependencies: [
      { src: 'components/reveal.js/lib/js/classList.js', condition: -> !document.body.classList}
      { src: 'components/reveal.js/plugin/markdown/showdown.js', condition: -> $('section[data-markdown]').length }
      { src: 'components/reveal.js/plugin/markdown/markdown.js', condition: -> $('section[data-markdown]').length }
      { src: 'components/reveal.js/plugin/highlight/highlight.js', async: true, callback: -> hljs.initHighlightingOnLoad() }
#      { src: 'components/reveal.js/plugin/zoom-js/zoom.js', async: true, condition: -> !!document.body.classList }
      { src: 'components/reveal.js/plugin/notes/notes.js', async: true, condition: -> !!document.body.classList }
      #src: 'plugin/remotes/remotes.js', async: true, condition: -> !!document.body.classList
    ]

  $("a[href^=http]").attr "target", "blank"