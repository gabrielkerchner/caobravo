$(document).ready(function(){


    
    var open = false;
    $("#card-row a").click(function(){
      
      if(open){
        
        $(this).find("#icon-collapse").attr('class', 'fa fa-chevron-right'); 
      } else{
        $(this).find("#icon-collapse").attr('class', 'fa fa-chevron-right open'); 
      }
      
      open = !open;
    });

    $(".main").onepage_scroll({
    sectionContainer: "section"
    });


    var home_href = window.location.origin + "/";
    var id_post = $("#post").data("id");
    var post_href = 'http://localhost:8000/blog/' + id_post;

    if (window.location.href != home_href) {
        if (window.location.hash) {
            $("body").addClass("actived-onepage-scroll");
        } else {
            $("body").addClass("disabled-onepage-scroll");
            $("nav").css("background-color", "#373337")
        } 
    } 
    
    if (window.location.href == post_href) {
        $("body").css("background-color", "white")
        $(".sidebar i, p, button").css("color", "#373337")
        $(".sidebar button").removeClass("btn-outline-warning").addClass("btn-outline-dark");
    }

    $(".nav-item a").click(function() {
        var page_index = $(this).attr("data-page-index")
        $(".main").moveTo(page_index);
    });



    if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {

      var menu = false;
      var blog_section = $("#blog")
      var franquia_section = $("#franquia")
      var eventos_section = $("#eventos")
      var contato_section = $("#contato")

      $("#hot-dog-2").empty().replaceWith("");
      $("#hot-dog-3").empty().replaceWith("");
      $("#hot-dog-3").empty().replaceWith("");
      $("#hot-dog-4").empty().replaceWith("");
      $("#hot-dog-5").empty().replaceWith("");
      
      blog_section.attr("data-index", 4);
      blog_section.css("top", "300%");

      franquia_section.attr("data-index", 5);
      franquia_section.css("top", "400%");

      eventos_section.attr("data-index", 6);
      eventos_section.css("top", "500%");

      contato_section.attr("data-index", 7);
      contato_section.css("top", "600%");

      $("#open-menu").click(function() {

        if(menu) {
          borderHide()
        } else {
          borderShow()
        }
      })
      
    }

    function borderShow() {
      $("#open_menu_mobile").removeClass("slide-out-top").addClass("slide-in-top")
      $("#open_menu_mobile").show()
      menu = !menu;
    }
    function borderHide() {
      $("#open_menu_mobile").removeClass("slide-in-top").addClass("slide-out-top")
      menu = !menu;
    }
});