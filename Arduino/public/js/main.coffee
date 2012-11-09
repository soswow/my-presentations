$ ->
  $("#toggleLED").click ->
    $.get "/toggle-led", => $(this).toggleClass "btn-danger"
      
  $(".gallery .showNext").click ->
    $(this).hide().next(".showNext").show()
    $(this).parent().addClass("started")
    if $(this).next(".showNext").show().length is 0
      $(this).parent().find(".showNext:eq(0)").show()

  $("#runMorseCode").click ->
    morseFeedback.empty()
    $(this).attr("disabled", "disabled").toggleClass "btn-danger"
    $.get "/morse-code", {
      data: 'Hello World'
    }, (data) =>
      morseFeedback.html data.join "<br/>"
      $(this).removeAttr("disabled").toggleClass "btn-danger"

  socket = io.connect('http://localhost');
  progressBar = $("#progressBar")
  morseFeedback = $("#morseFeedback")
  socket.on 'connect', ->
    console.log "Got connection, progressBar"
    socket.on 'progress', (data) ->
      progressBar.css width: "#{data}%"

    socket.on 'morse-feedback', (letter) ->
      morseFeedback.html morseFeedback.html() + letter

      