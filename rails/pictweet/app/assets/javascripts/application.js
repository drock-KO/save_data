// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

window.addEventListener("load", function() {
  var btn = document.querySelector("input");

  btn.addEventListener("click", function() {
    var good = document.querySelector(".good");
    good.innerText = "いいねされた！";
  });  
});

$(window).on("load", function() {
  $("li").on("click", function() {
    $("li.selected").removeClass("selected");
    $(this).addClass("selected");
    $(".contents row div").hide();
    $("." + this.id).show();
  });
});

// $('#comment_text').val("")
// $('.comments').html("<%= j(render partial'index', collection: @comments) %>")


// $(document).on('turbolinks:load'), function(){
//   $('#comment_text').on('submit', function(e){
//     e.preventDefault();
//     var comment = new FormData(this);
//     var url = (window.location.href);
//     $.ajax({
//       url: url,
//       type: 'POST'
//       data: comment,
//       dataType: "json",
//       processData: false,
//       contentType: false
//     })
//   })
// };