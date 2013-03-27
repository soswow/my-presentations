(function() {

  $(function() {
    Reveal.initialize({
      controls: true,
      progress: true,
      history: true,
      center: true,
      theme: Reveal.getQueryHash().theme,
      transition: Reveal.getQueryHash().transition || 'default',
      dependencies: [
        {
          src: 'components/reveal.js/lib/js/classList.js',
          condition: function() {
            return !document.body.classList;
          }
        }, {
          src: 'components/reveal.js/plugin/markdown/showdown.js',
          condition: function() {
            return $('section[data-markdown]').length;
          }
        }, {
          src: 'components/reveal.js/plugin/markdown/markdown.js',
          condition: function() {
            return $('section[data-markdown]').length;
          }
        }, {
          src: 'components/reveal.js/plugin/highlight/highlight.js',
          async: true,
          callback: function() {
            return hljs.initHighlightingOnLoad();
          }
        }, {
          src: 'components/reveal.js/plugin/notes/notes.js',
          async: true,
          condition: function() {
            return !!document.body.classList;
          }
        }
      ]
    });
    return $("a[href^=http]").attr("target", "blank");
  });

}).call(this);
