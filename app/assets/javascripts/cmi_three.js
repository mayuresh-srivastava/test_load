$(window).load(function() {
     
  windowWidth = $(window).width();
if(windowWidth > 991)
{
    var heightsA = $(".abc").map(function() {
        return $(this).height();
    }).get(),

    maxHeightA = Math.max.apply(null, heightsA);
   // alert(maxHeightA)

    $(".abc").height(maxHeightA+10);
    
    var heightsB = $(".abc1").map(function() {
        return $(this).height();
    }).get(),

    maxHeightB = Math.max.apply(null, heightsB);

    $(".abc1").height(maxHeightB+10);
     var heights = $(".well").map(function() {
        return $(this).height();
    }).get(),

    maxHeight = Math.max.apply(null, heights);

    $(".well").height(maxHeight);
    $(".well").css("border","none");

    var heightsE = $(".bottom-eq").map(function() {
        return $(this).height();
    }).get(),

    minHeight = Math.min.apply(null, heightsE);

    $(".bottom-eq").height(minHeight);
   $("#add").height(minHeight+15);
    //alert(minHeight);
    minHeight=minHeight-175;
     //alert(minHeight);
    lHeight=minHeight.toString();
     //alert(lHeight);
   $("#overflow-text").css("min-height",lHeight+"px");
}
   //$("body").show();
     



});



$(window).resize(checkWidth);
function checkWidth(){
  windowWidth = $(window).width();
if(windowWidth > 991)
{
     

    // alert("got called!");
    var heightsA = $(".abc").map(function() {
        return $(this).height();
    }).get(),

    maxHeightA = Math.max.apply(null, heightsA);
   // alert(maxHeightA)

    $(".abc").height(maxHeightA);
    
    var heightsB = $(".abc1").map(function() {
        return $(this).height();
    }).get(),

    maxHeightB = Math.max.apply(null, heightsB);

    $(".abc1").height(maxHeightB);
     var heights = $(".well").map(function() {
        return $(this).height();
    }).get(),

    maxHeight = Math.max.apply(null, heights);

    $(".well").height(maxHeight);
    $(".well").css("border","none");

    var heightsE = $(".bottom-eq").map(function() {
        return $(this).height();
    }).get(),

    minHeight = Math.min.apply(null, heightsE);

    $(".bottom-eq").height(minHeight);
   $("#add").height(minHeight);
    //alert(minHeight);
    minHeight=minHeight-160;
     //alert(minHeight);
    lHeight=minHeight.toString();
     //alert(lHeight);
   $("#overflow-text").css("min-height",lHeight+"px");
   //$("body").show();
     
}


}