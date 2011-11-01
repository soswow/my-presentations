function go(location){
  var form = document.getElementById('redirectionForm');
  form.action = location;
  form.submit();
}

function videoTo(seconds){
  var video = document.getElementById('SebVideo');
  video.api_seekTo(seconds);
  video.api_play();
}

(function($){
  $(function(){
    var hint = $("#hintArrow");
    $("input.question").keyup(function(e){
      var answer = parseInt($(this).attr("answer"), 10);
      if(e.keyCode == 13){
        var value = parseInt($(this).val(), 10);
        if(value > answer){
          hint.css("color","red").html("&darr;");
        }else if(value < answer){
          hint.css("color","green").html("&uarr;");
        }else if(value == answer){
          hint.html("WELL DONE!");
        }else{
          hint.html("WTF!");
        }
      }
    });
  });
}(jQuery));