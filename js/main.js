$(document).ready(function() {

  $("img").click(function(){
    var images=$('img');
    var slides=new Array();
    var num=images.length;
    for(var i=0;i<num;i++){
      var e=$(images[i]).attr('src');
      var tmp={image: e, title:"yeah"};
      slides[i]=tmp;
    }
        $.supersized({
          slide_interval          :   3000,   // Length between transitions
          transition              :   1,      // 0-None, 1-Fade, 2-Slide Top, 3-Slide Right, 4-Slide Bottom, 5-Slide Left, 6-Carousel Right, 7-Carousel Left
          transition_speed    : 700,    // Speed of transition
          slide_links       : 'blank',  // Individual links for each slide (Options: false, 'num', 'name', 'blank')
          slides          : slides
        });


  });
});



