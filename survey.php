<?php
include_once('return_homepage.php');
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Intelligent Survey</title>
        <link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
        <script type="text/javascript" src="javascript/sliding.form.js"></script>
		<script type="text/javascript" src="javascript/AjaxFileUploaderV2.1/ajaxfileupload.js"></script>
        <script type="text/javascript">
				
		$(document).ready(function() {
			$(".tooltip").before("<img class='tooltip_icon' src='images/tooltip.png'/>");
			
			$(".tooltip_icon").bind("mouseover mouseout", function() {
			$(this).next(".tooltip").toggle();
			});
			
			$('#r5').click(function(){
						 $("#mySelect1").show();
						 $("#mySelect2").hide();		
					});
			$('#r6').click(function(){
						 $("#mySelect1").hide();
						 $("#mySelect2").show();		
					});
			$('#r51').click(function(){
						 $("#mySelect11").show();
						 $("#mySelect21").hide();		
					});
			$('#r61').click(function(){
						 $("#mySelect11").hide();
						 $("#mySelect21").show();		
					});
			$('#r52').click(function(){
						 $("#mySelect12").show();
						 $("#mySelect22").hide();		
					});
			$('#r62').click(function(){
						 $("#mySelect12").hide();
						 $("#mySelect22").show();		
					});
			$('#r53').click(function(){
						 $("#mySelect13").show();
						 $("#mySelect23").hide();		
					});
			$('#r63').click(function(){
						 $("#mySelect13").hide();
						 $("#mySelect23").show();		
					});
			
			$('#sang_cloth').change(function(e) {
				if ($(this).val() === "sang_Other") {
					$("#mySelect").show();
				}
				else
				{
					 $("#mySelect").hide();
				}
			});		

			$('#haldi_cloth').change(function(e) {
				if ($(this).val() === "haldi_Other") {
					$("#haldi_mySelect").show();
				}
				else
				{
					 $("#haldi_mySelect").hide();
				}
			});		
		
			$('#phere_cloth').change(function(e) {
				if ($(this).val() === "phere_Other") {
					$("#phere_mySelect").show();
				}
				else
				{
					 $("#phere_mySelect").hide();
				}
			});		

			$('#Mehndi_cloth').change(function(e) {
				if ($(this).val() === "Mehndi_Other") {
					$("#Mehndi_mySelect").show();
				}
				else
				{
					 $("#Mehndi_mySelect").hide();
				}
			});	
			
			function getCommonDetailsFor(type)
			{
				
				var location     = $(type + "_loc").val();
				var address      = $(type + "_add").val();
				var city         = $(type + "_city").val();
				var state        = $(type + "_state").val();
				var zipcode      = $(type + "_zipcode").val();
				var parking      = $(type + "_park").val();
				var otherDetails = $(type + "_other_det").val();
				var date         = $(type + "_date").val();
				var details      = $(type + "_det").val();
				var gift         = $(type + "_gift").val();
				var cloth        = $(type + "_cloth").val();
				var clothOther   = $(type + "_cloth_other").val();
				
				if(clothOther != "")
				{
					cloth = clothOther;
				}
				var encodedCommon = "location=" + location + 
						  "&street=" + address +
						  "&city=" + city +
						  "&state=" + state +
						  "&zipcode=" + zipcode +
						  "&parking=" + parking +
						  "&otherDetails=" + otherDetails +
						  "&date=" + date +
						  "&details=" + details +
						  "&gift=" + gift +
						  "&cloth=" + cloth;
						  
				return encodedCommon;
			}
			
			$("#SaveButton0").click(function()
			{
				var commonDetails = getCommonDetailsFor("#sang");

				$.ajax({
					type: "POST",
					url: "SaveSangeet.php",
                    success: alert("Data Saved Successfully"),
					data: commonDetails +
					      "&eventType=Sangeet"


				});
			});
			
			$("#SaveButton1").click(function()
			{
				var commonDetails = getCommonDetailsFor("#haldi");

				$.ajax({
					type: "POST",
					url: "SaveSangeet.php",
                    success: alert("Data Saved Successfully"),
					data: commonDetails +
					      "&eventType=Haldi",

				});
			});
			
			$("#SaveButton2").click(function()
			{
				var commonDetails = getCommonDetailsFor("#phere");
				$.ajax({
					type: "POST",
					url: "SavePhere.php",
                    success: alert("Data Saved Successfully"),
					data: commonDetails +
					      "&eventType=Phere",

				});
			});
			
			$("#SaveButton3").click(function()
			{
				var commonDetails = getCommonDetailsFor("#Mehndi");
			
				$.ajax({
					type: "POST",
					url: "SaveRoka.php",
                    success: alert("Data Saved Successfully"),
					data: commonDetails +
					      "&eventType=Mehndi"

				});
			});
			
			$("#SaveButton4").click(function()
			{
				console.debug('here');
				var welcome_text       = $("#welcome_text").val();
				var how_met_text       = $("#how_met_text").val();
				var proposal_text      = $("#proposal_text").val();
				var wedding_party_text = $("#wedding_party_text").val();
				var registry_text      = $("#registry_text").val();
				var bio_for_him      = $("#bio_for_him").val();
				var bio_for_her      = $("#bio_for_her").val();
				var honeymoon_text     = $("#honeymoon_text").val();
				var dataString = "welcome_text="  + welcome_text +
								 "&how_met_text=" + how_met_text +
								 "&proposal_text=" + proposal_text +
								 "&wedding_party_text=" + wedding_party_text +
								 "&registry_text=" + registry_text + 
								 "&honeymoon_text=" + honeymoon_text +
								 "&bio_for_him=" + bio_for_him +
								 "&bio_for_her=" + bio_for_her;
				console.debug(dataString);
				$.ajax({
					type: "POST",
					url: "SaveWebsiteData.php",
					data: dataString
				});
				
				ajaxFileUpload();
				console.debug("OVER HERE");
			});
			
			function ajaxFileUpload()
			{
				//starting setting some animation when the ajax starts and completes
				$("#loading")
				.ajaxStart(function(){
					$(this).show();
				})
				.ajaxComplete(function(){
					$(this).hide();
				});
				
				/*
					prepareing ajax file upload
					url: the url of script file handling the uploaded files
								fileElementId: the file type of input element id and it will be the index of  $_FILES Array()
					dataType: it support json, xml
					secureuri:use secure protocol
					success: call back function when the ajax complete
					error: callback function when the ajax failed
				*/
				$.ajaxFileUpload
				(
					{
						url:'saveUserWebsiteImage.php', 
						secureuri:false,
						fileElementId:'fileToUpload',
						dataType: 'json',
						success: function (data, status)
						{
							if(typeof(data.error) != 'undefined')
							{
								if(data.error != '')
								{
									console.debug(data.error);
								}else
								{
									console.debug(data.msg);
								}
							}
						},
						error: function (data, status, e)
						{
							console.debug(e);
						}
					}
				)
				
				return false;

			} 
		});
		
		$("[name=fooby[2][]]").change(function(){
		  $("#list").toggle($("[name=fooby[2][]]").index(this)===2);
		});
		$("[name=fooby[2][]1]").change(function(){
		  $("#list").toggle($("[name=fooby[2][]1]").index(this)===2);
		});
		
		$("[name=fooby[2][]2]").change(function(){
		  $("#list").toggle($("[name=fooby[2][]2]").index(this)===2);
		});
		
		$("[name=fooby[2][]3]").change(function(){
		  $("#list").toggle($("[name=fooby[2][]3]").index(this)===2);
		});



		</script>
    </head>
    <style>
        span.reference{
            position:fixed;
            left:5px;
            top:5px;
            font-size:10px;
            text-shadow:1px 1px 1px #fff;
        }
	
		 input[type=radio] { 
          padding:0;
          margin:0;
          width:16px;
          height:16px; 
          position:absolute;
          left:0;
          opacity:0
        }

        input[type=radio] + label {
          background:url(http://www.thecssninja.com/demo/css_custom-forms/gr_custom-inputs.png) 0 -1px no-repeat; 
          width:50px;
          height:16px;
        }

        input[type=radio]:checked + label {
          background-position:0 -81px;
        }
        span.reference a{
            color:#555;
            text-decoration:none;
			text-transform:uppercase;
        }
        span.reference a:hover{
            color:#000;
            
        }
        h1{
            color:#ccc;
            font-size:36px;
            text-shadow:1px 1px 1px #fff;
            padding:20px;
        }
    </style>
    <body background="images/back.jpg" style="background-size:cover; background-repeat:no-repeat no-repeat">
        <div id="content"> 
        		<div id="heady"> Welcome!</div>
<div id="tail">Complete this form to store the details about your wedding events. Answer as many or as few questions as you'd like and don't forget to check out the tips; hover over any <img src='images/tooltip.png'/>. 
Whenever  you select or change a design template, the info stored in this form will automatically appear, centered on the template.  You'll have the ability to move sections of your content around the page on the template.</div></br>
				
           
            <div id="wrapper">
                <div id="steps">
                    
                        <fieldset class="step">
                        
                        	<form id="formElem" name="formElem" action="" method="post">
                            <legend>Sangeet</legend>
                            Location Details:
                            <p>
                                <label for="sang_loc">Name Of Location</label>
                                <input id="sang_loc" name="Name Of Location" />
                                <span class="tooltip">i.e. Hyatt Grand, Washington D.C., The Jain Residence, the Diamond Bar Community Center. Some venues have multiple spaces, so you might you want to include the name of the area you’ll be in i.e. The Grand Ballroom, the Sunset Terrace etc. </span>
                                
                            </p>
                            <p>
                                <label for="sang_add">Address</label>
                                <input id="sang_add" name="Address" />
                                
                            </p>
                            <p>
                                <label for="sang_city">City</label>
                                <input id="sang_city" name="City"/>
                            </p>
                            <p>
                                <label for="sang_state">State</label>
                                <input id="sang_state" name="State"/>
                                 <span class="tooltip">If you prefer, spell out the whole state name (as opposed to the abbreviation)</span>
                            </p>
                           <p>
                                <label for="sang_zipcode">Zipcode</label>
                                <input id="sang_zipcode" name="sang_Zipcode"/>
                                 
                            </p>
                            <p>
                                <label >Is This a Hotel?</label>
                                 <input type="radio" class="radio" value="3" name="fooby[2][]" id="r6" /><label for="r6">No</label> 
                                 
                                <input type="radio" class="radio" value="2" name="fooby[2][]" id="r5" /><label for="r5">Yes</label>
								<span id="mySelect1" style="display:none;"></br><label>Parking Arrangement</label>
                                <input id="sang_park" name="park"/></span>
                                <span class="tooltip">1.Giving the parking vouchers the venue will give you, to your deejay 2.Make an announcement some time during the program at the event, to tell your guests they can get their parking voucher at the deejay booth” </span>
                            </p>
                                
     
  
                            
                            <p>
                                <label >Any Other Location Details For Your Guest?</label>
                                <input id="sang_other_det" name="sang_other_det"/>
                                <span class="tooltip">This could include things like gate codes, special instructions if the directions could be confusing</span>
                            </p>
                            
                            <p>
                                <label >The Date:</label>
                                <input id="sang_date" name="sang_date"/>
                                <span class="tooltip">Please enter the date as you want it to appear i.e. 10/26/13.The twenty-sixth of October,Two thousand and thirteen,October 26, 2013 </span>
                            </p>
                            
                            <p>
                                <label >Program Details:</label>
                                <input id="sang_det" name="sang_det"/>
                                <span class="tooltip">i.e. Dinner... 7:30pm Program... 8:00pm</span>
                            </p>
                            
                            <p>
                                <label >Gift Details:</label>
                                <input id="sang_gift" name="sang_gift"/>
                                <span class="tooltip">i.e. No boxed gifts, No gifts please</span>
                            </p>
                            
                            <p>
                                <label for="sang_cloth">Clothing Attire Details :</label>
                                <select id="sang_cloth" name="sang_cloth">
                                    <option value="sang_Indian" selected>Indian</option>
                                    <option value="sang_Non-Indian">Non-Indian</option>
                                    <option value="sang_Casual">Casual</option>
                                    <option value="sang_Formal">Formal</option>
                                    <option value="sang_Other">Other</option>   
                                </select>
                                
                                   
  								<span id="mySelect" style="display:none;"> <label>Please describe</label>
                                <input id="sang_cloth_other" name="sang_cloth_other"/></span>

                            </p>
                            <p class="submit">
                                <button id="SaveButton0" type="Button">Save</button>
                            </p>
                             </form>
                        </fieldset>
                        <fieldset class="step">
                        
                        <form id="formElem1" name="formElem1" action="" method="post">
                            <legend>Haldi</legend>
                            Location Details:
                            <p>
                                <label for="haldi_loc">Name Of Location</label>
                                <input id="haldi_loc" name="Name Of Location" />
                                <span class="tooltip">i.e. Hyatt Grand, Washington D.C., The Jain Residence, the Diamond Bar Community Center. Some venues have multiple spaces, so you might you want to include the name of the area you’ll be in i.e. The Grand Ballroom, the Sunset Terrace etc. </span>
                                
                            </p>
                            <p>
                                <label for="haldi_add">Address</label>
                                <input id="haldi_add" name="Address" />
                                
                            </p>
                            <p>
                                <label for="haldi_city">City</label>
                                <input id="haldi_city" name="City"/>
                            </p>
                            <p>
                                <label for="haldi_state">State</label>
                                <input id="haldi_state" name="State"/>
                                 <span class="tooltip">If you prefer, spell out the whole state name (as opposed to the abbreviation)</span>
                            </p>
                           <p>
                                <label for="haldi_zipcode">Zipcode</label>
                                <input id="haldi_zipcode" name="haldi_Zipcode"/>
                                 
                            </p>
                            <p>
                                <label >Is This a Hotel?</label>
                                 <input type="radio" class="radio" value="3" name="fooby[2][]1" id="r61" /><label for="r61">No</label> 
                                 
                                <input type="radio" class="radio" value="2" name="fooby[2][]1" id="r51" /><label for="r51">Yes</label>
		<span id="mySelect11" style="display:none;"></br><label>Parking Arrangement</label>
                                <input id="park1" name="park1"/></span>
                                 <span class="tooltip">1.Giving the parking vouchers the venue will give you, to your deejay 2.Make an announcement some time during the program at the event, to tell your guests they can get their parking voucher at the deejay booth” </span>
                            </p>
                                
     
  
                            
                            <p>
                                <label >Any Other Location Details For Your Guest?</label>
                                <input id="haldi_other_det" name="haldi_other_det"/>
                                <span class="tooltip">This could include things like gate codes, special instructions if the directions could be confusing</span>
                            </p>
                            
                            <p>
                                <label >The Date:</label>
                                <input id="haldi_date" name="haldi_date"/>
                                <span class="tooltip">Please enter the date as you want it to appear i.e. 10/26/13.The twenty-sixth of October,Two thousand and thirteen,October 26, 2013 </span>
                            </p>
                            
                            <p>
                                <label >Program Details:</label>
                                <input id="haldi_det" name="haldi_det"/>
                                <span class="tooltip">i.e. Dinner... 7:30pm Program... 8:00pm</span>
                            </p>
                            
                            <p>
                                <label >Gift Details:</label>
                                <input id="haldi_gift" name="haldi_gift"/>
                                <span class="tooltip">i.e. No boxed gifts, No gifts please</span>
                            </p>
                            
                            <p>
                                <label for="haldi_cloth">Clothing Attire Details :</label>
                                <select id="haldi_cloth" name="haldi_cloth">
                                    <option value="haldi_Indian" selected>Indian</option>
                                    <option value="haldi_Non-Indian">Non-Indian</option>
                                    <option value="haldi_Casual">Casual</option>
                                    <option value="haldi_Formal">Formal</option>
                                    <option value="haldi_Other">Other</option>   
                                </select>
                                
                                   
  								<span id="haldi_mySelect" style="display:none;"> <label>Please describe</label>
                                <input id="haldi_cloth_other" name="haldi_cloth_other"/></span>

                            </p>
                            <p class="submit">
                                <button id="SaveButton1" type="Button">Save</button>
                            </p>
                             </form>
                        
                        </fieldset>
                        <fieldset class="step">
                            
                         <form id="formElem2" name="formElem2" action="" method="post">
                            <legend>Phere</legend>
                            Location Details:
                            <p>
                                <label for="phere_loc">Name Of Location</label>
                                <input id="phere_loc" name="Name Of Location" />
                                <span class="tooltip">i.e. Hyatt Grand, Washington D.C., The Jain Residence, the Diamond Bar Community Center. Some venues have multiple spaces, so you might you want to include the name of the area you’ll be in i.e. The Grand Ballroom, the Sunset Terrace etc. </span>
                                
                            </p>
                            <p>
                                <label for="phere_add">Address</label>
                                <input id="phere_add" name="Address" />
                                
                            </p>
                            <p>
                                <label for="phere_city">City</label>
                                <input id="phere_city" name="City"/>
                            </p>
                            <p>
                                <label for="phere_state">State</label>
                                <input id="phere_state" name="State"/>
                                 <span class="tooltip">If you prefer, spell out the whole state name (as opposed to the abbreviation)</span>
                            </p>
                           <p>
                                <label for="phere_zipcode">Zipcode</label>
                                <input id="phere_zipcode" name="phere_Zipcode"/>
                                 
                            </p>
                            <p>
                                <label >Is This a Hotel?</label>
                                 <input type="radio" class="radio" value="3" name="fooby[2][]2" id="r62" /><label for="r62">No</label> 
                                 
                                <input type="radio" class="radio" value="2" name="fooby[2][]2" id="r52" /><label for="r52">Yes</label>
		<span id="mySelect12" style="display:none;"></br><label>Parking Arrangement</label>
                                <input id="park2" name="park2"/></span>
                                 <span class="tooltip">1.Giving the parking vouchers the venue will give you, to your deejay 2.Make an announcement some time during the program at the event, to tell your guests they can get their parking voucher at the deejay booth” </span>
                            </p>
                                
     
  
                            
                            <p>
                                <label >Any Other Location Details For Your Guest?</label>
                                <input id="phere_other_det" name="phere_other_det"/>
                                <span class="tooltip">This could include things like gate codes, special instructions if the directions could be confusing</span>
                            </p>
                            
                            <p>
                                <label >The Date:</label>
                                <input id="phere_date" name="phere_date"/>
                                <span class="tooltip">Please enter the date as you want it to appear i.e. 10/26/13.The twenty-sixth of October,Two thousand and thirteen,October 26, 2013 </span>
                            </p>
                            
                            <p>
                                <label >Program Details:</label>
                                <input id="phere_det" name="phere_det"/>
                                <span class="tooltip">i.e. Dinner... 7:30pm Program... 8:00pm</span>
                            </p>
                            
                            <p>
                                <label >Gift Details:</label>
                                <input id="phere_gift" name="phere_gift"/>
                                <span class="tooltip">i.e. No boxed gifts, No gifts please</span>
                            </p>
                            
                            <p>
                                <label for="phere_cloth">Clothing Attire Details :</label>
                                <select id="phere_cloth" name="phere_cloth">
                                    <option value="phere_Indian" selected>Indian</option>
                                    <option value="phere_Non-Indian">Non-Indian</option>
                                    <option value="phere_Casual">Casual</option>
                                    <option value="phere_Formal">Formal</option>
                                    <option value="phere_Other">Other</option>   
                                </select>
                                
                                   
  								<span id="phere_mySelect" style="display:none;"> <label>Please describe</label>
                                <input id="phere_cloth_other" name="phere_cloth_other"/></span>

                            </p>
                            <p class="submit">
                                <button id="SaveButton2" type="Button">Save</button>
                            </p>
                             </form>
                             
                        </fieldset>
                        
                        <fieldset class="step">
                           
                           <form id="formElem3" name="formElem3" action="" method="post">
                            <legend>Mehndi</legend>
                            Location Details:
                            <p>
                                <label for="Mehndi_loc">Name Of Location</label>
                                <input id="Mehndi_loc" name="Name Of Location" />
                                <span class="tooltip">i.e. Hyatt Grand, Washington D.C., The Jain Residence, the Diamond Bar Community Center. Some venues have multiple spaces, so you might you want to include the name of the area you’ll be in i.e. The Grand Ballroom, the Sunset Terrace etc. </span>
                                
                            </p>
                            <p>
                                <label for="Mehndi_add">Address</label>
                                <input id="Mehndi_add" name="Address" />
                                
                            </p>
                            <p>
                                <label for="Mehndi_city">City</label>
                                <input id="Mehndi_city" name="City"/>
                            </p>
                            <p>
                                <label for="Mehndi_state">State</label>
                                <input id="Mehndi_state" name="State"/>
                                 <span class="tooltip">If you prefer, spell out the whole state name (as opposed to the abbreviation)</span>
                            </p>
                           <p>
                                <label for="Mehndi_zipcode">Zipcode</label>
                                <input id="Mehndi_zipcode" name="Zipcode"/>
                                 
                            </p>
                            <p>
                                <label >Is This a Hotel?</label>
                                 <input type="radio" class="radio" value="3" name="fooby[2][]3" id="r63" /><label for="r63">No</label> 
                                 
                                <input type="radio" class="radio" value="2" name="fooby[2][]3" id="r53" /><label for="r53">Yes</label>
		<span id="mySelect13" style="display:none;"></br><label>Parking Arrangement</label>
                                <input id="park3" name="park3"/></span>
                                 <span class="tooltip">1.Giving the parking vouchers the venue will give you, to your deejay 2.Make an announcement some time during the program at the event, to tell your guests they can get their parking voucher at the deejay booth” </span>
                            </p>
                                
     
  
                            
                            <p>
                                <label >Any Other Location Details For Your Guest?</label>
                                <input id="Mehndi_other_det" name="Mehndi_other_det"/>
                                <span class="tooltip">This could include things like gate codes, special instructions if the directions could be confusing</span>
                            </p>
                            
                            <p>
                                <label >The Date:</label>
                                <input id="Mehndi_date" name="Mehndi_date"/>
                                <span class="tooltip">Please enter the date as you want it to appear i.e. 10/26/13.The twenty-sixth of October,Two thousand and thirteen,October 26, 2013 </span>
                            </p>
                            
                            <p>
                                <label >Program Details:</label>
                                <input id="Mehndi_det" name="Mehndi_det"/>
                                <span class="tooltip">i.e. Dinner... 7:30pm Program... 8:00pm</span>
                            </p>
                            
                            <p>
                                <label >Gift Details:</label>
                                <input id="Mehndi_gift" name="Mehndi_gift"/>
                                <span class="tooltip">i.e. No boxed gifts, No gifts please</span>
                            </p>
                            
                            <p>
                                <label for="Mehndi_cloth">Clothing Attire Details :</label>
                                <select id="Mehndi_cloth" name="Mehndi_cloth">
                                    <option value="Mehndi_Indian" selected>Indian</option>
                                    <option value="Mehndi_Non-Indian">Non-Indian</option>
                                    <option value="Mehndi_Casual">Casual</option>
                                    <option value="Mehndi_Formal">Formal</option>
                                    <option value="Mehndi_Other">Other</option>   
                                </select>
                                
                                   
  								<span id="Mehndi_mySelect" style="display:none;"> <label>Please describe</label>
                                <input id="Mehndi_cloth_other" name="Mehndi_cloth_other"/></span>

                            </p>
                            <p class="submit">
                                <button id="SaveButton3" type="Button">Save</button>
                            </p>
                             </form>
                           
                        </fieldset>
                         
						<fieldset class="step">
                           
                           <form id="formElem4" name="formElem4" action="" method="post">
                            <legend>PersonalData</legend>
                            Location Details:
                            <p>
                                <label for="welcome_text">Welcome Text</label>
                                <textarea id="welcome_text" name="Welcome Text" rows="5" cols="20" wrap="physical"></textarea>
                                <span class="tooltip">Message that welcomes guest on the main page</span>
                                
                            </p>
                            <p>
                                <label for="how_met_text">How You Met</label>
                                <textarea id="how_met_text" name="How You Met" rows="5" cols="20" wrap="physical"></textarea>
                            </p>
                            <p>
                                <label for="proposal_text">Proposal Story</label>
								<textarea id="proposal_text" name="Proposal Story" rows="5" cols="20" wrap="physical"></textarea>
                            </p>
                            <p>
                                <label for="wedding_party_text">Wedding Party</label>
								<textarea id="wedding_party_text" name="Wedding Party" rows="5" cols="20" wrap="physical"></textarea>
                                <span class="tooltip">List names, seperated by a ","</span>
                            </p>
                           <p>
                                <label for="registry_text">Where We are Registerd</label>
								<textarea id="registry_text" name="Where We are Registered" rows="2" cols="20" wrap="physical"></textarea>
                            </p>
                           <p>
                                <label for="bio_for_him">Brief Bio for Him</label>
								<textarea id="bio_for_him" name="Brief Bio for Him" rows="5" cols="20" wrap="physical"></textarea>
                            </p>
                           <p>
                                <label for="bio_for_her">Brief Bio for Her</label>  
								<textarea id="bio_for_her" name="Brief Bio for Her" rows="5" cols="20" wrap="physical"></textarea>
                            </p>
						   <p>
                                <label for="honeymoon_text">Honeymoon Details</label>
								<textarea id="honeymoon_text" name="Honeymoon Details" rows="5" cols="20" wrap="physical"></textarea>
								<span class="tooltip">Where are you going, what you plan on doing there, etc</span>								
                            </p>
							<p>
								<label for="fileToUpload">Upload Photo</label>
								<input id="fileToUpload" type="file" size="45" name="fileToUpload" accept="image/*"/>
								<span class="tooltip">Accepts .gif, .jpeg, or .png image files</span>		
							</p>
							
                            <p class="submit">
								<img id="loading" src="javascript/AjaxFileUploaderV2.1/loading.gif" style="display:none;">
                                <button id="SaveButton4" type="Button">Save</button>
                            </p>
                             </form>
                           
                        </fieldset>
                </div>
                <div id="navigation" style="display:none;">
                    <ul>
                        <li class="selected">
                            <a href="#">Sangeet</a>
                        </li>
                        <li>
                            <a href="#">Haldi</a>
                        </li>
                        <li>
                            <a href="#">Phere</a>
                        </li>
                        <li>
                            <a href="#">Mehndi</a>
                        </li>
						<li>
                            <a href="#">PersonalData</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </body>
</html>
