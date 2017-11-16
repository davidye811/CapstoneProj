$(window).unload(function() {});//attempt to have safari reload with back button, forces the page to refresh and not pull from cache
var touchDevice = is_touch_device();

function $TT() {
    var elements = new Array();
    for (var i = 0; i < arguments.length; i++) {
        var element = arguments[i];
        if (typeof element == "string")
            element = document.getElementById(element);
                
        if (arguments.length == 1)
            return element;
        elements.push(element);
    }
    return elements;
}
/*
  Resets the quantities inside given element  
  This method hardcodes 'quantity' input name, which is undesirable.
*/
function resetQuantities(elementId, maxTickets, ticketTypes)
{
    /* clear all the selects */
    var selectNodes = $TT(elementId).getElementsByTagName("select");
    if( selectNodes != null )
    {
      for (var i=0; i < selectNodes.length; i++) 
      {
        if( selectNodes[i].name.indexOf("quantityddl") > -1 )
        {
            selectNodes[i].options[0].selected = 1;
            ticketTotal(selectNodes[i]);
        }
      }
    }

    /* clear text boxes */
    var inputNodes =  $TT(elementId).getElementsByTagName("input");
    if( inputNodes != null )
    {
      for (var i=0; i < inputNodes.length; i++) 
      {
        if( inputNodes[i].name.indexOf("quantitytb") > -1 )
        {
            {
                inputNodes[i].value = "0";
                ticketTotal(inputNodes[i]);
            }
        }
      }            
    }
}
/*
    Sets the appropriate ticket quantity section visible.
    Sets all other ticket quantity sections invisible and resets individual quantity to zero.
    The two arguments must be maximum allowable ticket number and number of differnt ticket types.
*/
function toggleArea() 
{
    if(arguments.length < 3 ) return false;
    
    // First two args are max_tix and ticket_types
    var areaControl = arguments[0];
    var maxTickets = arguments[1];
    var ticketTypes = arguments[2];

    if (!document.getElementsByTagName) return false;
    if (!document.getElementById) return false;

    var multipleAreaToggleController = document.getElementById("multipleAreaToggleController");
    if( !multipleAreaToggleController ) return false;

    var multipleAreaRadioInputs = multipleAreaToggleController.getElementsByTagName("input");
    if( !multipleAreaRadioInputs ) return false;

    if (areaControl == null)
    {
        for( var i = 0; i < multipleAreaRadioInputs.length; i++ )
        {
            var objId = multipleAreaRadioInputs[i].value;
            if (multipleAreaRadioInputs[i].checked)
            {
                $TT(objId).className = "";
            }
            else
            {
                $TT(objId).className = "remove";
                // Clear 
                resetQuantities(objId, maxTickets, ticketTypes);
            }
        }
    }
    else
    {
        for( var i = 0; i < multipleAreaRadioInputs.length; i++ )
        {
            var objId = multipleAreaRadioInputs[i].value;
            if (multipleAreaRadioInputs[i].id == areaControl.id)
            {
                $TT(objId).className = "";
            }
            else
            {
                multipleAreaRadioInputs[i].checked = false;
                $TT(objId).className = "remove";
                // Clear 
                resetQuantities(objId, maxTickets, ticketTypes);
            }
        }
    }
    adjustTickets(maxTickets, ticketTypes);
}
/*
    Attach the 'onclick' event handler to each of the
    multiple area radio buttons using client side jQuery method.
*/
function prepareAreaToggleController(maxTickets, ticketTypes)
{
    if (!document.getElementsByTagName) return false;
    if (!document.getElementById) return false;

    var multipleAreaToggleController = document.getElementById("multipleAreaToggleController");
    if( !multipleAreaToggleController ) return false;

    var multipleAreaRadioInputs = multipleAreaToggleController.getElementsByTagName("input");
    if( !multipleAreaRadioInputs ) return false;

    var selectedInputId = null;
    for( var i = 0; i < multipleAreaRadioInputs.length; i++ )
    {
        multipleAreaRadioInputs[i].onclick = function() 
            {
                return toggleArea(this, maxTickets, ticketTypes);
            }
         if( multipleAreaRadioInputs[i].checked )
         {
            selectedInputId = multipleAreaRadioInputs[i].id;
         }
    }

    if( !selectedInputId )
    {
        multipleAreaRadioInputs[0].checked = true;
    }
   
    toggleArea(null, maxTickets, ticketTypes);
}
/*
    Re populates the show times drop down.
*/
function RepopulateTimeDropdown()
{
    // Clear late night note if it is displayed
    var lateNightHolder = document.getElementById('lblLateNight');
    if (lateNightHolder != null){
        
        lateNightHolder.style.display='none';
    }
    
    //var arrList = document.getElementById('ShowTimeListHidden').value;
    var timeDropDown = document.getElementById('ShowTimeDropDownList');
    var dateDropDown = document.getElementById('ShowDateDropDownList');

    if (dateDropDown == null)
    return;

    if (dateDropDown.selectedIndex == 0) {
        // If 'Select a Date' is selected, display 'Select a Showtime' and don't repopulate
        RemoveAllOptions(timeDropDown);
    var option = document.createElement("option");
    option.value = 'empty';
    option.text = 'Select a Date First';
    timeDropDown.appendChild(option);
    }
    else {
        var counter = 0;
        
        $('#ShowTimeDropDownList option').remove();
        $('#ShowTimeDropDownList optgroup').remove();
      
        var showDate = dateDropDown.options[dateDropDown.selectedIndex].value
        
        var shows = dropdowndates;
        var currentShows = shows[showDate];
        //loop thru amenity groups adding no amenities only, they MUST APPEAR FIRST. HotFix 5/4/2012
        for (var i = 0; i <= currentShows.length - 1; i++) {
            var optiongroup = currentShows[i].Key;
            var showtimes = currentShows[i].Times;
            if (optiongroup == '') { //no amenities
                for (var s = 0; s <= showtimes.length - 1; s++) {
                    if (counter == 0) {
                        var option = document.createElement("option");
                        option.value = 'empty';
                        option.text = 'Select a Showtime';
                        timeDropDown.appendChild(option);
                    }
                    counter++;
                    var delimiterIndex = showtimes[s].indexOf("_");
                    if (delimiterIndex > 0) {
                        var option = document.createElement("option");
                        option.value = showtimes[s];
                        option.text = showtimes[s].substring(0, delimiterIndex);
                        timeDropDown.appendChild(option);
                    }
                    else {
                        var option = document.createElement("option");
                        option.value = showtimes[s];
                        option.text = showtimes[s];
                        timeDropDown.appendChild(option);
                    }
                }
            }
        }

        //loop thru amenity groups adding amenities only, they MUST APPEAR AFTER NO AMENITIES. HotFix 5/4/2012
        for (var i = 0; i <= currentShows.length - 1; i++) {
            var optiongroup = currentShows[i].Key;
            var showtimes = currentShows[i].Times;
            if (optiongroup != '') { //no amenities
                var optgroup = document.createElement("optgroup");
                optgroup.label = optiongroup;

                //loop thru showtimes
                for (var s = 0; s <= showtimes.length - 1; s++) {
                    if (counter == 0) {
                        var option = document.createElement("option");
                        option.value = 'empty';
                        option.text = 'Select a Showtime';
                        timeDropDown.appendChild(option);
                    }
                    counter++;
                    var option = document.createElement("option");
                    option.value = showtimes[s];
                    var delimiterIndex = showtimes[s].indexOf("_");
                    if (delimiterIndex > 0)
                        option.appendChild(document.createTextNode(showtimes[s].substring(0, delimiterIndex)));
                    else
                        option.appendChild(document.createTextNode(showtimes[s]));
                    optgroup.appendChild(option);
                }
                timeDropDown.appendChild(optgroup);
            }
        }
    }
}

function RemoveAllOptions(dropdown){
   for(var i=dropdown.options.length-1;i>=0;i--){
      dropdown.remove(i);
   }
}    
//this function does not work in IE7&IE8 - RM 5/4/201    
function AddOption(dropdown,text,value ){
   var opt = document.createElement('option');
   opt.text = text;
   opt.value = value;
   dropdown.options.add(opt);
}
    
function PostBackControl(){
    var args;
    var d = $('#ShowDateDropDownList').val();
    var t = $("#ShowTimeDropDownList option:selected").val()

    if ((d != 'empty') && (t != 'empty')) {
        args = d+'_'+t;

        __doPostBack('ShowTimeDropDownList', args);
    }
}


function ticketTotal(ele)
{
    var qty=0,ttlqty=0,fee,ttlprice=0,ttlfee=0;
    var oQty;
    var oPrice;
    var fee= document.forms[0].fee;
    var surcharge = document.forms[0].surcharge;
    var resvFee = document.forms[0].resvFee;
    var i;
    var tqty;
    var count;
    var tolfee;
    var ttlResvFee

    oPrice = document.forms[0].price;
    
    if (ele.value < 0) {
        ele.value = 0;
    }

    for (i=0; i<oPrice.length-1; i++){

        var quantityControl = eval("document.getElementById('" + document.forms[0].quantityControlName[i].value + "')");
        qty = parseInt(quantityControl.value, 10);
        
        if (isNaN(qty)) {
            // no value entered, assume 0
            qty = 0;
        } 
        price = qty * parseFloat(document.forms[0].price[i].value);
        ttlqty = ttlqty + qty;
        ttlprice = ttlprice + price;

        var itemTotalControl = eval("document.getElementById('" + document.forms[0].itemTotalControlName[i].value + "')");
        itemTotalControl.value = formatCurrency(price);
    }
    
    if (document.forms[0].inputSubtotalAll)
    {
        document.forms[0].inputSubtotalAll.value = formatCurrency(ttlprice);
    }
    
    tolfee =parseFloat(fee.value) + parseFloat(surcharge.value);
    ttlfee= ttlqty * tolfee;
    ttlResvFee = ttlqty * (parseFloat(resvFee.value))
    ttlprice = ttlprice + ttlfee + ttlResvFee;

    
        document.forms[0].inputTotal.value = formatCurrency(ttlprice);
        if (document.forms[0].inputFeeQty!=null) {
            document.forms[0].inputFeeQty.value = ttlqty;
            document.forms[0].inputFeetotal.value = formatCurrency(ttlfee);
            if(document.forms[0].inputResvFeeQty != null){
                document.forms[0].inputResvFeeQty.value = ttlqty;
                document.forms[0].inputResvFeetotal.value = formatCurrency(ttlResvFee);
            }
        }
        
}

function checkTicketValue (ele) {
    // make sure the user entered a correct value before moving on
    
    if (isNaN(ele.value))  {
        alert('You must enter a numeric value between 0 and 99');
        ele.value = 0;
        ele.focus();
    } else if (ele.value==''||ele.value<0||ele.value%1>0||ele.value==' '||ele.value=='  ') {
		//alert('You must enter a numeric value between 0 and 99');
		ele.value=0;
		ele.focus();
    } 
}

function ShowRemovePromoErrorMessage(errorMessage) {
    if (errorMessage != "") {
        $("section.errorMessages.errorText .errorHeaderMessage").text(errorMessage);
        $("section.errorMessages.errorText .errorSupportingMessages").addClass("remove").hide();
    }
}

function RenderAfterCookiedPromoRemoved(message, rowCount) {
    // Hide the promo name from the offers section.
    var cookiedPromoItem = $("section.offers .cookiedPromoListItem");
    $("section.offers .cookiedPromoListItem").addClass("remove").hide();

    // Show successful message that promo is removed.
    if (cookiedPromoItem.exists() && message.indexOf("The promotion") >= 0) {
        message = message.replace("The promotion", cookiedPromoItem.text());
    }
    $("section.errorMessages.errorText .errorHeaderMessage").html(message);
    $("section.errorMessages.errorText .errorSupportingMessages").addClass("remove").hide();
    $("section.errorMessages.errorText .errorFooterMessage").addClass("remove").hide();
}

//from scripts.js - copied in since scripts.js is not used for express checkout
 function formatCurrency(num) {
num = num.toString().replace(/\$|\,/g,'');
if (isNaN(num)) num = "0";
cents = Math.floor((num*100+0.5)%100);
num = Math.floor((num*100+0.5)/100).toString();
if (cents < 10) cents = "0" + cents;
for (var i = 0; i < Math.floor((num.length-(1+i))/3); i++)
num = num.substring(0,num.length-(4*i+3))+','+num.substring(num.length-(4*i+3));
return ('$' + num + '.' + cents);
} 


$(document).ready(function () {

	if ($("body").hasClass("ticketBoxoffice")) {
		$(".wftList .inactive, #offersStackContainer .inactive").addClass("remove");
	}

    RepopulateTimeDropdown(); //repopulate time dropdown

    emptyFieldCheck(); //hide empty fields - global_lite.js
    errorFieldCheck(); //show error fields - global_lite.js
    hideField($(".seats"));

    if($("#tqpSection").exists()) // If it's the TQP page, create the timer
    {
       //alert("TQP")
        CreateTimer($("#countdownTimer"), 420); //create timer, 7 minutes
        crRedirectLoc(); //create the redirection location cookie and set the url

       $("#NewCustomerCheckoutButton").click(function(){ //when the continue button is clicked, grab the time left over and populate new cookie
        var secondsLeft = GetSecondsLeft();
        createCookie("CounterTimeLeft",secondsLeft);
        return true
        });
    }
    else //PreTQP
    {
        //alert("PreTQP")
        hideField($("#timer")); // hide the timer string on the preTQP
        var timedOut = parseInt(readCookie("CounterTimeLeft")); //will be NaN if cookie doesn't exist
        if(timedOut != undefined && timedOut == 0)
            $("<div class='errorText'>Your session has timed out.  Please reselect the date and time to continue.</div>").insertBefore(".section.showtimeDate");
    }

    // Check if the page has no contents but error message.
    if (!$("#tqpSection").exists() && !$("#preTQPPage").exists() && !$("#offersStackContainer").exists() && $(".errorMessages").exists())
    {
        $(".errorMessages").addClass("noborder");
    }

    // set flyouts for amenities
    flyoutExpress(".amenityPopup",111, "data-amenitypopupdata");

    if(supports_html5_storage())
    {
        //reset session data
        sessionStorage.clear();
    }
    else
    {
        //remove cookies individually
        /*loyalty rewards*/
        createCookie("loyaltyFunction", "");
        createCookie("rewardsProgram", "");
        createCookie("loyaltyRewardsBalance", "");
        createCookie("loyaltyRedemptionMessage", "");
        /*other*/
        createCookie("focus", "");
        createCookie("vme", "");
        createCookie("ppa", "");
        createCookie("storedCC", "");
        createCookie("loyaltyApplied", "");
        createCookie("fanmailCheckbox", "");
        createCookie("loggedInSaveInfo", "");
        createCookie("postback", "");
        createCookie("counter", "");
        createCookie("paymentType", "");
        createCookie("loyaltyRewardsCheckbox", "");
        /*seatpicker*/
        createCookie("clearseats ", "");

    }

    /*
    
            store.del("loyaltyFunction","");
            store.del("rewardsProgram","");
            store.del("loyaltyRewardsBalance","");
            store.del("loyaltyRedemptionMessage","");
           //other
            store.del("focus","");
            store.del("vme","");
            createCookie("ppa","");
            store.del("storedCC","");
            store.del("loyaltyApplied","");
            store.del("fanmailCheckbox","");
            store.del("loggedInSaveInfo","");
            createCookie("postback","");
            store.del("counter","");
            store.del("paymentType","");
            store.del("loyaltyRewardsCheckbox","");
            //seatpicker
            store.del("clearseats ","");
    */
    //if the user clicks on an input box, clear out the 0 or any other number in there.
    $(".numberofTickets > input").click(function(){
        //$(this).val("");

		if ($(this).val() == 0) {
			$(this).val("");
		}
    });

    $(document).on("click", "a.RemovePromoCode", function (e) {
        e.preventDefault();
        var host = $(this).attr("host");
        $(this).removeCookiedPromo(host);
    });

    // AJAX call to remove cookied promo.
    $.fn.removeCookiedPromo = function (host) {
        $.ajax({
            type: "POST",
            url: host + "/ExpressCookiedClaimCodeService/RemoveCookiedClaimCodeFromOrder?location=tqp",
            dataType: 'json',
            async: false
        }).success(function (response) {
            switch (response.Status.toString()) {
                case "1":   // Success
                    var userMessage = response.ReturnData.UserMessage;
                    var performanceId = response.ReturnData.PerformanceId;
                    RenderAfterCookiedPromoRemoved(userMessage, performanceId);
                    break;
                default:   // Error
                    var userMessage = response.ReturnData.UserMessage;
                    ShowRemovePromoErrorMessage(userMessage);
                    break;
            }
        }).error(function (response) {
            // Check if error message can be retrieved.
            var errorMessage = (response != undefined && response.ReturnData != undefined)
                ? response.ReturnData.UserMessage
                : "Sorry, there was a problem to remove the promotion. Please try again.";
            ShowRemovePromoErrorMessage(errorMessage);
        });
    };
});