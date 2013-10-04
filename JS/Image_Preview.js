/*
 * Url preview script 
 * powered by jQuery (http://www.jquery.com)
 * 
 * written by Alen Grakalic (http://cssglobe.com)
 * 
 * for more info visit http://cssglobe.com/post/1695/easiest-tooltip-and-image-preview-using-jquery
 *
 */
 
this.screenshotPreview = function(){	
	/* CONFIG */
		
		xOffset = 10;
		yOffset = 30;
		
		// these 2 variable determine popup's distance from the cursor
		// you might want to adjust to get the right result
		
	/* END CONFIG */
	$("img.template_icon").hover(function(e){
		this.t = this.title;
		//this.title = "";	
		var c = (this.alt != "") ? "<br/>" + this.t : "";
		$("body").append("<p id='preview'><img src='"+ this.alt +"' alt='url preview'/>"+ c +"</p>");	
		//$("body").append("<p>src='"+ this.rel +"' alt='url preview' "+ c +"</p>");	
		$("#preview")
			.css("top",(e.pageY - xOffset) + "px")
			.css("left",(e.pageX + yOffset) + "px")
			.fadeIn("fast");						
    },
	function(){
		this.title = this.t;	
		$("#preview").remove();
    });	
	$("img.template_icon").mousemove(function(e){
		$("#preview")
			.css("top",(e.pageY - xOffset) + "px")
			.css("left",(e.pageX + yOffset) + "px")
			.css("display", "block");
	});			
};


// starting the script on page load
$(document).ready(function(){
	screenshotPreview();
	
	$('#Layout_Selection input:radio').addClass('input_hidden');
	$('#Layout_Selection label img').click(function() {
		$('.selected').removeClass('selected');
		$(this).addClass('selected');
    //$(this).addClass('selected').siblings().removeClass('selected');
});
});

