'use strict';
var pathAction = window.location.pathname.split("/")[2];
var pathActionThird = window.location.pathname.split("/")[3];
var xid = document.getElementById("id");
var id = xid ? xid.value : null;
var windowLocation = localStorage.getItem("frontend");
var windowLocationS = localStorage.getItem("services");
var roomTypeId = "";
var hotelRoomCounter = "";
var accommodationRoomsLength = "";
var accommodationRoomTypeId = "";
var breakfastOptionPrice = "";
var selectedRooms = [];
var userCurrency = "BAM";
var dataHotelCurrencyCode = "EURO" ? dataHotelCurrencyCode = "&euro;" : "";
var roomTypesArray = [];
var roomListJsn = [];
var client = [];
var email = "";
var clientObject = [];
var setInput = document.querySelector(".header .right");
var loadBookingForRooms  = "";
var bedroomGuestsNumber = "";
var extrabedNumber = "";

var checkin = "";
var checkout = "";
var diffDays = "";
var obj;

var reservationVATPrice = ""; // reservation VAT price
var reservationCityTax = ""; // reservation city tax fee - excluded charge.
var reservationTotalRoomPrice = ""; // reservation total price for "only rooms"
var reservationTotalPrice = ""; // reservation TOTAL RESERVATION PRICE.
// /
var reservationSelectedRooms = [];
var isDone = false;

var tags = []; // tags for autocomplete accommodation first input.
var catForTags = []; // used for setting cat property in URL in search page.
var charCode = "";
var operation = "";
var closureTourDiv = "";

var tourTableDiv = "";
var tourTableDivValue = "";
var i, j, k, t;
var cboxExcursionArray = [];
var cboxEventArray = [];
var tourOptionalServicesPrice = [];
var tourMaxClients = 0;

document.querySelector("#footer .prop-reg a").href = localStorage.getItem("propertyRegistration");
var settings_navbar = document.getElementById("settings_navbar");
Array.prototype.indexOf||(Array.prototype.indexOf=function(a,b){var c;if(null==this)throw new TypeError('"this" is null or not defined');var d=Object(this),e=d.length>>>0;if(0==e)return-1;var f=0|b;if(f>=e)return-1;for(c=Math.max(0<=f?f:e-Math.abs(f),0);c<e;){if(c in d&&d[c]===a)return c;c++}return-1});
if(pathAction === "") $("#footer").removeClass("hide");
$(document).scroll(
    function(e) {
    	var scrollTop = $(document).scrollTop();
        if (document.getElementById("__d17").style.display == "none") {
            var actualBottom = $('#snavbar').offset().top +
                $('#snavbar').outerHeight(true);
            if (scrollTop < $('#snavbar').offset().top) {
                $('#settings_navbar').css("top", "auto");
                $('#settings_navbar').css("position", "relative");
                return;
            }
            if (scrollTop > 0) {
                $('#settings_navbar').css("position", "fixed");
                $('#settings_navbar').css("top", "0");
                if (scrollTop > (actualBottom - 261)) {
                    $('#settings_navbar').css("top",
                        (actualBottom - 261 - scrollTop));
                }
            } else {
                $('#settings_navbar').css("position", "relative");
                $('#settings_navbar').css("top", "auto");
            }
        }
        if (pathAction === "hotel") {
        	
            if (document.getElementById("individualRooms")) {
                var bottom = $("#individualRooms").offset().top +
                    $("#individualRooms").outerHeight(true);
                if (scrollTop < $("#individualRooms").offset().top) {
                    $("#maxhotel_table_header").css("top", "");
                    $("#maxhotel_table_header").css("position", "");
                    return;
                }
                if (scrollTop > 0) {
                    $('#maxhotel_table_header').css("position", "fixed");
                    $('#maxhotel_table_header').css("top", "0");
                    if (scrollTop > (bottom - 48)) {
                        $('#maxhotel_table_header').css("top",
                            (bottom - 48 - scrollTop));
                    }
                } else {
                    $('#maxhotel_table_header').css("position", "");
                    $('#maxhotel_table_header').css("top", "");
                }
            }
        }
        if(pathAction === "tour") {
        	tourMaxClients = parseInt(document.getElementById("tmc").value);
//        	hideAllPopovers();
        	var victim = document.getElementById("_tbsa92");
        	if(victim) {
        		var d = $("#_tbsale17");
        		var bottom = d.offset().top + d.outerHeight(true);
        		if(scrollTop < d.offset().top) {
        			$("#_tbsa92").css("top", "auto");
        			$("#_tbsa92").css("position" ,"");
        			return;
        		}
        		if(scrollTop > 0 && $(window).width() > 991) {
        			$("#_tbsa92").css("position", "fixed");
        			$("#_tbsa92").css("top", "0");
        			if(scrollTop > (bottom - 520)) {
        				$("#_tbsa92").css("top", (bottom - 520 - scrollTop));
        			}
        		} else {
        			$("#_tbsa92").css("position" ,"");
        			$("#_tbsa92").css("top", "auto");
        		}
        	}
        }
    });

var setYear = document.getElementById("exp_date_year");
if (setYear) {
    var startYear = new Date().getFullYear();
    for (var i = startYear; i <= startYear + 30; i++) {
        setYear.innerHTML += "<option value=" + i + ">" + i + "</option>";
    }
}

function modifyWord(str) {return str.replace(/\w\S*/g, function(txt) {return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();});}

function getURLParameter(name) {return decodeURIComponent((new RegExp('[?|&]' + name + '=' +'([^&;]+?)(&|#|;|$)').exec(location.search) || [null, ''])[1].replace(/\+/g, '%20')) || null;}

$(function() {
    $.get(windowLocationS + "/alltags", function(x) {
        if (x.co) {
            for (i = 0; i < x.co.length; i++) {
                var z = {
                    label: x.co[i],
                    category: "Country",
                    cat: "country"
                };
                tags.push(z);
            }
        }
        if (x.ct) {
            for (i = 0; i < x.ct.length; i++) {
                var z = {
                    label: x.ct[i][0] + ", " + x.ct[i][1],
                    category: "City",
                    cat: "city"
                };
                tags.push(z);
            }
        }
        if (x.ac) {
            for (i = 0; i < x.ac.length; i++) {
                var z = {
                    label: x.ac[i][0] + ", " + x.ac[i][1] + ", " + x.ac[i][2],
                    category: "Accommodation",
                    cat: "prop"
                };
                tags.push(z);
            }
        }
    });

    $.widget("custom.catcomplete", $.ui.autocomplete, {
        _create: function() {
            this._super();
            this.widget().menu("option", "items", "> :not(.riba-complete)");
        },
        _renderMenu: function(ul, items) {
            var that = this,
                currentCategory = "";
            $.each(items, function(index, item) {
                var li;
                if (item.category != currentCategory) {
                    ul.append("<li class='riba-complete'>" + item.category +
                        "</li>");
                    currentCategory = item.category;
                }
                li = that._renderItemData(ul, item);
                if (item.category) {
                    li.attr("aria-label", item.category + " : " + item.label);
                }
            });
        }
    });

    $("#qkw").catcomplete({
        source: tags,
        autoFocus: true,
        delay: 0,
        select: function(event, ui) {
            catForTags = ui.item.cat;
        }
    });

    $('[data-toggle="acb"]').tooltip();
    $('.hidden-err-message').on('shown.bs.popover', function() {
        setTimeout(function() {
            $('.hidden-err-message').popover('hide');
        }, 2000);
    });

    var date = new Date();
    var bd = document.getElementById("birthday");
    if (bd)
        $("#birthday").datepicker({
            yearRange: '-100:+0',
            changeMonth: true,
            changeYear: true,
            dateFormat: 'DD, MM d, yy'
        }).attr("readonly", "readonly");

    $(".check-checkin").datepicker({
        dateFormat: "D, M d, yy",
        minDate: 0,
        changeMonth: true,
        onSelect: function(date) {
            var date2 = $('.check-checkin').datepicker('getDate');
            // sets minDate to dateofbirth date + 1
            date2.setDate(date2.getDate() + 1);
            $('.check-checkout').datepicker('setDate', date2);
            $('.check-checkout').datepicker('option', 'minDate', date2);
            $('.check-checkin').datepicker('option', 'minDate', 0);
        }
    }).attr("readonly", "readonly").datepicker("setDate", date);
    $('.check-checkout').datepicker({
        dateFormat: "D, M d, yy",
        changeMonth: true,
        onClose: function() {
            var dt1 = $('.check-checkin').datepicker('getDate');
            var dt2 = $('.check-checkout').datepicker('getDate');
            if (dt2 <= dt1) {
                var minDate = $('.check-checkout').datepicker('option',
                    'minDate');
                $('.check-checkout').datepicker('setDate', minDate);
            }
        }
    }).attr("readonly", "readonly").datepicker("setDate",
        new Date(new Date().getTime() + 24 * 60 * 60 * 1000));

    checkin = getURLParameter("checkin") || getURLParameter("ta_checkin");
    checkout = getURLParameter("checkout") || getURLParameter("ta_checkin");
    if (checkin && checkout) {
        if (pathAction !== "tasearch" || pathAction !== "tour") {
            $(".check-checkin").datepicker("setDate",
                $.datepicker.parseDate("yy-mm-dd", checkin));
            $(".check-checkout").datepicker("setDate",
                $.datepicker.parseDate("yy-mm-dd", checkout));
            var dt1 = $('.check-checkin').datepicker('getDate');
            $('.check-checkout').datepicker('option', 'minDate', dt1);
        } else {
            $(".ta-check-checkin").datepicker("setDate",
                $.datepicker.parseDate("yy-mm-dd", checkin));
            $(".ta-check-checkout").datepicker("setDate",
                $.datepicker.parseDate("yy-mm-dd", checkout));
            var dt1 = $('.check-checkin').datepicker('getDate');
            $('.ta-check-checkout').datepicker('option', 'minDate', dt1);
        }
    }

    // ta dates
    $(".ta-check-checkin").datepicker({
        dateFormat: "D, M d, yy",
        changeMonth: true,
        minDate: 0,
        onSelect: function(date) {
            var date2 = $('.ta-check-checkin').datepicker('getDate');
            // sets minDate to dateofbirth date + 1
            date2.setDate(date2.getDate() + 1);
            $('.ta-check-checkout').datepicker('setDate', date2);
            $('.ta-check-checkout').datepicker('option', 'minDate', date2);
            $('.ta-check-checkin').datepicker('option', 'minDate', 0);
        }
    }).attr("readonly", "readonly");
    $('.ta-check-checkout').datepicker({
        dateFormat: "D, M d, yy",
        changeMonth: true,
        onClose: function() {
            var dt1 = $('.ta-check-checkin').datepicker('getDate');
            var dt2 = $('.ta-check-checkout').datepicker('getDate');
            if (dt1 == null && dt2 != null) {
                $('.ta-check-checkout').datepicker('setDate', null);
            }
            if (dt2 <= dt1) {
                var minDate = $('.ta-check-checkout').datepicker(
                    'option', 'minDate');
                $('.ta-check-checkout').datepicker('setDate', minDate);
            }
        }
    }).attr("readonly", "readonly");

});


function dataJ(url, callback) {
    dojo.xhrGet({
        url: windowLocationS + "/getaccommodationroom" + url + "/" +
            accommodationRoomTypeId,
        preventCache: true,
        load: callback
    });
}
if (pathAction === "hotel") {
    checkin = getURLParameter("checkin") ||
        new Date().toISOString().slice(0, 10);
    checkout = getURLParameter("checkout") ||
        new Date(new Date().getTime() + 24 * 60 * 60 * 1000)
        .toISOString().slice(0, 10);
    var checkinL = new Date(checkin);
    var checkoutL = new Date(checkout);
    var timeDiff = Math.abs(checkoutL.getTime() - checkinL.getTime());
    diffDays = Math.ceil(timeDiff / (1000 * 3600 * 24));
    diffDays = diffDays > 0 ? diffDays : 1;
    var selectRoom = getURLParameter("select_room");
    var selectAdult = getURLParameter("select_adult");
    var selectChild = getURLParameter("select_child");
    if (selectRoom != null)
        document.getElementById("select_room").selectedIndex = selectRoom > 0 ? selectRoom - 1 :
        selectRoom;
    if (selectAdult != null)
        document.getElementById("select_adult").selectedIndex = selectAdult > 0 ? selectAdult - 1 :
        selectAdult;
    if (selectChild != null)
        document.getElementById("select_child").selectedIndex = selectChild;
    require(["dojo/request"], function() {
            dojo.xhrGet({
                    url: windowLocationS +
                        "/getaccommodationroomtype/" + id +
                        "?checkin=" + checkin +
                        "&checkout=" + checkout,
                    load: function(data) {
                        roomTypesArray = JSON.parse(data);
                        hotelRoomCounter = roomTypesArray.length;
                        if (hotelRoomCounter > 0) {
                            var roomTable = document
                                .getElementById("room_availability_container");
                            // if(jsn.length === 0) {
                            // return window.location =
                            // windowLocation;
                            // }
                            for (i = 0; i < hotelRoomCounter; i++) {
                                var accommodationRoomId;
                                document
                                    .getElementById("a_availability").style.visibility = "visible";
                                document
                                    .getElementById("a_availability").style.display = "table-cell";
                                document
                                    .getElementById("availability").style.visibility = "visible";
                                document
                                    .getElementById("availability").style.display = "block";
                                accommodationRoomTypeId = roomTypesArray[i].id;
                                accommodationRoomsLength = roomTypesArray[i].accommodationRoomses.length;
                                var accommodationRoomPrice = roomTypesArray[i][1];
                                var accommodationRoomSize = roomTypesArray[i][2];
                                var roomName = roomTypesArray[i].accommodationRoomses[0].roomName;
                                roomTable.innerHTML += "<tr class=room-counter-" +
                                    (i + 1) + ">" + "<td id=td_" + accommodationRoomTypeId + " rowspan=" + (1 + 1) + 
                                    " class=' room-type room-type-container bb' style='max-width:273px; min-width:273px;'>" +
                                    "<span style=display:block;>" + "<a class='roomtypepu' data-artpup='roomModal_"+accommodationRoomTypeId+"/"+accommodationRoomTypeId+"' id=" + accommodationRoomTypeId + " data-toggle=modal data-room=" + accommodationRoomTypeId +
                                    " data-target='#roomModal_" + accommodationRoomTypeId + "'>" + roomName + "</a>" +
                                    "<div id=bed_prefs_" +
                                    accommodationRoomTypeId +
                                    ">" +
                                    "</div>" +
                                    "<span class='room-options'><div id=roomOptionsWrapper_" +
                                    accommodationRoomTypeId +
                                    " class='room-options-wrapper'></div>" +
                                    "</span>" +
                                    "</td>" +
                                    "<td colspan=" +
                                    accommodationRoomsLength +
                                    " style=padding:0;></td>" +
                                    "</tr>";

                                // room type bed preference
                                var bedPref = document
                                    .querySelector("#bed_prefs_" +
                                        accommodationRoomTypeId);
                                if (roomTypesArray[i].accommodationRoomses[0].accommodationRoomBedOption.length === 1) {
                                    bedPref.className = "bed-types bed-types-wrapper";
                                    bedPref.style.background = "#FFFFFF";
                                    bedPref.innerHTML += "<label><div class='bed-type-select'>" +
                                        "<input type=radio selected style='visibility: hidden; display: none;' id=bedPreference_" +
                                        accommodationRoomTypeId +
                                        " name=bedPreference_ " +
                                        accommodationRoomTypeId +
                                        " data-dojo-type=dijit/form/RadioButton/></div>" +
                                        "<ul id=name-bed-types" +
                                        accommodationRoomTypeId +
                                        " class=name-bed-types>" +
                                        "<li id=name-bed-type" +
                                        accommodationRoomTypeId +
                                        " class=bed-type>" +
                                        roomTypesArray[i].accommodationRoomses[0].accommodationRoomBedOption[0].cbRoomBedOptions.bedOptionCapacity +
                                        " " +
                                        roomTypesArray[i].accommodationRoomses[0].accommodationRoomBedOption[0].cbRoomBedOptions.bedOptionName +
                                        " <div id=riba_bed_" +
                                        accommodationRoomTypeId +
                                        " class=riba-" +
                                        roomTypesArray[i].accommodationRoomses[0].accommodationRoomBedOption[0].cbRoomBedOptions.bedOptionIcon +
                                        " style='font-size: 24px;'></div>" +
                                        "</li>" +
                                        "</ul></div></label>";
                                } else if (length > 1) {
                                    bedPref.className = "bed-types bed-types-wrapper";
                                    bedPref.innerHTML += "<label class=bed-label>Choose your bed preference:</label>";
                                    bedPref.innerHTML += "<label><div class='bed-type-select'>" +
                                        "<input type=radio id=bedPreference_" +
                                        accommodationRoomTypeId +
                                        " name=bedPreference_ " +
                                        accommodationRoomTypeId +
                                        " data-dojo-type=dijit/form/RadioButton/></div>" +
                                        "<ul id=name-bed-types" +
                                        accommodationRoomTypeId +
                                        " class=name-bed-types>" +
                                        "<li id=name-bed-type" +
                                        accommodationRoomTypeId +
                                        " class=bed-type>" +
                                        roomTypesArray[i].accommodationRoomses[0].accommodationRoomBedOption[0].cbRoomBedOptions.bedOptionCapacity +
                                        " " +
                                        roomTypesArray[i].accommodationRoomses[0].accommodationRoomBedOption[0].cbRoomBedOptions.bedOptionName +
                                        " <div id=riba_bed_" +
                                        accommodationRoomTypeId +
                                        " class=riba-" +
                                        roomTypesArray[i].accommodationRoomses[0].accommodationRoomBedOption[0].cbRoomBedOptions.bedOptionIcon +
                                        " style='font-size: 24px;'></div>" +
                                        "</li>" +
                                        "</ul></div></label>";
                                }
                                // end room type bed preference
                                dataJ(
                                    "amenity",
                                    function(data1) {
                                        var jsn = JSON
                                            .parse(data1);
                                        if (jsn.length > 0) {
                                            document
                                                .getElementById("roomOptionsWrapper_" +
                                                    jsn[0][2]).innerHTML += "&nbsp;<div class=riba-room-key></div> " +
                                                jsn[0][1];
                                        }
                                    });
                                dataJ(
                                    "outdoorview",
                                    function(data2) {
                                        var jsn = JSON
                                            .parse(data2);
                                        if (jsn.length > 0) {
                                            document
                                                .getElementById("roomOptionsWrapper_" +
                                                    jsn[0][2]).innerHTML += "&nbsp;<div class=riba-beach></div> " +
                                                jsn[0][1];
                                        }
                                    });
                                dataJ(
                                    "bathroomoption",
                                    function(data4) {
                                        var jsn = JSON
                                            .parse(data4);
                                        if (jsn.length > 0) {
                                            document
                                                .getElementById("roomOptionsWrapper_" +
                                                    jsn[0][2]).innerHTML += "&nbsp;<div class=riba-bath></div> " +
                                                jsn[0][1];
                                        }
                                    });
                                dataJ(
                                    "service",
                                    function(data3) {
                                        var jsn = JSON
                                            .parse(data3);
                                        if (jsn.length > 0) {
                                            document
                                                .getElementById("roomOptionsWrapper_" +
                                                    jsn[0][2]).innerHTML += "&nbsp;<div class=riba-room-service></div> " +
                                                jsn[0][1];
                                        }
                                    });
                                // create table rows
                                var roomSize = roomTypesArray[i].accommodationRoomses[0].roomSize;
                                var accommodationRoomId = roomTypesArray[i].accommodationRoomses[0].id;
                                var insertRoomSize = document
                                    .getElementById("roomOptionsWrapper_" +
                                        accommodationRoomTypeId);
                                insertRoomSize.innerHTML = "<div class='riba-stonehenge'></div>&nbsp;" +
                                    roomSize +
                                    "m<sup>2</sup>";
                                roomTable.innerHTML += "<tr class=room-counter-" +
                                    (i + 1) +
                                    "><td class='room-max-person bb mc' style='max-width:88px; min-width:88px;'><div style='white-space: nowrap;' class=room-max-person-d id=room-max-person_" +
                                    accommodationRoomTypeId +
                                    "></div>" +
                                    "</td><td class='room-price bb bl mc' style='min-width: 80px; max-width:80px;'><span data-title='price for 1 night is BAM" +
                                    roomTypesArray[i].accommodationRoomses[0].enduserPrice +
                                    "' class='room-price-span'>BAM" +
                                    parseFloat(diffDays *
                                        roomTypesArray[i].accommodationRoomses[0].enduserPrice) +
                                    "</span></td><td class='option-policy bb bl mc' style='min-width: 127px; max-width:127px;'>" +
                                    "<ul class=option-list>" +
                                    "</ul>" +
                                    "</td>" +
                                    "<td class='room-num-dropdown bb bl' style='min-width:145px; max-width:145px;' id='roomNumDropdown_" +
                                    accommodationRoomTypeId +
                                    "'>" +
                                    "<i id='spinner_for_room_" +
                                    accommodationRoomTypeId +
                                    "' class='fa fa-spinner fa-spin rmv-l'></i>" +
                                    "<select id=room_length_dropdown_" +
                                    accommodationRoomTypeId +
                                    " class='rooms opt-rooms-available hide' onChange=sumre(this)>" +
                                    "<option value=0>0</option>" +
                                    "</select>" +
                                    "</td></tr>";

                                bedroomGuestsNumber = roomTypesArray[i].accommodationRoomses[0].accommodationRoomBedOption[0] ? roomTypesArray[i].accommodationRoomses[0].accommodationRoomBedOption[0].bedroomGuestsNum : 5;
                                // guest number with extra bed
                                // if exists
                                extrabedNumber = roomTypesArray[i].accommodationRoomses[0].extrabedsNum;
                                var roomGuestNum = document
                                    .getElementById("room-max-person_" +
                                        accommodationRoomTypeId);
                                roomGuestNum.innerHTML += "<span data-gn=" +
                                    bedroomGuestsNumber +
                                    " id=room-guest-num_" +
                                    accommodationRoomTypeId +
                                    " class=room-guest-num></span>";
                                var roomGuestNumId = document
                                    .getElementById("room-guest-num_" +
                                        accommodationRoomTypeId);
                                if (bedroomGuestsNumber > 4) {
                                    roomGuestNumId.innerHTML += "<i class='fa fa-user af'  aria-hidden=true></i>&nbsp;x&nbsp;" +
                                        bedroomGuestsNumber;
                                } else {
                                    for (var g = 0; g < bedroomGuestsNumber; g++) {
                                        roomGuestNumId.innerHTML += "<i class='fa fa-user af'  aria-hidden=true></i>";
                                    }
                                }
                                if (roomTypesArray[i].accommodationRoomses[0].hasExtrabeds) {
                                    roomGuestNum.innerHTML += extrabedNumber > 1 ? "<p class='guest-num-plus'> + </p>" :
                                        "<span class='guest-num-plus'> + </span>";
                                    roomGuestNum.innerHTML += "<span id=room-extrabed-pref-num_" +
                                        accommodationRoomTypeId +
                                        " class=room-extrabed-pref-num>";
                                    var roomExtrabedPrefNum = document
                                        .getElementById("room-extrabed-pref-num_" +
                                            accommodationRoomTypeId);
                                    for (var g = 0; g < extrabedNumber; g++) {
                                        roomExtrabedPrefNum.innerHTML += "<i class='fa fa-user af ax' aria-hidden=true></i>";
                                    }
                                }
                                // end guest number with extra bed if exists end create table rows

                                // create modals
                                document.getElementById("_m").innerHTML += "<div data-room=" +
                                    accommodationRoomTypeId +
                                    " class='modal fade' id=roomModal_" +
                                    accommodationRoomTypeId +
                                    " tabindex=-1 role=dialog>" +
                                    "<div class=modal-dialog role=document id=modalDialog_" +
                                    accommodationRoomTypeId +
                                    ">" +
                                    "<div class=modal-content id=modalContent_" +
                                    accommodationRoomTypeId +
                                    ">" +
                                    "<div id='modalHeader' class='modal-header' id=modalHeader_" +
                                    accommodationRoomTypeId +
                                    ">" +
                                    "<button type=button class=close data-dismiss=modal aria-label=Close><span aria-hidden=true>&times;</span></button>" +
                                    "</div>" +
                                    "<div class=modal-body id=modalBody_" +
                                    accommodationRoomTypeId +
                                    ">" +
                                    "<div id=jssor_2" +
                                    accommodationRoomTypeId +
                                    " style='position: relative; margin: 0 auto; top: 0px; left: 0px; width: 620px; margin-left:-15px; height: 300px; overflow: hidden; visibility: hidden;'>" +
                                    "<div data-u='loading' style='position: absolute; top: 0px; left: 0px;'>" +
                                    "<div style='filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;'></div>" +
                                    "<div style='position:absolute;display:block;background: url(../resources/pix/loading.gif) no-repeat center center;top:0px;left:0px;width:100%;height:100%;'></div>" +
                                    "</div>" +
                                    "<div id=images_" +
                                    accommodationRoomTypeId +
                                    " data-u='slides' style='cursor: default; position: relative; top: 0px; left: 0px; width: 600px; height: 300px; overflow: hidden;'>" +
                                    "</div>" +
                                    "<div data-u='navigator' class='jssorb01' style='bottom:16px;right:25px;'>" +
                                    "<div data-u='prototype' style='width:12px;height:12px;'></div>" +
                                    "</div>" +
                                    "<span data-u='arrowleft' class='jssora02l' style='background-image: url(../resources/pix/a17.png);top:0px;left:-7px;width:55px;height:55px;' data-autocenter='2'></span>" +
                                    "<span data-u='arrowright' class='jssora02r' style='background-image: url(../resources/pix/a17.png);top:0px;right:15px;width:55px;height:55px;' data-autocenter='2'></span>" +
                                    "</div>" +
                                    "</div>" +
                                    "<div class=modal-footer>";

                                document
                                    .getElementById("modalBody_" +
                                        accommodationRoomTypeId).innerHTML += "<div style='margin-top:10px;' id=modalBodyContent_" +
                                    accommodationRoomTypeId +
                                    " class=modal-body-content></div>";
                                // create modals end
                            }
                        } else {
                            var availabilityBody = document
                                .getElementById("availability");
                            if (availabilityBody) {
                                availabilityBody.innerHTML = "";
                                availabilityBody
                                    .setAttribute("id",
                                        "no_availability");
                                dojo
                                    .xhrGet({
                                        url: windowLocationS +
                                            "/getaccommodationroomtypee/" +
                                            id,
                                        load: function(
                                            data) {
                                            var jsn = JSON
                                                .parse(data);
                                            if (jsn.length > 0) {
                                                var mainDiv = document
                                                    .getElementById("no_availability");
                                                // checkin,
                                                // checkout
                                                // values.
                                                var noRoomAvailableSpan = document
                                                    .createElement("span");
                                                noRoomAvailableSpan
                                                    .setAttribute(
                                                        "class",
                                                        "no-room-available");
                                                var dt1 = $(
                                                        '.check-checkin')
                                                    .datepicker(
                                                        'getDate');
                                                var dt2 = $(
                                                        '.check-checkout')
                                                    .datepicker(
                                                        'getDate');
                                                var sorryCheckin = $.datepicker
                                                    .formatDate(
                                                        "D M d yy",
                                                        dt1);
                                                var sorryCheckout = $.datepicker
                                                    .formatDate(
                                                        "D M d yy",
                                                        dt2);
                                                noRoomAvailableSpan.innerHTML = "Sorry, There is no any available room between " +
                                                    sorryCheckin +
                                                    " and " +
                                                    sorryCheckout;
                                                mainDiv
                                                    .appendChild(noRoomAvailableSpan);
                                                var naContent = document
                                                    .createElement("div");
                                                naContent
                                                    .setAttribute(
                                                        "class",
                                                        "na-content");
                                                mainDiv
                                                    .appendChild(naContent);
                                                var table = document
                                                    .createElement("table");
                                                table
                                                    .setAttribute(
                                                        "class",
                                                        "roomstable rtable-noroom");
                                                naContent
                                                    .appendChild(table);
                                                var thead = document
                                                    .createElement("thead");
                                                thead.innerHTML = "<tr><th>Room type</th><th class=bl>Max</th><th class=bl>Price</th></tr>";
                                                table
                                                    .appendChild(thead);
                                                var tbody = document
                                                    .createElement("tbody");
                                                for (i = 0; i < jsn.length; i++) {
                                                    var tr = document
                                                        .createElement("tr");
                                                    var noAvailabilityRoomName = document
                                                        .createElement("td");
                                                    noAvailabilityRoomName
                                                        .setAttribute(
                                                            "class",
                                                            "noavailability-roomname");
                                                    noAvailabilityRoomName.innerHTML = jsn[i][0];
                                                    tr
                                                        .appendChild(noAvailabilityRoomName);
                                                    var noAvailabilityMaxGuest = document
                                                        .createElement("td");
                                                    noAvailabilityMaxGuest
                                                        .setAttribute(
                                                            "class",
                                                            "noavailabiliy-maxguest bl mc");
                                                    var maxGuestSpan = document
                                                        .createElement("span");
                                                    var bedroomGuestNumber = jsn[i][1];
                                                    if (bedroomGuestNumber > 4) {
                                                        maxGuestSpan.innerHTML += "<i class='fa fa-user af' aria-hidden=true></i><span class=extraWithPlus>&nbsp;x" +
                                                            bedroomGuestNumber +
                                                            "</span>";
                                                    } else {
                                                        for (j = 0; j < bedroomGuestNumber; j++) {
                                                            maxGuestSpan.innerHTML += "<i class='fa fa-user af'  aria-hidden=true></i>";
                                                        }
                                                    }
                                                    var extraBedNumber = jsn[i][2];
                                                    if (extraBedNumber > 0) {
                                                        maxGuestSpan.innerHTML += "<span> + </span>";
                                                        for (var t = 0; t < extraBedNumber; t++) {
                                                            maxGuestSpan.innerHTML += "<i class='fa fa-user af ax' aria-hidden=true></i>";
                                                        }
                                                    }
                                                    noAvailabilityMaxGuest
                                                        .appendChild(maxGuestSpan);
                                                    tr
                                                        .appendChild(noAvailabilityMaxGuest);
                                                    var noAvailabilityPrice = document
                                                        .createElement("td");
                                                    noAvailabilityPrice
                                                        .setAttribute(
                                                            "class",
                                                            "noavailability-price soldout bl mc text-alert");
                                                    noAvailabilityPrice.innerHTML = "Not available on your dates";
                                                    tr
                                                        .appendChild(noAvailabilityPrice);
                                                    tbody
                                                        .appendChild(tr);
                                                }
                                                table
                                                    .appendChild(tbody);

                                                var changeOption = document
                                                    .createElement("span");
                                                changeOption
                                                    .setAttribute(
                                                        "class",
                                                        "change-option");
                                                changeOption.innerHTML = "Would you like to change your dates?";
                                                naContent
                                                    .appendChild(changeOption);
                                                var editDates = document
                                                    .createElement("div");
                                                editDates
                                                    .setAttribute(
                                                        "class",
                                                        "co__edit-dates");
                                                var formSearchHotel = document
                                                    .createElement("div");
                                                formSearchHotel
                                                    .setAttribute(
                                                        "class",
                                                        "form-search-hotel na__date-form noavailability-dates");
                                                var naSearchByDates = document
                                                    .createElement("div");
                                                naSearchByDates
                                                    .setAttribute(
                                                        "class",
                                                        "na__searchByDates noavailability-dates");
                                                var searchByDates = document
                                                    .createElement("div");
                                                searchByDates
                                                    .setAttribute(
                                                        "class",
                                                        "searchByDates noavailability-dates");
                                                naSearchByDates
                                                    .appendChild(searchByDates);
                                                var datePickers = document
                                                    .createElement("form");
                                                datePickers
                                                    .setAttribute(
                                                        "class",
                                                        "date-pickers noavailability-dates");
                                                datePickers.id = "noAvailability_roomCheck";
                                                datePickers.action = windowLocation +
                                                    "/search";
                                                datePickers.method = "GET";
                                                datePickers
                                                    .setAttribute(
                                                        "role",
                                                        "search")
                                                var hiddenRoom = document
                                                    .createElement("input");
                                                hiddenRoom.name = "select_room";
                                                hiddenRoom.id = "noavailability_select_room";
                                                hiddenRoom.type = "hidden";
                                                var r = document
                                                    .getElementById("select_room");
                                                hiddenRoom.value = r.options[r.selectedIndex].value;
                                                datePickers
                                                    .appendChild(hiddenRoom);
                                                var hiddenAdult = document
                                                    .createElement("input");
                                                hiddenAdult.name = "select_adult";
                                                hiddenAdult.id = "noavailability_select_adult";
                                                hiddenAdult.type = "hidden";
                                                var a = document
                                                    .getElementById("select_adult");
                                                hiddenAdult.value = a.options[a.selectedIndex].value;
                                                datePickers
                                                    .appendChild(hiddenAdult);
                                                var hiddenChildren = document
                                                    .createElement("input");
                                                hiddenChildren.name = "select_child";
                                                hiddenChildren.id = "noavailability_select_child";
                                                hiddenChildren.type = "hidden";
                                                var c = document
                                                    .getElementById("select_child");
                                                hiddenChildren.value = c.options[c.selectedIndex].value;
                                                datePickers
                                                    .appendChild(hiddenChildren);
                                                var hotelNameN = document
                                                    .createElement("input");
                                                hotelNameN.type = "hidden";
                                                hotelNameN.name = "qkw";
                                                hotelNameN.value = document.forms["search_form-form"]["qkw"].value ||
                                                    document
                                                    .querySelector(".hname .hn").innerHTML;
                                                datePickers
                                                    .appendChild(hotelNameN);
                                                var prop = document
                                                    .createElement("input");
                                                prop.type = "hidden";
                                                prop.name = "cat";
                                                prop.value = "prop";
                                                datePickers
                                                    .appendChild(prop);

                                                for (var i = 1; i <= 3; i++) {
                                                    // dl =
                                                    // description
                                                    // list.
                                                    // dt =
                                                    // defines
                                                    // terms/names.
                                                    // dd =
                                                    // describes
                                                    // each
                                                    // term/name.
                                                    var datePickersColumns = document
                                                        .createElement("dl");
                                                    datePickersColumns
                                                        .setAttribute(
                                                            "class",
                                                            "date-pickers__column noavailability-dates");
                                                    if (i === 1) {
                                                        var dtCheckin = document
                                                            .createElement("dt");
                                                        dtCheckin.innerHTML = "Check-in";
                                                        datePickersColumns
                                                            .appendChild(dtCheckin);
                                                        var dd = document
                                                            .createElement("dd");
                                                        var input = document
                                                            .createElement("input");
                                                        input.id = "noavailability_date-checkin";
                                                        input.name = "checkin";
                                                        input.type = "text";
                                                        input.value = checkin;
                                                        input
                                                            .setAttribute(
                                                                "class",
                                                                "na-d_checkin noavailability-dates");
                                                        input
                                                            .setAttribute(
                                                                "readonly",
                                                                true);
                                                        dd
                                                            .appendChild(input);
                                                        datePickersColumns
                                                            .appendChild(dd);
                                                        datePickers
                                                            .appendChild(datePickersColumns);
                                                    }
                                                    if (i === 2) {
                                                        var dtCheckin = document
                                                            .createElement("dt");
                                                        dtCheckin.innerHTML = "Check-out";
                                                        datePickersColumns
                                                            .appendChild(dtCheckin);
                                                        var dd = document
                                                            .createElement("dd");
                                                        var input = document
                                                            .createElement("input");
                                                        input.id = "noavailability_date-checkout";
                                                        input.name = "checkout";
                                                        input.type = "text";
                                                        input.value = checkout;
                                                        input
                                                            .setAttribute(
                                                                "class",
                                                                "na-d_checkout noavailability-dates");
                                                        input
                                                            .setAttribute(
                                                                "readonly",
                                                                true);
                                                        dd
                                                            .appendChild(input);
                                                        datePickersColumns
                                                            .appendChild(dd);
                                                        datePickers
                                                            .appendChild(datePickersColumns);
                                                    }
                                                    if (i === 3) {
                                                        var dt = document
                                                            .createElement("dt");
                                                        dt.innerHTML = "&nbsp";
                                                        datePickersColumns
                                                            .appendChild(dt);
                                                        var dd = document
                                                            .createElement("dd");
                                                        var button = document
                                                            .createElement("input");
                                                        button.id = "noAvailability_btn";
                                                        button
                                                            .setAttribute(
                                                                "class",
                                                                "btn-acb xq noavailability-btn");
                                                        // button.innerHTML
                                                        // =
                                                        // "Check
                                                        // available
                                                        // dates";
                                                        button.value = "Check available dates";
                                                        button.type = "submit";
                                                        dd
                                                            .appendChild(button);
                                                        datePickersColumns
                                                            .appendChild(dd);
                                                        datePickers
                                                            .appendChild(datePickersColumns);
                                                    }
                                                }
                                                var clearFix = document
                                                    .createElement("div");
                                                clearFix
                                                    .setAttribute(
                                                        "class",
                                                        "clearfix");
                                                searchByDates
                                                    .appendChild(datePickers);
                                                searchByDates
                                                    .appendChild(clearFix);
                                                formSearchHotel
                                                    .appendChild(naSearchByDates);
                                                editDates
                                                    .appendChild(formSearchHotel);
                                                naContent
                                                    .appendChild(editDates);
                                            }
                                        }
                                    });
                            }
                        }
                    },
                    error: function(err) {
                        alert("accommodationRoom err: " + err);
                    }
                })
                .then(
                    function() {
                        dojo
                            .xhrGet({
                                url: windowLocationS +
                                    "/getaccommodationbreakfast/" +
                                    id,
                                load: function(breakfastOption) {
                                    var elements = document
                                        .getElementsByClassName('option-list');
                                    var cPolicy = document
                                        .getElementById("cpolicy");
                                    if (cPolicy) {
                                        cPolicy = cPolicy
                                            .getAttribute("value");
                                        var jsn = JSON
                                            .parse(breakfastOption);
                                        if (jsn.length > 1) {
                                            var price = jsn[0].breakfastPrice;
                                            for (i = 0; i < elements.length; i++) {
                                                elements[i].innerHTML = "<li style='font-size: 11px;' class=opt-li>" +
                                                    cPolicy +
                                                    "</li>";
                                                elements[i].innerHTML += price != 0 ? "<li style='font-size: 11px;' class=opt-li>Breakfast BAM " +
                                                    price +
                                                    "</li>" :
                                                    "<li class=opt-li><span class='opt-l-s yaayy'>&#10003; Breakfast included</span></li>";
                                            }
                                        }
                                    }
                                }
                            });

                        // //load rooms of roomtype
                        if (checkin == null)
                            checkin = new Date().toISOString()
                            .slice(0, 10);
                        if (checkin != null && checkout == null)
                            checkout = new Date(new Date()
                                .getTime() +
                                24 * 60 * 60 * 1000)
                            .toISOString().slice(0, 10);
                        // alert(window.location.search);
                        dojo
                            .xhrGet({
                                url: windowLocationS + "/getaccommodationroom?id=" + id + "&checkin=" + checkin + "&checkout=" + checkout,
                                load: function(data) {
                                    roomListJsn = JSON.parse(data);
                                    if (roomListJsn.length > 0) {
                                        for (i = 0; i < hotelRoomCounter; i++) {
                                            var q = 1;
                                            for (j = 0; j < roomListJsn.length; j++) {
                                                var dropdown = document.getElementById("room_length_dropdown_" +roomTypesArray[i].id);
                                                var spinner = document.getElementById("spinner_for_room_" +roomTypesArray[i].id);
                                                var roomTypeId = roomTypesArray[i].id;
                                                if (roomListJsn[j][1] == roomTypeId) {
                                                    var opt = document.createElement("option");
                                                    opt.value = q;
                                                    opt.setAttribute("data-price",diffDays *q *roomListJsn[j][3]);
                                                    opt.setAttribute("data-gn", roomTypesArray[i].accommodationRoomses[0].accommodationRoomBedOption[0]? roomTypesArray[i].accommodationRoomses[0].accommodationRoomBedOption[0].bedroomGuestsNum : 5);
                                                    opt.setAttribute("data-roomtypeid",roomListJsn[j][1]);
                                                    opt.innerHTML = q + " (" + userCurrency + " " + diffDays * q * roomListJsn[j][3] +")";
                                                    dropdown.appendChild(opt);
                                                    ++q;
                                                    dropdown.classList.remove("hide");
                                                    if(spinner) {
                                                    	spinner.className += " hide";
                                                        spinner.parentNode.removeChild(spinner);
                                                    }
//                                                    break;
                                                }
                                            }
                                        }
                                        // find not removed
                                        // spinners and set them
                                        // to 'not available'
                                        var getNotRemovedSpinners = document
                                            .querySelectorAll(".room-num-dropdown .fa-spinner");
                                        for (i = 0; i < getNotRemovedSpinners.length; i++) {
                                            // getNotRemovedSpinners[i].parentNode.removeChild(getNotRemovedSpinners[i]);
                                            // getNotRemovedSpinners[i].classList.remove("fa",
                                            // "fa-spinner",
                                            // "fa-spin",
                                            // "rmv-l");
                                            getNotRemovedSpinners[i].className = "sorry-not-available-room";
                                            getNotRemovedSpinners[i].innerHTML = "Not available";
                                        }
                                    }
                                },
                                error: function(err) {
                                    alert("Got an error while loading available rooms");
                                }
                            });

                        // end load rooms of roomtype
                        $("#loading").remove();
                        $("#__d17").removeClass("hide");
                        $("#footer").removeClass("hide");
                    },
                    function(error) {
                        console.log("Error occured in promise: " +
                            error);
                    });

        });

    var locale = 'en-us';
    var setCheckinDate = document
        .querySelector('.booking-dates_checkin .booking-dates-checkin-date');
    setCheckinDate.innerHTML = checkinL.toLocaleString(locale, {
            weekday: "long"
        }) + ", <span class=month-day>" + checkinL.toLocaleString(locale, {
            month: "long"
        }) + "&nbsp;" + checkinL.getDate() + "&nbsp; " + checkinL.getFullYear() +
        "</span>";

    var setCheckoutDate = document
        .querySelector('.booking-dates_checkout .booking-dates-checkout-date');
    setCheckoutDate.innerHTML = checkoutL.toLocaleString(locale, {
            weekday: "long"
        }) + ", <span class=month-day>" + checkoutL.toLocaleString(locale, {
            month: "long"
        }) + "&nbsp;" + checkoutL.getDate() + "&nbsp; " + checkoutL.getFullYear() +
        "</span>";

    var setLength = document
        .querySelector(".booking-dates_total-length-of-stay .booking-dates-length");
    setLength.innerHTML = diffDays > 1 ? diffDays + "&nbsp;nights" : diffDays +
        "&nbsp;night";
    var setDayLengthInTable = document.getElementById("price_highlight");
    var createDivForPriceNightLength = document.createElement("div");
    createDivForPriceNightLength.setAttribute("class", "price-highlight-inner");
    createDivForPriceNightLength.innerHTML = diffDays > 1 ? "Price for " +
        diffDays + " nights" : "Price for " + diffDays + " night";
    setDayLengthInTable.appendChild(createDivForPriceNightLength);
}

var arrayForRoomTypes = [];
function loadAccommodationRoomTypePopup(str) {
	var modalId = str.split("/")[0];
	var rti = str.split("/")[1];
	if(arrayForRoomTypes.indexOf(rti) === -1) {
		arrayForRoomTypes.push(rti);
		var modalBodyContent = document.getElementById("modalBodyContent_" + rti);
		dojo.xhrGet({
            url: windowLocationS + "/getaccommodationroomtypeinformation/" + rti,
            load: function(data, ioargs) {
            	var jsn = JSON.parse(data);
            	if(jsn.error) {
            		alert(jsn.error[0]);
            		return;
            	}
            	if(jsn.am) {
            		var rAmenity = document.createElement("div");
            		var icon = document.createElement("div");
            		icon.setAttribute("class", "riba-sagrada-familia");
            		rAmenity.appendChild(icon);
            		rAmenity.innerHTML += "&nbsp;<strong>Amenity: </strong>";
            		for(i = 0; i < jsn.am.length; i++) {
            			rAmenity.innerHTML += i == (jsn.am.length - 1) ? jsn.am[i][1] : jsn.am[i][1] + ", ";
            		}
            		modalBodyContent.appendChild(rAmenity);
            	}
            	if(jsn.ov) {
            		var rOutdoorView = document.createElement("div");
            		var icon = document.createElement("div");
            		icon.setAttribute("class", "riba-park");
            		rOutdoorView.appendChild(icon);
            		rOutdoorView.innerHTML += "&nbsp;<strong>Outdoor View: </strong>";
            		for(i = 0; i < jsn.ov.length; i++) {
            			rOutdoorView.innerHTML += i == (jsn.ov.length - 1) ? jsn.ov[i][1] : jsn.ov[i][1] + ", ";
            		}
            		modalBodyContent.appendChild(rOutdoorView);
            	}
            	if(jsn.rs) {
            		var rService = document.createElement("div");
            		var icon = document.createElement("div");
            		icon.setAttribute("class", "riba-room-service");
            		rService.appendChild(icon);
            		rService.innerHTML += "&nbsp;<strong>Service: </strong>";
            		for(i = 0; i < jsn.rs.length; i++) {
            			rService.innerHTML += i == (jsn.rs.length - 1) ? jsn.rs[i][1] : jsn.rs[i][1] + ", ";
            		}
            		modalBodyContent.appendChild(rService);
            	}
            	if(jsn.batho) {
            		var rBathroom= document.createElement("div");
            		var icon = document.createElement("div");
            		icon.setAttribute("class", "riba-bath");
            		rBathroom.appendChild(icon);
            		rBathroom.innerHTML += "&nbsp;<strong>Bathroom: </strong>";
            		for(i = 0; i < jsn.batho.length; i++) {
            			rBathroom.innerHTML += i == (jsn.batho.length - 1) ? jsn.batho[i][1] : jsn.batho[i][1] + ", ";
            		}
            		modalBodyContent.appendChild(rBathroom);
            	}
            	if(jsn.bedo) {
            		var rBedroom= document.createElement("div");
            		var icon = document.createElement("div");
            		icon.setAttribute("class", "riba-bath");
            		rBedroom.appendChild(icon);
            		rBedroom.innerHTML += "&nbsp;<strong>Bedroom: </strong>";
            		for(i = 0; i < jsn.bedo.length; i++) {
//            			rBedroom.innerHTML += i == (jsn.bedo.length - 1) ? jsn.bedo[i][1] : jsn.bedo[i][1] + ", ";
            			console.log(jsn.bedo);
            		}
//            		modalBodyContent.appendChild(rBedroom);
            	}
            	if(jsn.rmt) {
            		var rMediaTech= document.createElement("div");
            		var icon = document.createElement("div");
            		icon.setAttribute("class", "riba-telephone");
            		rMediaTech.appendChild(icon);
            		rMediaTech.innerHTML += "&nbsp;<strong>Media Tech: </strong>";
            		for(i = 0; i < jsn.rmt.length; i++) {
            			rMediaTech.innerHTML += i == (jsn.rmt.length - 1) ? jsn.rmt[i][1] : jsn.rmt[i][1] + ", ";
            		}
            		modalBodyContent.appendChild(rMediaTech);
            	}
            	if(jsn.fd) {
            		var rFoodDrink= document.createElement("div");
            		var icon = document.createElement("div");
            		icon.setAttribute("class", "riba-fast-food");
            		rFoodDrink.appendChild(icon);
            		rFoodDrink.innerHTML += "&nbsp;<strong>Food Drink: </strong>";
            		for(i = 0; i < jsn.fd.length; i++) {
            			rFoodDrink.innerHTML += i == (jsn.fd.length - 1) ? jsn.fd[i][1] : jsn.fd[i][1] + ", ";
            		}
            		modalBodyContent.appendChild(rFoodDrink);
            	}
            	if(jsn.rtp) {
                    var img = document.querySelector("#roomModal_" + rti +
                            " #modalDialog_" + rti + " #modalContent_" + rti +
                            " #modalBody_" + rti + " #jssor_2" + rti +
                            " #images_" + rti);

                        for (i = 0; i < jsn.rtp.length; i++) {
                            img.innerHTML += "<div data-p=112.50>" +
                                "<img data-u='image' src=" + jsn.rtp[i][0] + " />" +
                                +"</div>";
                        }
                        var jssor_1_SlideoTransitions=[[{b:0,d:600,y:-290,e:{y:27}}],[{b:0,d:1e3,y:185},{b:1e3,d:500,o:-1},{b:1500,d:500,o:1},{b:2e3,d:1500,r:360},{b:3500,d:1e3,rX:30},{b:4500,d:500,rX:-30},{b:5e3,d:1e3,rY:30},{b:6e3,d:500,rY:-30},{b:6500,d:500,sX:1},{b:7e3,d:500,sX:-1},{b:7500,d:500,sY:1},{b:8e3,d:500,sY:-1},{b:8500,d:500,kX:30},{b:9e3,d:500,kX:-30},{b:9500,d:500,kY:30},{b:1e4,d:500,kY:-30},{b:10500,d:500,c:{x:87.5,t:-87.5}},{b:11000,d:500,c:{x:-87.5,t:87.5}}],[{b:0,d:600,x:410,e:{x:27}}],[{b:-1,d:1,o:-1},{b:0,d:600,o:1,e:{o:5}}],[{b:-1,d:1,c:{x:175,t:-175}},{b:0,d:800,c:{x:-175,t:175},e:{c:{x:7,t:7}}}],[{b:-1,d:1,o:-1},{b:0,d:600,x:-570,o:1,e:{x:6}}],[{b:-1,d:1,o:-1,r:-180},{b:0,d:800,o:1,r:180,e:{r:7}}],[{b:0,d:1e3,y:80,e:{y:24}},{b:1e3,d:1100,x:570,y:170,o:-1,r:30,sX:9,sY:9,e:{x:2,y:6,r:1,sX:5,sY:5}}],[{b:2e3,d:600,rY:30}],[{b:0,d:500,x:-105},{b:500,d:500,x:230},{b:1e3,d:500,y:-120},{b:1500,d:500,x:-70,y:120},{b:2600,d:500,y:-80},{b:3100,d:900,y:160,e:{y:24}}],[{b:0,d:1e3,o:-0.4,rX:2,rY:1},{b:1e3,d:1e3,rY:1},{b:2e3,d:1e3,rX:-1},{b:3e3,d:1e3,rY:-1},{b:4e3,d:1e3,o:0.4,rX:-1,rY:-1}]],jssor_1_options={$AutoPlay:!0,$Idle:4e3,$CaptionSliderOptions:{$Class:$JssorCaptionSlideo$,$Transitions:jssor_1_SlideoTransitions,$Breaks:[[{d:2e3,b:1e3}]]},$ArrowNavigatorOptions:{$Class:$JssorArrowNavigator$},$BulletNavigatorOptions:{$Class:$JssorBulletNavigator$}},jssor_1_slider=new $JssorSlider$("jssor_2"+rti+"",jssor_1_options);
            	}
            },
			error: function(error) {
				alert("error occured. See log.");
				console.log(error);
			}
		});
	}
	
	
}

function sumre(x) {
    update();
}

function fill(roomTypeId, roomQuantity) {
    var cityTaxFee = document
        .querySelector(".reservation-pricedetails-excluded-fees .excluded-fees-price");
    var cityTaxFeeTerm = document
        .querySelector(".excluded-fees-title-charge-description .tax");
    var cityTaxHidden = document.getElementById("tax");
    var cityTaxAmount = cityTaxHidden.getAttribute("data-amount");
    var cityTaxIsIncluded = cityTaxHidden.getAttribute("data-included");
    var currency;
    if (cityTaxHidden.value === "EUR/night" ||
        cityTaxHidden.value === "EUR/stay" ||
        cityTaxHidden.value === "EUR/person per night" ||
        cityTaxHidden.value === "EUR/person per stay")
        currency = "&euro;";

    cityTaxFeeTerm.innerHTML = cityTaxIsIncluded == 0 ? dataHotelCurrencyCode +
        "&nbsp;" + cityTaxAmount : "";

    var add = 0;
    var roomsOfTypeCarrier = 0;
    var showGuests = document
        .querySelector(".reservation-pricedetails-excluded-fees .guest");
    var selects = document.querySelectorAll(".rooms");
    [].forEach.call(selects, function(select) {
        var roomsOfType = select.options[select.selectedIndex].value;
        if (roomsOfType != 0) {
            add = +add +
                +select.options[select.selectedIndex]
                .getAttribute("data-gn");
            roomsOfTypeCarrier = roomsOfType;
        }
    });
    showGuests.innerHTML = add === 1 ? add * roomsOfTypeCarrier + " guest" :
        add * roomsOfTypeCarrier + " guests";
    var totalTax = cityTaxAmount * (add * roomsOfTypeCarrier) * 1;
    reservationCityTax = totalTax;
    // Change 1 later as selected date night number.
    cityTaxFee.innerHTML = currency + "&nbsp;" + totalTax;
    if (cityTaxIsIncluded == 1) {
        var toBeRemoved = document.getElementById("citytax_charge");
        toBeRemoved.parentNode.removeChild(toBeRemoved);
        var toBeRemovedS = document.getElementById("citytax_fee");
        toBeRemovedS.parentNode.removeChild(toBeRemovedS);
    }
    var selectedRoomsNumber = document.getElementById("sroomQuantity").innerHTML;
    document.querySelector("span.total-room-number").innerHTML = selectedRoomsNumber == 1 ? selectedRoomsNumber +
        "&nbsp;room" :
        selectedRoomsNumber + "&nbsp;rooms";

    var getTotalRoomPrice = document.getElementById("total_price")
        .getAttribute("data-price");
    reservationTotalRoomPrice = getTotalRoomPrice;
    var setTotalRoomPrice = document
        .querySelector(".roomsprice .total-room-price");
    setTotalRoomPrice.setAttribute("data-currency", userCurrency);
    setTotalRoomPrice.setAttribute("data-trprice", getTotalRoomPrice);
    setTotalRoomPrice.innerHTML = userCurrency + "&nbsp;" + getTotalRoomPrice;

    var isIncluded = document.getElementById("vat").getAttribute(
        "data-included");
    var getVatPrice = document.getElementById("vat")
        .getAttribute("data-amount");
    var setVatPrice = document.getElementById("tax_price");
    var ctype = document.getElementById("vat").getAttribute("data-ctype");
    var calculate = 0;
    if (ctype === "%")
        calculate = getTotalRoomPrice * getVatPrice / 100;
    reservationVATPrice = Math.round(calculate);
    setVatPrice.innerHTML = isIncluded == 1 ? "<del> " + Math.round(calculate) +
        "</del>" : Math.round(calculate);
    setVatPrice.setAttribute("data-price", Math.round(calculate));
    setVatPrice.setAttribute("data-currency", userCurrency);
    var setTaxPriceCurrency = document.getElementById("tax_price__currency");
    setTaxPriceCurrency.setAttribute("data-currency", userCurrency);
    setTaxPriceCurrency.innerHTML = isIncluded == 1 ? "<del>" + userCurrency +
        "</del>" : userCurrency
    var getVatType = document.getElementById("vat").getAttribute("data-vot");
    var setTaxCharge = document.querySelector(".tax-included .tax-charge");
    setTaxCharge.innerHTML = isIncluded == 0 ? getVatPrice + "&nbsp;" + ctype +
        "&nbsp;" + getVatType : "<del>" + getVatPrice + "&nbsp;" + ctype +
        "&nbsp;" + getVatType + "</del>&nbsp;Included";
    var spanLineThrough = document.querySelector(".tax-included .tax-price");
    spanLineThrough.style.textDecoration = isIncluded == 1 ? "line-through" :
        "none";
    if (isIncluded == 1) {
        var setVATFree = document
            .querySelector(".reservation-pricedetails-holder .reservation-pricedetails-freeincludes");
        setVATFree.innerHTML += "<li class=rpd-tax>" + getVatPrice + "&nbsp;" +
            ctype + "&nbsp;" + getVatType +
            "&nbsp;included in price</li>";
    }
    var setTotalPrice = document
        .querySelector(".display-price-clarify .display-total-value");
    var getTaxPrice = document.getElementById("tax_price").getAttribute(
        "data-price");
    var getTRoomPrice = document.querySelector(".roomsprice .total-room-price")
        .getAttribute("data-trprice");
    var tp = parseFloat(getTRoomPrice) + parseFloat(getTaxPrice);
    reservationTotalPrice = tp;
    setTotalPrice.setAttribute("data-price", tp);
    setTotalPrice.setAttribute("data-currency", userCurrency);
    setTotalPrice.innerHTML = userCurrency + "&nbsp;" + tp;

    // //: we are using accommodation_city_tax for showing tax. City tax is
    // excluded charge.
    // accommodation_city_Tax
    // id, accommodation, tax_type, tax_amounth, is_included
    // '1', '13', '1', '1.00', '0'

    // //: we are using accommodation_vat for showing vat.(Actually the type is
    // being selected from
    // // vat_or_tax column.
    // accommodation_vat
    // id, accommodation, amounth, calculation_type, vat_or_tax, is_included
    // '1', '13', '17.00', '%', 'VAT', '0'

    // //: var ctype is calculation_type column.
    // //: About excluded city tax:
    // excluded total city tax price = city tax fee * # of guests * # of night
    // city tax fee is determined from tax_amounth column in
    // accommodation_city_tax table.
    // // # of guests are determined from calculation of # of guests of selected
    // rooms.
    // // # of night is determined from checkin & checkout dates. (Work in
    // progress.)

    var setHotelName = document
        .querySelector(".hotel-details .hotel-details-hotelname .hotelname-title");
    var getHotelName = document.querySelector(".hname .hn").innerHTML;
    setHotelName.innerHTML = getHotelName;

    var setHotelRank = document
        .querySelector(".hotel-details-hotelname .hotelname-rank");
    var getHotelRank = document.querySelector(".hotelpage-top .hname .hrating").innerHTML;
    setHotelRank.innerHTML = getHotelRank;

    var setHotelAddress = document
        .querySelector(".hotelname-address .hotelname-address_text");
    var getHotelAddress = document.querySelector("#showMap .fulladdress").innerHTML;
    setHotelAddress.innerHTML = "<span>" + getHotelAddress + "</span>";
    // /// *** Show selected rooms *** ///
    var selectedRoomm = [];
    for (var y = 0; y < roomQuantity; y++) {
        for (i = 0; i < roomTypesArray.length; i++) {
            for (var t = 0; t < roomListJsn.length; t++) {
                if (selectedRoomm.indexOf(roomListJsn[t][2]) === -1 &&
                    roomListJsn[t][1] == roomTypeId) {
                    if (selectedRoomm.length == roomQuantity)
                        break;
                    var roomId = roomListJsn[t][2];
                    selectedRoomm.push(roomId);
                    var roomName = roomListJsn[t][4];
                    var setSelectedRooms = document
                        .querySelector(".guests-room-details .room-information-box");
                    setSelectedRooms.innerHTML += "<div data-roomid=" +
                        roomId +
                        " id=asri_" +
                        roomId +
                        " class=book-room>" +
                        "<span onclick=remove(" +
                        roomId +
                        ") class='book-room-remove-control' href='#'></span> " +
                        "<div data-roomid=" +
                        roomId +
                        " class='book-room-details-description'>" +
                        "<div class='room-details-room-name'>" +
                        "<p class='room-name'>" +
                        "<strong>Room: </strong>" +
                        "<ins id=room_name__" +
                        roomId +
                        " data-name='" +
                        roomName +
                        "'>" +
                        roomName +
                        "</ins>" +
                        "&nbsp;<span onclick=remove(" +
                        roomId +
                        ") class='room-remove-label'>Remove</span>" +
                        "</p>" +
                        "<p class='room-policies'>" +
                        "<span title='<strong>Prepayment:</strong> You'll be charged a prepayment of the total price at any time.'>" +
                        "<ins class='policy-text'>Non-refundable</ins>&nbsp;" +
                        "<i class='fa fa-question-circle'></i>" +
                        "</span>" +
                        "</p>" +
                        "<div class='room-details_num-of-guests'>" +
                        "<div class='max-guest-detail'>" +
                        "<label for=max-guest_" +
                        roomId +
                        " class='room-detail-label'><strong>Max" +
                        " Guests:&nbsp; </strong></label>" +
                        "<span id=max-guest_" +
                        roomId +
                        " class='guests with-extrabed'>"
                        // + "<div class='smoking'>&nbsp;"
                        // + "<div style=margin-top: 15px;"
                        // + " class='riba-no-smoking'></div>"
                        // + "</div>"
                        +
                        "</span>" +
                        "</div>" +
                        "</div>" +
                        "</div>" +
                        "</div>" +
                        "<div class='clearfix'></div>" +
                        "<div class='form-field guest-full-name'>" +
                        "<label for=guestfullname_" +
                        roomId +
                        " class='form-field-label'>Full Guest" +
                        " Name" +
                        "&nbsp;<strong class='red-star'>*</strong></label>" +
                        "<input data-forroom='" +
                        roomName +
                        "' placeholder='First name, Last name'" +
                        "class='form-field-input rgna mandatory' type='text'" +
                        " data-roomid ='" + roomId +
                        "' name=guestfullname_" + roomId +
                        " id=guestfullname_" + roomId +
                        " value size='50'>" + "</div>" + "</div>";

                    var bedroomGuestsNumber = roomTypesArray[i].accommodationRoomses[0].accommodationRoomBedOption[0] ? roomTypesArray[i].accommodationRoomses[0].accommodationRoomBedOption[0].bedroomGuestsNum : 5;
                    var setTotalRoomGuest = document
                        .querySelector(".room-information-box #asri_" +
                            roomId + " .guest-full-name");
                    // start from 1 because 0th element is defined above.
                    if (bedroomGuestsNumber > 1) {
                        for (var b = 1; b < bedroomGuestsNumber; b++) {
                            setTotalRoomGuest.innerHTML += "<input data-order = " +
                                b +
                                " data-guestid = " +
                                roomId +
                                "_" +
                                bedroomGuestsNumber +
                                "_" +
                                b +
                                " placeholder='First name, Last name (optional)'" +
                                "class='form-field-input rgna gn-optional' type='text'" +
                                "value size='50'>";
                        }
                    }

                    var setChild = document.getElementById("max-guest_" +
                        roomId);

                    // var bedroomGuestsNumber =
                    // roomTypesArray[i].accommodationRoomses[0].accommodationRoomBedOption[0].bedroomGuestsNum;
                    if (bedroomGuestsNumber >= 1) {
                        var bgn = document.createElement("span");
                        bgn.setAttribute("class", "adults");
                        bgn.setAttribute("id", "adults_" + roomId);
                        if (bedroomGuestsNumber > 4) {
                            bgn.innerHTML += "<i class='fa fa-user af'  aria-hidden=true></i>&nbsp;x&nbsp;" +
                                bedroomGuestsNumber;
                        } else {
                            for (var g = 0; g < bedroomGuestsNumber; g++) {
                                bgn.innerHTML += "<i class='fa fa-user af'  aria-hidden=true></i>";
                            }
                        }

                        setChild.appendChild(bgn);
                    }

                    var setExtraBed = document
                        .querySelector("#max-quest #extraBed_" + roomId);
                    var hasExtraBed = roomTypesArray[i].accommodationRoomses[0].hasExtrabeds;
                    var extraBedNumber = roomTypesArray[i].accommodationRoomses[0].extrabedsNum;
                    if (hasExtraBed) {
                        var eb = document.createElement("span");
                        eb.setAttribute("class", "extrabed");
                        eb.setAttribute("id", "extraBed_" + roomId);
                        eb.innerHTML = "&nbsp;+&nbsp;";
                        for (var e = 0; e < extraBedNumber; e++) {
                            eb.innerHTML += "<i class='fa fa-user af ax' aria-hidden=true></i>";
                        }
                        setChild.appendChild(eb);
                        // show extrabed client type
                        var extrabedClientLength = roomTypesArray[i].accommodationRoomses[0].accommodationRoomExtrabedClient.length;
                        var x = roomTypesArray[i].accommodationRoomses[0].accommodationRoomExtrabedClient[0].enduserPrice;
                        var extrabedTypePrice = x != 0 ? userCurrency +
                            "&nbsp;" +
                            roomTypesArray[i].accommodationRoomses[0].accommodationRoomExtrabedClient[0].enduserPrice :
                            "";
                        var extrabedType = roomTypesArray[i].accommodationRoomses[0].accommodationRoomExtrabedClient[0].cbRoomExtrabedClienttype.clienttypeName;
                        var setExtrabedType = document
                            .getElementById("extraBed_" + roomId);
                        setExtrabedType.innerHTML += " (" + extrabedType +
                            "&nbsp;" + extrabedTypePrice + ")";
                        // end show extrabed client type
                    }
                    // create 1 more nested for loop for looping bedoptions when
                    // more bed option exists for one room.
                    // create radio buttons for the specific room bed options if
                    // more than one exists.
                    // Uncomment below codes when editing a specific room of
                    // room type is available.
                    // var getBedOptionDiv =
                    // document.getElementById("bed_option");
                    // var BedOptionName =
                    // roomTypesArray[i].accommodationRoomses[y].accommodationRoomBedOption[0].cbRoomBedOptions.bedOptionName;
                    // var BedOptionIcon =
                    // roomTypesArray[i].accommodationRoomses[y].accommodationRoomBedOption[0].cbRoomBedOptions.bedOptionIcon;
                    // var BedOptionCapacity =
                    // roomTypesArray[i].accommodationRoomses[y].accommodationRoomBedOption[0].cbRoomBedOptions.bedOptionCapacity;
                    // var bedOptionId =
                    // roomTypesArray[i].accommodationRoomses[y].accommodationRoomBedOption[0].id;
                    // var createBedName = document.createElement("p");
                    // var holder = document.createElement("div");
                    // holder.setAttribute("id", bedOptionId+roomId+roomTypeId);
                    // createBedName.setAttribute("class","bed-pref-room-name");
                    // createBedName.innerHTML = "<em>" + BedOptionCapacity +
                    // "&nbsp;" + BedOptionName + "</em>";
                    // createBedName.setAttribute("id", "bed-name_" + roomId);
                    // holder.appendChild(createBedName);
                    // var createBedContainer = document.createElement("div");
                    // createBedContainer.setAttribute("class","bed-pref-container");
                    // createBedContainer.setAttribute("id","bed-pref-container_"
                    // + roomId);
                    // var createRadioButton = document.createElement("input");
                    // createRadioButton.setAttribute("type", "radio");
                    // createRadioButton.setAttribute("id", roomId + "_" +
                    // bedOptionId);
                    // createRadioButton.setAttribute("name", roomId + "_" +
                    // bedOptionId);
                    // createBedContainer.appendChild(createRadioButton);
                    // holder.appendChild(createBedContainer);
                    // var createLabel = document.createElement("label");
                    // createLabel.setAttribute("for",roomId + "_" +
                    // bedOptionId);
                    // createLabel.innerHTML = "&nbsp;" + BedOptionCapacity +
                    // "&nbsp;" + BedOptionName + "&nbsp;<div
                    // style='vertical-align: bottom;' class=riba-" +
                    // BedOptionIcon + "></div>";
                    // createBedContainer.appendChild(createLabel);
                    // getBedOptionDiv.appendChild(holder);
                }
            }
        }
    }
    // /// *** End Show selected rooms *** ///
    var show = document.getElementById("_seyd");
    show.style.display = "block";
    show.style.visibility = "visible";

    userDetails();
}

function remove(roomId) {
    var checkDiv = document
        .querySelector(".guests-room-details .room-information-box");
    if (checkDiv.children.length === 1) {
        back();
        location.reload();
    }

    var findRoom = document.getElementById("asri_" + roomId).getAttribute(
        "data-roomid");
    var getRoomName = document.getElementById("room_name__" + roomId)
        .getAttribute("data-name");
    var toBeRemoved = document.getElementById("asri_" + findRoom);
    if (confirm("You are about to remove this option from your reservation: \n\n" +
            getRoomName + "\n\nPlease click OK to confirm this change.")) {
        toBeRemoved.parentNode.removeChild(toBeRemoved);
    } else
        return;
    // var findBedPreference =
    // document.getElementById(bedOptionId+roomId+roomTypeId);
}

function next() {
    window.scrollTo(0, 0);
    var selects = document.querySelectorAll(".rooms");
    selects.forEach(function(select) {
        var roomsOfType = select.options[select.selectedIndex].value;
        if (roomsOfType != 0) {
            var hideHotelDetails = document.getElementById("hotel_page_body");
            var footerMain = document.getElementById("footer");
            hideHotelDetails.style.display = "none";
            hideHotelDetails.style.visibility = "hidden";
            footer.style.display = "none";
            footer.style.visibility = "hidden";
            var r = document.getElementById("reservation_main");
            r.style.display = "block";
            r.style.visibility = "visible";
            var roomTypeId = select.options[select.selectedIndex]
                .getAttribute("data-roomtypeid");
            var roomQuantity = select.options[select.selectedIndex].value;
            fill(roomTypeId, roomQuantity);
        }
    });
}

function third() {
    var hide = document.getElementById("_seyd");
    hide.style.display = "none";
    hide.style.visibility = "hidden";
    var show = document.getElementById("_tcyb");
    show.style.display = "block";
    show.style.visibility = "visible";

    var barSecond = document.getElementById("r_progressbar_c2");
    barSecond.classList.remove("selected");
    var barThird = document.getElementById("r_progressbar_c3");
    barThird.classList.add("selected");

    var q = document.querySelector(".booking-dates .search-button");
    q.parentNode.removeChild(q);
    var s = document.getElementById("cselection");
    s.parentNode.removeChild(s);
}

function back() {
    window.scrollTo(0, 0);
    var r = document.getElementById("reservation_main");
    r.style.display = "none";
    r.style.visibility = "hidden";
    var hideHotelDetails = document.getElementById("hotel_page_body");
    var footerMain = document.getElementById("footer");
    hideHotelDetails.style.display = "block";
    hideHotelDetails.style.visibility = "visible";
    footer.style.display = "block";
    footer.style.visibility = "visible";
    document.getElementById("availability").focus();
    document.querySelector(".guests-room-details .room-information-box").innerHTML = "";
}

// //////////////// summary ////////////////
function update() {
    var selects = document.querySelectorAll(".rooms");
    var roomsCount = 0;
    var priceTotal = 0;
    selects.forEach(function(select) {
        var roomsOfType = select.options[select.selectedIndex].value;
        if (roomsOfType != 0) {
            roomsCount += parseInt(roomsOfType);
            priceTotal += parseFloat(select.options[select.selectedIndex]
                .getAttribute("data-price"));
        }
    });
    var setShowQuantity = document.querySelector("#booking_summary .squantity");
    var roomSelectedText = document
        .querySelector("#booking_summary .rooms-count");
    var totalPrice = document.getElementById("total_price");

    if (roomsCount > 0) {
        document.getElementById("booking_summary").style.display = "block";
        totalPrice.innerText = userCurrency + " " + priceTotal;
        totalPrice.setAttribute("data-price", priceTotal);
        totalPrice.setAttribute("data-currency", userCurrency);
        setShowQuantity.innerText = roomsCount;
        roomSelectedText.innerText = roomsCount == 1 ? "room for" :
            "rooms selected";
        document.getElementById("btnBooking").style.backgroundColor = "rgb(198, 212, 233)";
    } else {
        totalPrice.innerText = "";
        totalPrice.setAttribute("data-price", "");
        totalPrice.setAttribute("data-currency", userCurrency);
        setShowQuantity.innerText = "";
        roomSelectedText.innerText = "";
        document.getElementById("booking_summary").style.display = "none";
        document.getElementById("btnBooking").style.backgroundColor = "rgb(255, 255, 255)";
    }
}
// /////////////// end summary///////////////

function validateEmail(email) {
    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
}

function validatePhoneNumber(phone) {
    var regex = /^\+(?:[0-9] ?){6,14}[0-9]$/;
    if (regex.test(phone)) {
        document.getElementById("phonenumber").style.backgroundColor = "white";
        document.getElementById("lblphonenumber").innerHTML = "Phone number is valid";
        return true;
    } else {
        document.getElementById("phonenumber").style.backgroundColor = "rgba(255,0,0,0.5)";
        document.getElementById("lblphonenumber").innerHTML = "Phone number is invalid";
        return false;
    }
}

document
    .addEventListener(
        "keypress",
        function(x) {
        	
        	if(x.target && (x.target.id === "tour_qty1") || x.target.id === "tour_qty2" || x.target.className.indexOf("quantity-servicesq") != -1) {
        		charCode = (x.which) ? x.which : x.keyCode;
        		if ((charCode > 31) && (charCode < 48 || charCode > 57) || charCode == 32) {
        			x.preventDefault();
        			return false;
        			} else {
        				return true;
                    }
        	}

            if (x.target &&
                (x.target.id === "m_checkin" || x.target.id === "m_checkout")) {
                x.preventDefault();
            }

            if (x.target && x.target.id === "mobile") {
                charCode = (x.which) ? x.which : x.keyCode;
                if (charCode == 13)
                    return true;
                if ((charCode > 31) && (charCode < 48 || charCode > 57) ||
                    charCode == 32) {
                    x.preventDefault();
                    return false;
                } else {
                    validatePhoneNumber("+" +
                        document.getElementById("mobile").value);
                    return true;
                }
            }

            if (x.target && x.target.id === "phonenumber") {
                var charCode = (x.which) ? x.which : x.keyCode;
                if (charCode == 13)
                    return true;
                if ((charCode > 31) && (charCode < 48 || charCode > 57) ||
                    charCode == 32) {
                    x.preventDefault();
                    return false;
                } else {
                    validatePhoneNumber("+" +
                        document.getElementById("phonenumber").value);
                    return true;
                }
            }

            if (x.target && x.target.id === "cvc_code") {
                var cvc = document.getElementById("cvc_code").value;
                var getField = document.getElementById("cvc_field");
                var charCode = (x.which) ? x.which : x.keyCode;
                if (charCode == 13)
                    return true; // check if enter pressed
                if ((charCode > 31) && (charCode < 48 || charCode > 57) ||
                    charCode == 32) {
                    // check if letter(between a to z including cmd,
                    // ctrl, space) pressed/
                    x.preventDefault();
                    return false;
                } else {
                    var warning = document
                        .getElementById("cvc_warning");
                    warning.innerHTML = cvc.length < 2 ? "Cvc code must contain at least 3 digit numbers" :
                        "";
                    return true;
                }
            }
        }, false);

function isValidCreditCard(type, ccnum) {
    if (type == "visa") {
        // Visa: length 16, prefix 4, dashes optional.
        var re = /^4\d{3}-?\d{4}-?\d{4}-?\d{4}$/;
    } else if (type == "mastercard") {
        // Mastercard: length 16, prefix 51-55, dashes optional.
        var re = /^5[1-5]\d{2}-?\d{4}-?\d{4}-?\d{4}$/;
    } else if (type == "discover") {
        // Discover: length 16, prefix 6011, dashes optional.
        var re = /^6011-?\d{4}-?\d{4}-?\d{4}$/;
    } else if (type == "americanexpress") {
        // American Express: length 15, prefix 34 or 37.
        var re = /^3[4,7]\d{13}$/;
    } else if (type == "dinnersclub") {
        // Diners: length 14, prefix 30, 36, or 38.
        var re = /^3[0,6,8]\d{12}$/;
    }
    if (!re.test(ccnum))
        return false;
    // Remove all dashes for the checksum checks to eliminate negative numbers
    ccnum = ccnum.split("-").join("");
    // Checksum ("Mod 10")
    // Add even digits in even length strings or odd digits in odd length
    // strings.
    // It's called Luhn ALgorithm.
    // Start from right side of the number block, check digit and go left.
    // Double every other number. If doubled, Numbers are two digits, Then add
    // them up.
    var checksum = 0;
    for (var i = (2 - (ccnum.length % 2)); i <= ccnum.length; i += 2) {
        checksum += parseInt(ccnum.charAt(i - 1));
    }
    // Analyze odd digits in even length strings or even digits in odd length
    // strings.
    for (var i = (ccnum.length % 2) + 1; i < ccnum.length; i += 2) {
        var digit = parseInt(ccnum.charAt(i - 1)) * 2;
        if (digit < 10) {
            checksum += digit;
        } else {
            checksum += (digit - 9);
        }
    }
    if ((checksum % 10) == 0) {
        console.log("ok");
        return true;
    } else {
        console.log("false");
        return false;
    }
}

function check(cbid, id, price) {
    var div = document.getElementById(id);
    var checkbox = document.getElementById(cbid);
    var getPrice = document.getElementById(price);
    // div.style.backgroundColor = checkbox.checked == true ? "#fff"; :
    // "##f5fbf5";
    if (checkbox.checked == true) {
        div.style.backgroundColor = "#fff";
        getPrice.style.display = "block";
        var x = document.getElementById(id + "Exc");
        var title = x.getAttribute("data-title");
        var price = x.getAttribute("data-price");
        var userPrice = x.getAttribute("data-userPrice");
        var setWirelessExcludedCharge = document
            .querySelector(".reservation-pricedetails-excluded-fees .excluded-fees-list");
        setWirelessExcludedCharge.innerHTML += "<li id=" + id + "Li><span>" +
            title + "" +
            "<div class=excluded-fees-title-charge-description>" +
            "<div class='charge-description-term tax'>" +
            dataHotelCurrencyCode + "&nbsp;" + price + "</div>" +
            "</div></span>" + "<span class=excluded-fees-price>" +
            dataHotelCurrencyCode + "&nbsp;" + price + "</span>" +
            "</li>";

        var setUpdatedPrice = document
            .querySelector(".display-price-clarify .display-total-value");
        var getOldPrice = setUpdatedPrice.getAttribute("data-price");
        var newPrice = parseFloat(userPrice) + parseFloat(getOldPrice);
        setUpdatedPrice.innerHTML = userCurrency + "&nbsp;" + newPrice;
        setUpdatedPrice.setAttribute("data-price", newPrice);

    } else {
        div.style.backgroundColor = "#f5fbf5";
        getPrice.style.display = "none";
        var z = document.getElementById(id + "Li");
        z.parentNode.removeChild(z);
        var x = document.getElementById(id + "Exc");
        var price = x.getAttribute("data-userprice");
        var setUpdatedPrice = document
            .querySelector(".display-price-clarify .display-total-value");
        var getOldPrice = setUpdatedPrice.getAttribute("data-price");
        var newPrice = parseFloat(getOldPrice) - parseFloat(price);
        setUpdatedPrice.innerHTML = userCurrency + "&nbsp;" + newPrice;
        setUpdatedPrice.setAttribute("data-price", newPrice);
    }
}

function userDetails() {
    // show first room guest name.
    var w = document.querySelectorAll(".guest-full-name .rgna");
    // w[0].value = document.getElementById("firstname").value;
    for (i = 0; i < w.length; i++) {
        w[i].value = document.getElementById("firstname").value;
    }
}

// Change login logic when you finish everything.
// Change login logic when you finish everything.
// Change login logic when you finish everything.
// Change login logic when you finish everything.


function closeModal() {
    var w = document.querySelector(".modal-header__buttons .close");
    w.click();
}
var slm;
// load user - load client
function getUserFromDB(username) {
    dojo
        .xhrGet({
            url: windowLocationS +
                "/getClientByUsername/username?username=" + username,
            load: function(data) {
                clientObject = JSON.parse(data);
                var q = document.createElement("input");
                q.setAttribute("type", "hidden");
                // var encrypt =
                // CryptoJS.AES.encrypt(clientObject[0].username,
                // "ImproveTheLogicLater");
                // q.setAttribute("value", encrypt);
                // q.setAttribute("id", "_jX38");
                // q.setAttribute("data-token", encrypt);
                // document.body.appendChild(q);
                var namesurname = document.getElementById("namesurname");
                if (clientObject[0].name !== null) {
                    namesurname.value = clientObject[0].name;
                }
                if (clientObject[0].logo !== null) {
                    var profile_picture = document
                        .getElementById("showPic");
                    profile_picture.setAttribute("src",
                        clientObject[0].logo);
                    var avatar = document.querySelector(".user-profile");
                    avatar.style.backgroundImage = "url(" +
                        clientObject[0].logo + ")";
                    var clientAvatar = document
                        .querySelector(".client-profile-picture");
                    clientAvatar.setAttribute("src", clientObject[0].logo);
                }
                var gender = document.getElementById("gender");
                if (clientObject[0].isMale === 1)
                    gender.options[2].selected = true;
                else if (clientObject[0].isMale === 0)
                    gender.options[1].selected = true;
                else
                    gender.options[0].selected = true;

                var currency = document.getElementById("currency");
                for (i = 0; i < currency.options.length; i++) {
                    if (currency.options[i].value == clientObject[0].currency)
                        currency.selectedIndex = i;
                }

                var web = document.getElementById("web");
                web.value = clientObject[0].web;

//                $('#birthday').datepicker('setDate',
//                    new Date(clientObject[0].birthDate));

                var mobile = document.getElementById("mobile");
                mobile.value = clientObject[0].mobile;

                if (clientObject[0].creditCardNo !== null &&
                    clientObject[0].expDate !== null &&
                    clientObject[0].holderName !== null &&
                    clientObject[0].bankName !== null) {
                    var removeDiv = document
                        .querySelector("#cCc__mysettings__cCc .card-table");
                    removeDiv.parentNode.removeChild(removeDiv);
                    var setTable = document
                        .querySelector(".settings-container-content .mysettings-table");
                    var setCardTable = document.createElement("div");
                    setCardTable.setAttribute("class",
                        "card-table mysettings-table__content");
                    var setCCNumber = document.createElement("span");
                    setCCNumber.setAttribute("class", "ccnumber");
                    setCCNumber.innerHTML = clientObject[0].creditCardNo;
                    setCardTable.appendChild(setCCNumber);
                    var setCCHolder = document.createElement("span");
                    setCCHolder.setAttribute("class", "ccholder");
                    setCCHolder.innerHTML = clientObject[0].holderName;
                    setCardTable.appendChild(setCCHolder);
                    var setCCExpD = document.createElement("span");
                    setCCExpD.setAttribute("class", "ccexpd");
                    setCCExpD.innerHTML = clientObject[0].expDate;
                    setCardTable.appendChild(setCCExpD);
                    var setEditBtn = document.createElement("span");
                    setEditBtn.setAttribute("class", "card-table__edit");
                    setEditBtn.innerHTML = "&nbsp; Edit";
                    setCardTable.appendChild(setEditBtn);
                    var setHiddenBankName = document.createElement("input");
                    setHiddenBankName.setAttribute("type", "hidden");
                    setHiddenBankName.value = clientObject[0].bankName;
                    setCardTable.appendChild(setHiddenBankName);
                    setTable.appendChild(setCardTable);
                    var setHeaderVisible = document
                        .querySelector(".mysettings-table .mysettings-table__head");
                    setHeaderVisible.style.display = "block";

                    document.getElementById("s_body_content").style.minHeight = "1400px";
                    document.getElementById("s_body_content__area").style.minHeight = "1400px";
                    document.getElementById("s_body_content__area").style.height = "1400px";
                }
                // reservation part

                var removeSignInBtn = document.getElementById("signin_box");
                if (removeSignInBtn)
                    removeSignInBtn.parentNode.removeChild(removeSignInBtn);

                var removePasswordField = document
                    .querySelector(".personal-details-form .optional-password");
                if (removePasswordField)
                    removePasswordField.parentNode
                    .removeChild(removePasswordField);

                var setReservationFirstname = document
                    .querySelector(".form-field input[id=firstname]");
                if (setReservationFirstname)
                    setReservationFirstname.value = clientObject[0].name;

                var setReservationEmailAddress = document
                    .querySelector(".form-field input[id=emailaddress]");
                if (setReservationEmailAddress)
                    setReservationEmailAddress.value = clientObject[0].email;

                var setReservationEmailAddressConfirmation = document
                    .querySelector(".form-field input[id=emailaddressconfirmation]");
                if (setReservationEmailAddressConfirmation)
                    setReservationEmailAddressConfirmation.value = clientObject[0].email;

                var setCreditCardType = document
                    .getElementById("card_type");
                if (setCreditCardType) {
                    for (i = 0; i < setCreditCardType.options.length; i++) {
                        if (setCreditCardType.options[i].value == clientObject[0].bankName)
                            setCreditCardType.selectedIndex = i;
                    }
                }

                var setCardNumber = document.getElementById("card_number");
                if (setCardNumber)
                    setCardNumber.value = clientObject[0].creditCardNo;

                var setCardHolderName = document
                    .getElementById("card_holdername");
                if (setCardHolderName) {
                    setCardHolderName.value = clientObject[0].holderName;
                    setCardHolderName.setAttribute("disabled", "true");
                }

                var ss = clientObject[0].expDate;
                var setMonth = document.getElementById("exp_date_month");
                if (setMonth && ss !== null) {
                    for (i = 0; i < setMonth.options.length; i++) {
                        if (setMonth.options[i].value == ss.substring(0, ss
                                .indexOf("/")))
                            setMonth.selectedIndex = i;
                    }
                }

                var setYear = document.getElementById("exp_date_year");
                if (setYear && ss !== null) {
                    for (i = 0; i < setYear.options.length; i++) {
                        if (setYear.options[i].value == ss.substring(ss
                                .indexOf("/") + 1))
                            setYear.selectedIndex = i;
                    }
                }
                // check if exists according to dropdown selection.
                var setPhoneNumber = document.getElementById("phonenumber");
                if (setPhoneNumber)
                    setPhoneNumber.value = clientObject[0].mobile;
            }
        });
}

Array.prototype.slice
    .call(document.querySelectorAll(".input-mysettings"))
    .forEach(
        function(element) {
            element.onblur = function() {
                obj = clientObject[0];
                var dataSaver = element.getAttribute("data-saver");
                var loader = document.getElementById(dataSaver +
                    "_loader");
                var spin = document.getElementById(dataSaver + "_spin");
                var saving = document.getElementById(dataSaver +
                    "_saving");
                var saved = document.getElementById(dataSaver +
                    "_saved");
                var error = document.getElementById(dataSaver +
                    "_error");
                loader.style.display = "inline-block";
                spin.style.display = "inline-block";
                saving.style.display = "inline-block";
                saved.style.display = "none";
                // var username =
                // document.getElementById("_jX38").value;
                // username = CryptoJS.AES.decrypt(username,
                // "ImproveTheLogicLater");

                var namesurname = document
                    .getElementById("namesurname").value;
                if (namesurname !== null) {
                    clientObject[0].name = namesurname;
                }

                var g = document.getElementById("gender");
                var gender = g.options[g.selectedIndex]
                    .getAttribute("value");
                clientObject[0].isMale = gender;

//                var getBirthday = $("#birthday").datepicker('getDate');
//                if (getBirthday !== null || getBirthday === "NaN") {
//                    var birthday = new Date(getBirthday);
//                    clientObject[0].birthDate = birthday;
//                }
                var c = document.getElementById("currency");
                var currency = c.options[c.selectedIndex]
                    .getAttribute("value");
                clientObject[0].currency = currency

                if (element.id === "web") {
                    var webValidation = new RegExp(
                        "^(http[s]?:\\/\\/(www\\.)?|ftp:\\/\\/(www\\.)?|www\\.){1}([0-9A-Za-z-\\.@:%_\+~#=]+)+((\\.[a-zA-Z]{2,3})+)(/(.)*)?(\\?(.)*)?");
                    if (!webValidation.test(element.value)) {
                        web.style.border = "1px solid red";
                        loader.style.display = "none";
                        error.style.display = "inline-block";
                        return;
                    } else {
                        web.style.border = "1px solid #d8d8d8";
                        error.style.display = "none";
                        clientObject[0].web = document
                            .getElementById("web").value;
                    }
                }
                // clientObject[0].web =
                // document.getElementById("web").value;

                var mobile = document.getElementById("mobile");
                if (mobile.value !== null && mobile.value !== "") {
                    if (validatePhoneNumber("+" + mobile.value))
                        clientObject[0].mobile = mobile.value;
                    else
                        saved.style.display = "none";
                }

                GOLOBALServices.updateClient(clientObject[0]);
                saving.style.display = "none";
                spin.style.display = "none";
                saved.style.display = "inline-block";

                setTimeout(function() {
                    loader.style.display = "none";
                }, "2000");
            };
        });

function pic(input) {
    if (input.files && input.files[0]) {
        if (input.files[0].size > 2097152) {
            alert("Image should be smaller than 2mb!");
            return;
        }
        // var client = document.getElementById("_jX38");
        // client = client.value;
        // client = CryptoJS.AES.decrypt(client.value, "ImproveTheLogicLater");
        var client = clientObject[0].username;
        var filename = input.value.split(/(\\|\/)/g).pop();
        var cloudinaryPath = client + "/" + filename;
        var formData = new FormData();
        formData.append("picture", input.files[0]);
        formData.append("client", client);

        var progress = document.getElementById("pp_progress");
        var displayPercentage = document.getElementById("pp_progress__display");
        var uploadBtn = document.getElementById("picture");
        var notification = document.getElementById("pp_notification");

        var xhr = new XMLHttpRequest();
        // http://getbootstrap.com/javascript/#buttons-stateful
        // todo
        // !!CHANGE IT LATER BECAUSE IT IS DEPRECATED DUE TO ITS DETRIMENTAL
        // EFFECTS TO THE END USER!!
        xhr.open("POST", windowLocationS + "/uploadprofilepicture", true);
        var contentType = "multipart/form-data;";
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                var reader = new FileReader();
                reader.onload = function(e) {
                    displayPercentage.innerText = Math
                        .floor((event.loaded / event.total) * 100) +
                        '%';
                    notification.innerHTML = "Your image has been uploaded. It will be available to public when it is approved by our system.";
                    progress.value = progress.max;
                    var img = document.querySelectorAll(".pp-img");
                    for (i = 0; i < img.length; i++) {
                        img[i].setAttribute("src", e.target.result);
                        img[i].setAttribute("width", "130");
                        img[i].setAttribute("height", "130");
                    }
                    var avatar = document.querySelector(".user-profile img");
                    avatar.setAttribute("src", e.target.result);
                    avatar.setAttribute("width", "24");
                    avatar.setAttribute("height", "24");

                    var a = document.querySelector(".user-profile");
                    a.style.backgroundImage = "url(" + e.target.result + ")";
                };
                reader.readAsDataURL(input.files[0]);
            }
            if (xhr.status === 400)
                return;
        };
        xhr.upload.onprogress = function(event) {
            uploadBtn.disabled = true;
            if (event.lengthComputable) {
                progress.max = event.total;
                progress.value = event.loaded;
                // displayPercentage.innerText = Math
                // .floor((event.loaded / event.total) * 100)
                // + '%';
            }
        };
        xhr.upload.onloadend = function(event) {
            uploadBtn.disabled = true;
            notification.innerHTML = "<i class='fa fa-spin fa-refresh'></i>&nbsp;Please wait. This might be longer according to picture size.";
            displayPercentage.innerText = "0%";
        }
        xhr.send(formData);
    }
}
// // warning console ////
// console.log("%cStop!", "color:Red; background:transparent; font-size: 24pt");
// console.log("%cDon't %s any information! Make it %d% secure...",
// "color:orange; background:transparent; font-size: 16pt", 'share', 100);
// // end warning console ////
//
document.querySelector(".mysettings-input--input .btn-mysettings")
    .addEventListener("click", function() {
        document.getElementById("picture").disabled = false;
    });
document
    .querySelector(".settings-navbar--container-list .mysettings-list-item").onClick = function() {
        document
            .querySelector(".settings-navbar--container-list .mysettings-list-item").classList
            .remove("mysettings-active");
        this.className += "mysettings-active";
    };

function loadTourCities(value) {
    var select = document.getElementById("ta_qc");
    var selectLength = select ? select.length : 0;
    dojo.xhrGet({
        url: windowLocationS + "/getCityBySName?stateName=" + value,
        load: function(data) {
            var jsn = JSON.parse(data);
            if (jsn.length > 0) {
                select.length = 1;

                for (i = 0; i < jsn.length; i++) {
                    var option = document.createElement("option");
                    option.id = jsn[i];
                    option.value = jsn[i];
                    option.text = jsn[i];
                    select.appendChild(option);
                }
                select.style.cursor = "auto";
                select.disabled = false;
            } else {
                for (i = 0; i < select.length; i++) {
                    select.length = 1;
                }
                select.style.cursor = "not-allowed";
                select.disabled = true;
            }
        },
        error: function(err, ioargs) {
            alert("Error on loading cities");
        }
    });
}

document.addEventListener("change", function(x) {
            // console.log("something triggered change event listener");
//             console.log(x);
			if(x.target && x.target.className.indexOf("dTable-s-selection") != -1) {
				var oldQuantity = x.target.attributes[6].name === "data-oq" ? parseInt(x.target.attributes[6].value) : undefined;
				var quantity = parseInt(x.target.value);
				var mainPrice = x.target.attributes[1].name === "data-mp" ? parseInt(x.target.attributes[1].value) : undefined;
				if(!isNaN(mainPrice) && !isNaN(quantity) && !isNaN(oldQuantity)) {
					//assigning length in a variable(if length is the same for each iteration) is interestingly faster than normal for loop.
					for(var i = 0, len = tourOptionalServicesPrice.length; i < len; i++) {
						if(mainPrice == tourOptionalServicesPrice[i]) {
							var increaseTotalPrice = document.querySelector(".tour-reservation-total .ta_treservation-total");
				        	var totalPriceValue = parseInt(increaseTotalPrice.innerHTML);
				        	if(!isNaN(totalPriceValue) && !isNaN(oldQuantity)) {
				        		totalPriceValue -= (oldQuantity * mainPrice);
				        		totalPriceValue += (quantity * mainPrice);				        			
				        		x.target.attributes[6].value = parseInt(quantity);
				        		increaseTotalPrice.innerHTML = totalPriceValue;
				        	} else {
				        		alerting();
			    				return;
				        	}
						}
					}
				} else {
					alerting();
    				return;
				}
			}
	
        	if(x.target && x.target.id === "tour_qty1"){
        		var val = parseInt(x.target.value);
        		t = document.querySelector(".table-summary .ta_treservation-total");
        		i = parseInt(document.getElementById("tpp").value);
        		j = document.querySelector(".table-summary .totalquantity-user");
        		k = document.getElementById("qty1_table");
        		var collection = document.getElementsByClassName("dTable-s-selection");
        		var servicesSum = 0;
        		if(isNaN(val) || isNaN(i)) {
        			alerting();
        			return;
        		}
        		if(collection.length > 0) {
            		var cl = [];
            		for(var a = 0, len = collection.length; a < len; a++) {
            			var mainPrice = parseInt(collection[a].getAttribute("data-mp"));
            			var quantity = parseInt(collection[a].value);
            			cl.push(parseInt(mainPrice * quantity));
            		}
            		servicesSum = cl.reduce((q, w) => Math.round(q) + Math.round(w), 0);
        		}
        		if(val > tourMaxClients) {
        			k.innerHTML = parseInt(tourMaxClients);
        			x.target.value = parseInt(tourMaxClients);
        			t.innerHTML = (i * parseInt(tourMaxClients)) + (Math.round(servicesSum));
        			j.innerHTML = parseInt(tourMaxClients);
        			return;
        		}
        		else if (val < 1) {
        			k.innerHTML = parseInt(1);
        			x.target.value = parseInt(1);
        			t.innerHTML = (i * parseInt(1)) + (servicesSum);
        			j.innerHTML = parseInt(1);
        			return;
        		}
        		k.innerHTML = val;
        		t.innerHTML = (i * val) + (servicesSum);
        		j.innerHTML = val;
        	}
        	
        	if(x.target && x.target.id === "tour_qty2") {
        		var val = x.target.value;
        		if(val > tourMaxClients) x.target.value = parseInt(tourMaxClients);
        		else if (val < 0) {
        			x.target.value = parseInt(0);
        		}
        		document.getElementById("qty2_table").innerHTML = x.target.value;
        		alert("Not implemented");
        		return;
        	}
             
             if(x.target && x.target.id.indexOf("cbox-excursion_") !== -1) {
            	 document.getElementById("excursion_row_"+x.target.id.split("_")[1]).style.cssText = x.target.checked ? "font-weight:bold;background:#dff0d8; color:#3c763d;" : ""; 
             }
             
             if(x.target && x.target.id.indexOf("cbox-event_") !== -1) {
            	 document.getElementById("event_row_"+x.target.id.split("_")[1]).style.cssText = x.target.checked ? "outline: outset; font-weight:bold;background:#dff0d8; color:#3c763d;" : ""; 
             }

            if (x.target && x.target.id === "ta_qkw") {
                loadTourCities(x.target.value);
            }

            if (x.target && x.target.id === "card_type") {
                var ct = document.getElementById("card_type");
                var cardType = ct.options[ct.selectedIndex]
                    .getAttribute("value");
                if (cardType === "" || cardType === null) {
                    document.getElementById("cvc_image").style.display = "none";
                    document.getElementById("cvc_image").style.visibility = "hidden";
                    document.getElementById("cvc_img").setAttribute(
                        "alt", "");
                    document.getElementById("description").innerHTML = "";
                    return;
                } else {
                    if (cardType === "americanexpress") {
                        document.getElementById("cvc_img").src = "../resources/pix/4d-americanExpress-cvc.png";
                        document.getElementById("description").innerHTML = "You can find the CVC code on the back of your credit card. It's the last 4 digits printed on the signature strip.";
                        document.getElementById("cvc_image").style.display = "block";
                        document.getElementById("cvc_image").style.visibility = "visible";
                        return;
                    }
                    if (cardType === "visa" || cardType === "mastercard" ||
                        cardType === "dinersclub" ||
                        cardType === "discover") {
                        document.getElementById("cvc_img").src = "../resources/pix/3d-visa-master-discover-cvc.png";
                        document.getElementById("description").innerHTML = "You can find the CVC code on the back of your credit card. It's the last 3 digits printed on the signature strip.";
                        document.getElementById("cvc_image").style.display = "block";
                        document.getElementById("cvc_image").style.visibility = "visible";
                        return;
                    }
                }
            }

            if(x.target&&"cc_showhide"===x.target.id){var setType=document.getElementById("card_number"),getType=document.getElementById("card_number").getAttribute("type");"password"===getType?setType.setAttribute("type","text"):setType.setAttribute("type","password")}
            if(x.target&&"cvc_showhide"===x.target.id){var setType=document.getElementById("cvc_code"),getType=document.getElementById("cvc_code").getAttribute("type");"password"===getType?setType.setAttribute("type","text"):setType.setAttribute("type","password")}

            if (x.target && x.target.id === "get_in_touch") {
                var dropdown = document.getElementById("get_in_touch");
                var phoneNumber = document
                    .querySelector(".booker-detail-third .phone-number");
                var input = document.getElementById("phonenumber");
                var inputNumber = input.value;
                if (x.target.value === "phone") {
                    input.disabled = false;
                    phoneNumber.style.display = "";
                    phoneNumber.style.visibility = "visible";
                    var removeText = document
                        .getElementById("git_email");
                    removeText.parentNode.removeChild(removeText);
                    // setField.innerHTML = "<label id=lblphonenumber
                    // required='' for='phonenumber'
                    // class='form-field-label'>" +
                    // "Please enter your phone number with country
                    // code&nbsp;" +
                    // "<strong class='red-star'>*</strong>" +
                    // "</label>" +
                    // "<input type='text' id='phonenumber'
                    // name='phonenumber' class='form-field-input'
                    // value='' size='20'>" +
                    // "<span class='question-mark' title='Your phone
                    // number is needed by the property to validate your
                    // booking.'>?</span>";
                }
                if (x.target.value === "email") {
                    phoneNumber.style.display = "none";
                    phoneNumber.style.visibility = "hidden";
                    input.disabled = true;
                    if (!document.getElementById("git_email")) {
                        var setText = document
                            .querySelector(".get-in-touch");
                        setText.innerHTML += "<span id='git_email' style='display: inline-block;'>We'll send this email address to the property: " +
                            clientObject[0].email;
                    }
                }
            }

            if (x.target && x.target.id === "scts") {
                if (x.target.value === "Select") {
                    x.target.style.backgroundPosition = "7px 5px";
                }
                if (x.target.value === "americanexpress") {
                    x.target.style.backgroundPosition = "7px -155px";
                }
                if (x.target.value === "visa") {
                    x.target.style.backgroundPosition = "7px -115px";
                }
                if (x.target.value === "mastercard") {
                    x.target.style.backgroundPosition = "7px -35px";
                }
                if (x.target.value === "dinersclub") {
                    x.target.style.backgroundPosition = "7px -235px";
                }
                if (x.target.value === "maestro") {
                    x.target.style.backgroundPosition = "7px -75px";
                }
                if (x.target.value === "discover") {
                    x.target.style.backgroundPosition = "7px -195px";
                }
            }
        });

function isValidCreditCard(type, ccnum) {
    if (type == "visa") {
        // Visa: length 16, prefix 4, dashes optional.
        var re = /^4\d{3}-?\d{4}-?\d{4}-?\d{4}$/;
    } else if (type == "mastercard") {
        // Mastercard: length 16, prefix 51-55, dashes optional.
        var re = /^5[1-5]\d{2}-?\d{4}-?\d{4}-?\d{4}$/;
    } else if (type == "discover") {
        // Discover: length 16, prefix 6011, dashes optional.
        var re = /^6011-?\d{4}-?\d{4}-?\d{4}$/;
    } else if (type == "americanexpress") {
        // American Express: length 15, prefix 34 or 37.
        var re = /^3[4,7]\d{13}$/;
    } else if (type == "dinersclub") {
        // Diners: length 14, prefix 30, 36, or 38.
        var re = /^3[0,6,8]\d{12}$/;
    }
    if (!re.test(ccnum)) {
        console.log("invalid input");
        var setError = document
            .querySelector("#cCc__mysettings__cCc .card-table .alert");
        if (setError.classList.contains("alert-info") &&
            !setError.classList.contains("alert-danger")) {
            setError.classList.remove("alert-info");
        }
        setError.className += " alert-danger";
        setError.innerHTML = "<strong>Error!</strong> type and entered credit card do not match.";
        setError.style.display = "inline-block";
        setError.scrollIntoView();
        return false;
    }
    // Remove all dashes for the checksum checks to eliminate negative numbers
    ccnum = ccnum.split("-").join("");
    // Checksum ("Mod 10")
    // Add even digits in even length strings or odd digits in odd length
    // strings.
    // It's called Luhn ALgorithm.
    // Start from right side of the number block, check digit and go left.
    // Double every other number. If doubled, Numbers are two digits, Then add
    // them up.
    var checksum = 0;
    for (var i = (2 - (ccnum.length % 2)); i <= ccnum.length; i += 2) {
        checksum += parseInt(ccnum.charAt(i - 1));
    }
    // Analyze odd digits in even length strings or even digits in odd length
    // strings.
    for (var i = (ccnum.length % 2) + 1; i < ccnum.length; i += 2) {
        var digit = parseInt(ccnum.charAt(i - 1)) * 2;
        if (digit < 10) {
            checksum += digit;
        } else {
            checksum += (digit - 9);
        }
    }
    if ((checksum % 10) == 0) {
        console.log("ok");
        return true;
    } else {
        console.log("false");
        var setError = document
            .querySelector("#cCc__mysettings__cCc .card-table .alert");
        if (setError.classList.contains("alert-info") &&
            !setError.classList.contains("alert-danger")) {
            setError.classList.remove("alert-info");
        }
        setError.className = "alert-danger alert";
        setError.innerHTML = "<strong>Error!</strong> Entered card number is invalid for selected card type.";
        setError.style.display = "inline-block";
        setError.scrollIntoView();
        return false;
    }
}

function validatePhoneNumber(phone) {
    var regex = /^\+(?:[0-9] ?){5,14}[0-9]$/;
    if (regex.test(phone)) {
        document.getElementById("mn_error").style.display = "none";
        return true;
    } else {
        document.getElementById("mn_error").style.display = "inline-block";
        return false;
    }
}

document.addEventListener("click", function(x) {
	var isOkay = true;
            // console.log("something triggered click event listener");
	
			if(x.target && x.target.className.indexOf("tresb") !== -1) {
				var frmTour = document.getElementById("form_tour") || document.querySelector(".ta-container form");
				if(document.getElementById("tart").value == undefined) {
					isOkay = false;
					alert.style.display = "block";
					alert.innerHTML = "Please select a room.";
					x.preventDefault();
					return;
				}
					x.preventDefault();
					var data = {
							evt: [],
							exc: []
					}
//					if(clientObject) data["client"] = clientObject;
					var exc = {}, evt = {}, room = {};
					var alert = document.querySelector("#form_tour .alert");
					for(var i = 0, len = frmTour.length; i < len; i++) {
						if(frmTour[i].name === "tour_reservation_quantity") {
							if(parseInt(frmTour[i].value) && parseInt(frmTour[i].value) > 0) {
								data["tourQuantity"] = frmTour[i].value;
							} else {
								isOkay = false;
								alert.style.display = "block";
								alert.innerHTML = "Unknown quantity!";
								x.preventDefault();
								return;
							}
						}
						if(frmTour[i].name === "tourId") {
							data["tourId"] = frmTour[i].value;
						}
						if(frmTour[i].name === "tart") {
							var split = frmTour[i].value.split("__");
							if(split.length > 1) {
								//tart value is accommodationId__roomTypeId. It contains 2 values when spliting it.
								//if length after splitting is > 1, do the process. else show error.
								room["accId"] = split[0];
								room["roomTypeId"] = split[1];
								data["room"] = room;
							} else {
								isOkay = false;
								alert.style.display = "block";
								alert.innerHTML = "Please select a room.";
								x.preventDefault();
								return;
							}
						} 
						if(frmTour[i].name === "exc") {
							exc = { 
								id: frmTour[i].getAttribute("data-related"),
								qty: frmTour[i].value
							};
							data.exc.push(exc);
						}
						if(frmTour[i].name === "evt") {
							evt = {
									id: frmTour[i].getAttribute("data-related"),
									qty: frmTour[i].value
							}
							data.evt.push(evt);
						}
					}
					if(isOkay === true) {
						alert.style.display = "none";
						alert.innerHTML = "";
						$.ajax({
							headers: {
								Accept: "application/json; charset=utf-8",
						        "Content-Type": "application/json; charset=utf-8"
							},
							type: "POST",
							url: windowLocationS + "/saveTReservation",
							data: JSON.stringify(data),
							contntType: "application/json;charset=utf-8",
							beforeSend: function(xhr) {
								console.log("beforeSend: ", xhr);
								console.log("sending the json: ", JSON.stringify(data));
							},
							success: function(data) {
								console.log("success: ", data);
							},
							error: function(jqXHR, textStatus, errorThrown) {
								console.log("error: ");
								console.log("jqXHR", jqXHR);
								console.log("textStatus", textStatus);
								console.log("errorThrown", errorThrown);
							}
						});
					}
			}
	
        	if(x.target && x.target.id.indexOf("cbox-event_") != -1 && pathAction === "tour") {
        		var increaseTotalPrice = document.querySelector(".tour-reservation-total .ta_treservation-total");
        		var totalPriceValue = parseInt(increaseTotalPrice.innerHTML);
        		tourTableDiv = document.getElementById("event_table");
        		tourTableDivValue = parseInt(tourTableDiv.innerHTML);
        		var targetName = x.target.name != "" ? x.target.name : null;
        		var mp = parseInt(x.target.attributes[0].value);
        		var idOfEvent = x.target.attributes[1].name === "data-ei48" &&  x.target.attributes[1].value != "" ? x.target.attributes[1].value : null;
        		i = x.target.attributes[2].name === "data-en" && x.target.attributes[2].value != "" ? x.target.attributes[2].value : null;
        		if(!isNaN(totalPriceValue) && !isNaN(mp) && !isNaN(tourTableDivValue) && idOfEvent != null && i != null && targetName != null) {
        			if(x.target.checked === true) {
            			increaseTotalPrice.innerHTML = totalPriceValue + Math.round(mp);
            			tourTableDiv.innerHTML = tourTableDivValue + parseInt(1);
            			cboxEventArray.push(idOfEvent);
            			tourOptionalServicesPrice.push(Math.round(mp));
						var createContent = document.createElement("div");
						createContent.setAttribute("class", "table-row dynamicTable devtT1792");
						createContent.setAttribute("data-_q3evt", targetName);
						var createColumn = document.createElement("div");
						createColumn.setAttribute("class", "table-col removeBorder");
						createColumn.innerHTML = i;
						createContent.appendChild(createColumn);
						createColumn = document.createElement("div");
						createColumn.setAttribute("class", "removeBorder table-col text-right");
	            		var sB = document.createElement("select");
	            		sB.setAttribute("data-twhom", "Evt");
	            		sB.setAttribute("data-mp", mp);
	            		sB.setAttribute("class", "dTable-s-selection");
	            		sB.setAttribute("data-related", idOfEvent);
//	            		sB.name = idOfEvent+ "_selectquantity";
	            		sB.name = "evt";
	            		sB.id = idOfEvent +"Evt";
	            		sB.setAttribute("data-oq", parseInt(1));
	            		for(j = 1; j <= tourMaxClients; j++) {
	            			k = document.createElement("option");
	            			k.value = j;
	            			k.innerHTML = j;
	            			sB.appendChild(k);
	            		}
	            		createColumn.appendChild(sB);
	            		createContent.appendChild(createColumn);
	            		k = document.getElementById("event-dyn");
	            		k.parentNode.insertBefore(createContent, k.nextSibling);
            		} else {
            			var getQuantityOfSelectedService = document.getElementById(idOfEvent+"Evt");
        				var getQValue = getQuantityOfSelectedService.value; 
            			increaseTotalPrice.innerHTML = totalPriceValue - (getQValue * Math.round(mp));
            			tourTableDiv.innerHTML = tourTableDivValue - parseInt(1);
            			i = cboxEventArray.indexOf(idOfEvent);
            			j = tourOptionalServicesPrice.indexOf(mp);
            			if(i > -1) cboxEventArray.splice(i, 1);
            			if(j > -1) tourOptionalServicesPrice.splice(j, 1);
            			k = document.getElementsByClassName("devtT1792");
	        			[].forEach.call(k, function(el){
	        				j = el.getAttribute("data-_q3evt");
	        				if(j == targetName) {
	        					el.parentNode.removeChild(el);
	        				}
	        			});
            			
            		}
            		document.getElementById("sEvt").value = cboxEventArray;
        		} else {
        			x.target.checked = false;
    				alerting();
    				return;
        		}
        		if(!isNaN(parseInt(tourTableDiv.innerHTML)) && parseInt(tourTableDiv.innerHTML) > 0) {
    				document.querySelector(".events-summary").className += " blink";
    			} else {
    				document.querySelector(".events-summary").classList.remove("blink");
    			}
        	}
        	
        	if(x.target && x.target.id.indexOf("rBtn_rt_") != -1 && pathAction === "tour") {
        		tourTableDiv = document.querySelector(".accommodation-room-type-summary .room-selection");
        		tourTableDivValue = x.target.attributes[0].value;
        		tourTableDiv.innerHTML = tourTableDivValue;
        		document.getElementById("tart").value = x.target.attributes[1].value;
        	}
        	
        	if(x.target && x.target.id.indexOf("cbox-excursion_") != -1 && pathAction === "tour") {
        		var increaseTotalPrice = document.querySelector(".tour-reservation-total .ta_treservation-total");
        		var totalPriceValue = parseInt(increaseTotalPrice.innerHTML);
        		tourTableDiv = document.getElementById("excursion_table");
        		tourTableDivValue = parseInt(tourTableDiv.innerHTML);
        		var targetName = x.target.name != "" ? x.target.name : null;
        		var mp = parseInt(x.target.attributes[0].value);
        		var idOfExcursion = x.target.attributes[1].name === "data-ei48" &&  x.target.attributes[1].value != "" ? x.target.attributes[1].value : null;
        		i = x.target.attributes[2].name === "data-en" && x.target.attributes[2].value != "" ? x.target.attributes[2].value : null;
        		if(!isNaN(totalPriceValue) && !isNaN(mp) && !isNaN(tourTableDivValue) && idOfExcursion != null && i != null && targetName != null) {
        			if(x.target.checked === true) {
            			increaseTotalPrice.innerHTML = totalPriceValue + Math.round(mp);
            			tourTableDiv.innerHTML = tourTableDivValue + parseInt(1);
            			cboxExcursionArray.push(idOfExcursion);
            			tourOptionalServicesPrice.push(Math.round(mp));
						var createContent = document.createElement("div");
						createContent.setAttribute("class", "table-row dynamicTable dexT1792");
						createContent.setAttribute("data-_q3ef", targetName);
						var createColumn = document.createElement("div");
						createColumn.setAttribute("class", "table-col removeBorder");
						createColumn.innerHTML = i;
						createContent.appendChild(createColumn);
						createColumn = document.createElement("div");
						createColumn.setAttribute("class", "removeBorder table-col text-right");
	            		var sB = document.createElement("select");
	            		sB.setAttribute("data-twhom", "Exc");
	            		sB.setAttribute("data-mp", mp);
	            		sB.setAttribute("class", "dTable-s-selection");
	            		sB.setAttribute("data-related", idOfExcursion);
//	            		sB.name = idOfExcursion + "_selectquantity";
	            		sB.name = "exc";
	            		sB.id = idOfExcursion +"Ex";
	            		sB.setAttribute("data-oq", parseInt(1));
	            		for(j = 1; j <= tourMaxClients; j++) {
	            			k = document.createElement("option");
	            			k.value = j;
	            			k.innerHTML = j;
	            			sB.appendChild(k);
	            		}
	            		createColumn.appendChild(sB);
	            		createContent.appendChild(createColumn);
	            		k = document.getElementById("excursion-dyn");
	            		k.parentNode.insertBefore(createContent, k.nextSibling);
        			} else {
        				var getQuantityOfSelectedService = document.getElementById(idOfExcursion+"Ex");
        				var getQValue = getQuantityOfSelectedService.value; 
	        			increaseTotalPrice.innerHTML = totalPriceValue - (getQValue * Math.round(mp));
	        			tourTableDiv.innerHTML = tourTableDivValue - parseInt(1);
	        			i = cboxExcursionArray.indexOf(idOfExcursion);
	        			j = tourOptionalServicesPrice.indexOf(mp);
	        			if(i > -1) cboxExcursionArray.splice(i, 1);
	        			if(j > -1) tourOptionalServicesPrice.splice(j, 1);
	        			k = document.getElementsByClassName("dexT1792");
	        			[].forEach.call(k, function(el){
	        				j = el.getAttribute("data-_q3ef");
	        				if(j == targetName) {
	        					el.parentNode.removeChild(el);
	        				}
	        			});
	        		}
        			document.getElementById("sExc").value = cboxExcursionArray;
        		} else {
    				x.target.checked = false;
    				alerting();
    				return;
    			}
//        		if(!isNaN(parseInt(tourTableDiv.innerHTML)) && parseInt(tourTableDiv.innerHTML) > 0) {
//    				document.querySelector(".excursions-summary").className += " blink";
//    			} else {
//    				document.querySelector(".excursions-summary").classList.remove("blink");
//    			}
        	}
        	
        	if(x.target && (x.target.className.indexOf("button_inc") != -1)) {
        		operation = x.target.attributes[1].value === "inc" ? inc : dec;
        			clousureForTourQuantity(operation, x.target.attributes[0].value);
        	}
        	
        	if(x.target && x.target.className.indexOf("accordion") != -1) {
        		var acc = document.getElementsByClassName("accordion");
        		for (i = 0; i < acc.length; i++) {
       			  acc[i].onclick = function() {
       				  this.classList.toggle("active");
        		    var panel = this.nextElementSibling;
        		    if (panel.style.maxHeight){
        		    	panel.style.maxHeight = null;
        		    } else {
        		    	panel.style.maxHeight = panel.scrollHeight + "px";
        		    } 
        		  }
        		}
        	}
        	
        	if(x.target && (x.target.className.indexOf("excursions-modal") != -1) || x.target.className.indexOf("excursions-modal-close") != -1) {
           	 Array.from(document.querySelectorAll(".excursions-modal")).forEach(function(val) {
           	        val.style.display = 'none';
           	});
           	 document.body.classList.remove("modalOpened");
            }
        	
        	if(pathAction === "hotel" && x.target && x.target.localName === "a" && x.target.className.indexOf("roomtypepu") != -1) {
        		for(i = 0; i < x.target.attributes.length; i++) {
        			if(x.target.attributes[i].name == "data-artpup") {
        				var str = x.target.attributes[i].nodeValue;
        				loadAccommodationRoomTypePopup(str);
        			}
        		}
        	}
             
             if(x.target && x.target.localName === "a" && x.target.parentNode.nodeName === "H5") {
            	 if(x.target.attributes[1].name === "data-touracc") {
            		 var id = x.target.attributes[1].nodeValue;
            		 setTourAccommodationModal(id);
            	 }
             }
             
             if(x.target && (x.target.className.indexOf("tour-accommodation-modal") != -1) || x.target.className.indexOf("ta-modal-close") != -1) {
            	 Array.from(document.querySelectorAll(".tour-accommodation-modal")).forEach(function(val) {
            	        val.style.display = 'none';
            	});
            	 document.body.classList.remove("modalOpened");
             }

            if (x.target && x.target.id === "qkw")
                catForTags = null;

            if (x.target && x.target.hash === "#accommodationInfo") {
                if (document
                    .querySelectorAll("#accommodationInfo .nav-tabs li").length > 1) {
                    if (isDone === true)
                        return;
                    var getFirstLi = document
                        .querySelector("#accommodationInfo .nav-tabs").firstChild;
                    getFirstLi.setAttribute("class", "active");
                    var getFirstContent = document
                        .querySelector("#accommodationInfo .inside-pane-disable-left_right .tab-content").firstChild;
                    getFirstContent.className += " active";
                    isDone = true;
                }
            }

            if (x.target &&
                (x.target.htmlFor === "cb_nodate" || x.target.id === "cb_nodate")) {
                if (x.target.checked === false) {
                    document.getElementById("ta_checkin").disabed = false;
                    document.getElementById("ta_checkout").disabled = false;
                } else {
                    document.getElementById("ta_checkin").disabed = true;
                    document.getElementById("ta_checkout").disabled = true;
                }
            }

            if (x.target &&
                x.target.className.indexOf("lf_forgot-password") != -1) {
                var loginForm = document
                    .querySelector("#modal_body .form");
                loginForm.style.display = "none";
                loginForm.style.visibility = "hidden";
                loginForm.className += " hide";
                // loginForm.classList.remove("hide");
                var body = document.getElementById("modal_body");
                var forgotPasswordForm = document.createElement("form");
                forgotPasswordForm.action = windowLocationS +
                    "/forgetpassword";
                forgotPasswordForm.method = "POST";
                body.appendChild(forgotPasswordForm);
                var ei = document.createElement("input");
                ei.setAttribute("class", "sa");
                ei.type = "email";
                ei.name = ei.id = "username";
                forgotPasswordForm.appendChild(ei);
                var btn = document.createElement("input");
                btn.type = "button";
                btn.id = "btn_fp";
                forgotPasswordForm.appendChild(btn);
            }

            if (x.target && x.target.id === "passwordreset" || x.target &&
                x.target.className.indexOf("pr-g2b") != -1) {
                document.getElementById("cpassword_spinner").display = "";
                $
                    .ajax({
                        type: "POST",
                        url: windowLocationS + "/forgetpassword",
                        cache: false,
                        data: "username=" +
                            clientObject[0].username,
                        success: function(success) {
                            document
                                .getElementById("cpassword_spinner").display = "none";
                            // spinner.parentNode.removeChild(spinner);
                            $("#success-alert").html(success);
                            $("#success-alert").addClass(
                                "alert-popup");
                            $("#success-alert").show();
                            setTimeout(function() {
                                $("#success-alert").hide();
                            }, 5000);
                        },
                        error: function(error) {
                            document
                                .getElementById("cpassword_spinner").display = "none";
                            // spinner.parentNode.removeChild(spinner);
                            $("#danger-alert")
                                .html(
                                    "Something went wrong. Please try again!");
                            $("#danger-alert").addClass(
                                "alert-popup");
                            $("#danger-alert").show();
                            setTimeout(function() {
                                $("#danger-alert").hide();
                            }, 5000);
                        }
                    });
            }

            if (x.target &&
                x.target.className.indexOf("hp-c-acc") !== -1) {
                var checkin = $.datepicker.formatDate("yy-mm-dd", $(
                        ".check-checkin").datepicker("getDate")) ||
                    new Date();
                var checkout = $.datepicker.formatDate("yy-mm-dd", $(
                        ".check-checkout").datepicker("getDate")) ||
                    new Date(new Date().getTime() + 24 * 60 * 60 *
                        1000);
                window.location.href = x.target.attributes[1].nodeValue +
                    "&checkin=" + checkin + "&checkout=" +
                    checkout;
            }

            if (x.target &&
                x.target.className.indexOf("hp-c-ta") !== -1) {
                window.location.href = x.target.attributes[1].nodeValue;
            }

            if (x.target &&
                x.target.className.indexOf("sbmt-tasbtn") !== -1) {
                var form = document
                    .getElementById("ta_search_form-form");
                for (i = 0; i < form.length; i++) {
                    if (form[i].value === "") {
                        form[i].disabled = true;
                    }
                    if (form[i].id === "ta_checkin" &&
                        form[i].value !== "") {
                        var checkin = $.datepicker.formatDate(
                            "yy-mm-dd", $(".ta-check-checkin")
                            .datepicker("getDate"));
                        // form[i].value = checkin;
                        document.getElementById("h_ta_checkin").value = checkin;
                    }
                    if (form[i].id === "ta_checkout" &&
                        form[i].value !== "") {
                        var checkout = $.datepicker.formatDate(
                            "yy-mm-dd", $(".ta-check-checkout")
                            .datepicker("getDate"));
                        // form[i].value = checkout;
                        document.getElementById("h_ta_checkout").value = checkout;
                    }
                }
            }

            if (x.target &&
                x.target.className.indexOf("sbmt-accsbtn") !== -1) {
                // get keyword value
                var keyword = document.forms["search_form-form"]["qkw"].value;
                if (keyword == "") {
                    // send nothing if keyword is not entered.
                    x.preventDefault();
                    $('.hidden-err-message').popover('show');
                    return;
                }
                // get form tag
                var form = document.getElementById("search_form-form");
                for (i = 0; i < form.length; i++) {
                    if (form[i].id === "h_cat" &&
                        (catForTags !== undefined || catForTags !== "")) {
                        document.getElementById("h_cat").value = catForTags;
                    }
                    // if a value in form empty, or null
                    if (form[i].value === "") {
                        // set it as disabled, so it will not be sent in
                        // get form.
                        form[i].disabled = true;
                    }
                    if (form[i].id === "qkw" && form[i].value !== "") {
                        form[i].value = form[i].value.split(",")[0];
                    }
                    if (form[i].id === "checkin" &&
                        form[i].value !== "") {
                        var checkin = $.datepicker.formatDate(
                            "yy-mm-dd", $(".check-checkin")
                            .datepicker("getDate"));
                        document.getElementById("h_checkin").value = checkin;
                    }
                    if (form[i].id === "checkout" &&
                        form[i].value !== "") {
                        var checkout = $.datepicker.formatDate(
                            "yy-mm-dd", $(".check-checkout")
                            .datepicker("getDate"));
                        document.getElementById("h_checkout").value = checkout;
                    }
                    if (form[i].id === "select_room") {
                        var r = form[i];
                        var rr = r.options[r.selectedIndex].value;
                        if (rr > 0)
                            form[i].value = rr;
                        else
                            form[i].disabled = true;
                    }
                    if (form[i].id === "select_adult") {
                        var a = form[i];
                        var aa = a.options[a.selectedIndex].value;
                        if (aa > 0)
                            form[i].value = aa;
                        else
                            form[i].disabled = true;
                    }
                    if (form[i].id === "select_child") {
                        var c = form[i];
                        var cc = c.options[c.selectedIndex].value;
                        if (cc > 0)
                            form[i].value = cc;
                        else
                            form[i].disabled = true;
                    }
                }
                form.action = catForTags != undefined ||
                    catForTags != null ? windowLocation +
                    "/search" : form.action;
            }

            if (x.target &&
                x.target.className.indexOf("noavailability-btn") !== -1) {
                // get keyword value
                var keyword = document.forms["search_form-form"]["qkw"].value ||
                    document.querySelector(".hname .hn").innerHTML;
                if (keyword == "") {
                    // send nothing if keyword is not entered.
                    // x.preventDefault();
                    alert("Please enter a keyword");
                    // return;
                }
                // get form tag for no availability checkin-checkout
                var form = document
                    .getElementById("noAvailability_roomCheck");
                for (i = 0; i < form.length; i++) {
                    // if a value in form empty, or null
                    if (form[i].value === "") {
                        // set it as disabled, so it will not be sent in
                        // get form.
                        form[i].disabled = true;
                    }
                    if (form[i].id === "noavailability_date-checkin") {
                        var checkin = $.datepicker.formatDate(
                            "yy-mm-dd", $(".na-d_checkin")
                            .datepicker("getDate"));
                        form[i].value = checkin;
                    }
                    if (form[i].id === "noavailability_date-checkout") {
                        var checkout = $.datepicker.formatDate(
                            "yy-mm-dd", $(".na-d_checkout")
                            .datepicker("getDate"));
                        form[i].value = checkout;
                    }
                }
            }

            if (x.target && x.target.id === "ch_chbx") {
                var isChecked = document.getElementById("ch_chbx");
                if (isChecked.checked) {
                    document.getElementById("card_holdername")
                        .setAttribute("disabled", "true");
                    if (clientObject[0].holderName !== "")
                        document.getElementById("card_holdername").value = clientObject[0].holderName;
                } else
                    document.getElementById("card_holdername")
                    .removeAttribute("disabled");
            }

            if (x.target && x.target.id === "btnCompleteBooking") {
                localStorage.setItem("fo3e", "false");
                if (localStorage.getItem("fo3e") == true)
                    return;
                var ct = document.getElementById("booker_country");
                var countryDropdown = ct.options[ct.selectedIndex].value;

                var phoneNumber = document
                    .getElementById("phonenumber").value;

                if (countryDropdown === "" || phoneNumber === "") {
                    x.preventDefault();
                    alert("Please check the form once again!");
                    if (countryDropdown === "")
                        ct.style.backgroundColor = "rgba(255,0,0,0.5)";
                    else
                        ct.style.backgroundColor = "white";
                    if (phoneNumber === "")
                        document.getElementById("phonenumber").style.backgroundColor = "rgba(255,0,0,0.5)";
                    document.getElementById("phonenumber").style.backgroundColor = "white";
                    return;
                } else {
                    if (countryDropdown !== "")
                        ct.style.backgroundColor = "white";
                    if (phoneNumber !== "")
                        document.getElementById("phonenumber").style.backgroundColor = "white";
                }

                var cct = document.getElementById("card_type");
                var cardType = cct.options[cct.selectedIndex].value;

                if (cardType === "" || cardType === null) {
                    x.preventDefault();
                    alert("Please select your card type!");
                    return;
                } else {
                    var getCreditCard = document
                        .getElementById("card_number").value;
                    isValidCreditCard(cardType, getCreditCard);
                }

                var cvc = document.getElementById("cvc_code");
                if (cvc.value === "") {
                    x.preventDefault();
                    alert("Please enter CVC code");
                    cvc.style.backgroundColor = "rgba(255,0,0,0.5)";
                    return;
                } else
                    cvc.style.backgroundColor = "white";

                if (cvc.value.length > 4 || cvc.value.length < 3) {
                    x.preventDefault();
                    alert("CVC number must be 3 or 4 depending on your credit card type.");
                    cvc.style.backgroundColor = "rgba(255,0,0,0.5)";
                    return;
                } else
                    cvc.style.backgroundColor = "white";

                // set reservation json
                var AccommodationReservationWrapper = {
                    bookingPayment: new Object(),
                    booking: new Object(),
                    bookedRooms: [],
                    bookedClient: new Object(),
                    client: new Object(),
//                    accCustomId: id,
                    //type accommodationBean column from booking table was changed back to BigInteger in production db.
                    //That's why reservation wasn't working...
                    //TODO: change it here when starting to use UUID
                    accCustomId: localStorage.getItem("4ce_q30xdekex_q"),
                    rooms: []
                };
                var bookingPayment = AccommodationReservationWrapper.bookingPayment;
                var booking = AccommodationReservationWrapper.booking;
                var bookedRooms = AccommodationReservationWrapper.bookedRooms;
                var bookedClient = AccommodationReservationWrapper.bookedClient;
                var client = AccommodationReservationWrapper.client;
                //type accommodationBean column from booking table was changed back to BigInteger in production db.
                //That's why reservation wasn't working...
                //TODO: change it here when starting to use UUID
//                var accCustomId = AccommodationReservationWrapper.accCustomId;
                var accCustomId = localStorage.getItem("4ce_q30xdekex_q");
                var roomList = AccommodationReservationWrapper.rooms;

                // total price
                bookingPayment.totalOutputPrice = reservationTotalPrice;

                var c = document.getElementById("booker_country");
                var bookerCountry = c.options[c.selectedIndex].value;

                var homeAddress = document
                    .getElementById("homeaddress");

                var phoneNumber = document
                    .getElementById("phonenumber");

                // var emailAddress =
                // document.getElementById("emailaddress");
                // saveReservation.emailAddress = emailAddress.value;

                var co = document.getElementById("get_in_touch");
                var contactChoice = co.options[co.selectedIndex].value;

                // var bookerInfo = {
                // "country" : bookerCountry,
                // "homeAddress" : homeAddress.value,
                // "phoneNumber" : phoneNumber.value,
                // "contactChoice" : contactChoice,
                // "name" : clientObject[0].name,
                // "id" : clientObject[0].id
                // };

                var cardHolderName = document
                    .getElementById("card_holdername");
                var t = document.getElementById("card_type");
                var cardType = t.options[t.selectedIndex].value;
                var cardNumber = document.getElementById("card_number");
                var e = document.getElementById("exp_date_month");
                var expMonth = e.options[e.selectedIndex].value;
                var e = document.getElementById("exp_date_year");
                var expYear = e.options[e.selectedIndex].value;
                var cvcCode = document.getElementById("cvc_code");
                // var cardInfo = { //We cannot save any card information due to pikpay rule.
                // "holderName": cardHolderName.value,
                // "cardType" : cardType,
                // "cardNumber" : cardNumber.value,
                // "expMonth" : expMonth,
                // "expYear" : expYear
                // }; //asdasd
                var inputs = document
                    .querySelectorAll(".room-information-box .book-room .guest-full-name .mandatory");
                var optionalInputs = document
                    .querySelectorAll(".room-information-box .book-room .guest-full-name .gn-optional");
                for (i = 0; i < inputs.length; i++) {
                    var rooms = {
                        accommodation: localStorage
                            .getItem("4ce_q30xdekex_q"),
                        room: inputs[i].getAttribute("data-roomid"),
                        clients: inputs[i].value
                    };
                    bookedRooms.push(rooms);
                    // var clientNames = inputs[i].value;
                    // var setOptionalGuestName =
                    // bookedRooms[i].clients;
                    // for(j = 0; j < optionalInputs.length; j++) {
                    // clientNames += ", " + optionalInputs[j].value;
                    // }
                    // setOptionalGuestName = clientNames;
                    var riba = {
                        id: inputs[i].getAttribute("data-roomid")
                    }
                    roomList.push(riba);
                    // roomList a.k.a rooms
                }

                // reservation checkin-checkout & total length of stay.
                var checkIn = getURLParameter("checkin") ||
                    new Date().toISOString().slice(0, 10);
                booking.arrivalDate = checkIn;
                var checkOut = getURLParameter("checkout") ||
                    new Date(new Date().getTime() + 24 * 60 * 60 *
                        1000).toISOString().slice(0, 10);
                booking.departureDate = checkOut;
                // set city tax
                bookingPayment.totalTax = reservationCityTax;
                // set VAT price
                bookingPayment.totalVat = reservationVATPrice;
                // set total "room" price
                bookingPayment.roomOutputPrice = reservationTotalRoomPrice;

                if (clientObject && clientObject.length == 1) {
                    bookedClient.accommodation = localStorage
                        .getItem("4ce_q30xdekex_q");
                    // since we get clientObject as List from backend,
                    // we need to redesign the json.
                    var slm = JSON.stringify(clientObject);
                    // we simply remove [{ and }] which make the json as
                    // array list.
                    slm = slm.replace("[{", "{");
                    slm = slm.replace("}]", "}");
                    // After removing them, the json looks like an
                    // object.
                    slm = JSON.parse(slm);
                    // clone properties from clientObject to reservation
                    // object
                    for (var o in slm)
                        client[o] = slm[o];
                }

                // bookedRooms accommodation was set to BigInteger from
                // String due to using BigInteger ID instead of UUID.
                // bookedClient accommodation as well.
                document.getElementById("btnCompleteBooking")
                    .setAttribute("disabled", true);
                $.ajax({
                        type: "POST",
                        url: windowLocationS + "/saveReservation",
                        cache: false,
                        data: JSON
                            .stringify(AccommodationReservationWrapper),
                        // dataType:"json", // no need to initialize
                        // due to sending data with .stringify()
                        // and we get the data as string in backend
                        // gives 415 unsupported media type if
                        // contentType is not initialized.
                        contentType: "application/json;charset=UTF-8",
                        complete: function(data) {
                            console.debug(data);
                        },
                        success: function(data) {
                            console.debug("After success");
                            console.debug(data);
                            console.log("RESERVED !");
                            document.getElementById(
                                    "btnCompleteBooking")
                                .setAttribute("disabled", true);
                            document.getElementById(
                                    "btnCompleteBooking")
                                .removeAttribute("id");
                            localStorage.setItem("fo3e", "true");
                        }
                    });
            }

            if (x.target && x.target.id === "btnBook") {
                var bt = document.getElementById("booker_title");
                var bookerTitle = bt.options[bt.selectedIndex].value;

                var firstname = document.forms["bookingForm"]["firstname"].value;
                // var lastname =
                // document.forms["bookingForm"]["lastname"].value;
                var emailaddress = document.forms["bookingForm"]["emailaddress"].value;
                var emailaddressconfirmation = document.forms["bookingForm"]["emailaddressconfirmation"].value;

                var guestName = document
                    .querySelectorAll(".guest-full-name .mandatory");
                var pass = true;
                for (var w = 0; w < guestName.length; w++) {
                    if (guestName[w].value === "") {
                        x.preventDefault();
                        pass = false;
                        guestName[w].style.backgroundColor = "rgba(255,0,0,0.5)";
                        alert("Please enter guest name for " +
                            guestName[w]
                            .getAttribute("data-forroom"));
                        window.scrollTo(0, 0);
                    } else
                        guestName[w].style.backgroundColor = "white";
                }
                if (!pass)
                    return;

                if (emailaddressconfirmation !== emailaddress) {
                    x.preventDefault();
                    alert("Confirmation email address must match your email address!");
                    document.getElementById("emailaddress").style.backgroundColor = "rgba(255,0,0,0.5)";
                    document.getElementById("emailaddressconfirmation").style.backgroundColor = "rgba(255,0,0,0.5)";
                    return;
                } else {
                    document.getElementById("emailaddress").style.backgroundColor = "white";
                    document.getElementById("emailaddressconfirmation").style.backgroundColor = "white";
                }
                // || lastname === ""
                if (firstname === "" || emailaddress === "" ||
                    emailaddressconfirmation === "" ||
                    !(validateEmail(emailaddress)) ||
                    !(validateEmail(emailaddressconfirmation))) {
                    x.preventDefault();
                    if (firstname === "")
                        document.getElementById("firstname").style.backgroundColor = "rgba(255,0,0,0.5)";
                    else
                        document.getElementById("firstname").style.backgroundColor = "white";
                    // if(lastname === "")
                    // document.getElementById("lastname").style.backgroundColor
                    // = "rgba(255,0,0,0.5)"; else
                    // document.getElementById("lastname").style.backgroundColor
                    // = "white";
                    if (emailaddress === "")
                        document.getElementById("emailaddress").style.backgroundColor = "rgba(255,0,0,0.2)";
                    if (emailaddressconfirmation === "")
                        document
                        .getElementById("emailaddressconfirmation").style.backgroundColor = "rgba(255,0,0,0.2)";
                    alert("Please check your details!");
                    return;
                }
                window.scrollTo(0, 0);
                third();
            }

            if (x.target && x.target.className === "card-table__edit") {
                var getDiv = document
                    .getElementById("cCc__mysettings__cCc");
                getDiv.innerHTML = "<div class='card-table mysettings-table__row nb'>" +
                    "<div class='alert'></div>" +
                    "<form method=POST data-validation='true' data-secure='true' data-form='mysettings'>" +
                    "<div class='mysettings-form'>" +
                    "<div class='card-table'>" +
                    "<div class='width-fields'>" +
                    "<div class='s-content-item s-content-item__vertical card-table'>" +
                    "<div class='s-content-item--label s-content-item--label__vertical'>Credit card type</div>" +
                    "<div class='s-content-item--content s-content-item--content__vertical'>" +
                    "<div class='my-settings-input'>" +
                    "<div class='mysettings-input--input'>" +
                    "<select name=scts data-saver='ctype' id=scts class='input-mysettings__cc settings__cc-type'>" +
                    "<option>Select</option>" +
                    "<option value='americanexpress'>American Express</option>" +
                    "<option value='visa'>Visa</option>" +
                    "<option value='mastercard'>MasterCard</option>" +
                    "<option value='dinersclub'>Diners Club</option>" +
                    "<option value='discover'>Discover</option>" +
                    "<option value='maestro'>Maestro</option>" +
                    "</select>" +
                    "</div>" +
                    "</div>" +
                    "</div>" +
                    "</div>" +
                    "<div class='s-content-item s-content-item__vertical card-table'>" +
                    "<div class='s-content-item--label s-content-item--label__vertical'>Credit card number</div>" +
                    "<div class='s-content-item--content s-content-item--content__vertical'>" +
                    "<div class='my-settings-input'>" +
                    "<div class='mysettings-input--input width-fields'>" +
                    "<input data-saver='creditc' class='input-mysettings__cc' maxlength='19' id='cc_number' name='cc_number'>" +
                    "</div>" +
                    "<div id='creditc_loader' class='mysettings-input--loader'>" +
                    "<i id='creditc_spin' class='fa fa-spin fa-refresh'></i>" +
                    "<span id='creditc_saving'>Saving...</span>" +
                    "<span id='creditc_saved'>Saved</span>" +
                    "</div>" +
                    "<div id='creditc_error' class='mysettings-input--error'>Required</div>" +
                    "</div>" +
                    "</div>" +
                    "</div>" +
                    "<div class='s-content-item s-content-item__vertical card-table'>" +
                    "<div class='s-content-item--label s-content-item--label__vertical'>Cardholder's name</div>" +
                    "<div class='s-content-item--content s-content-item--content__vertical'>" +
                    "<div class='my-settings-input'>" +
                    "<div class='mysettings-input--input width-fields'>" +
                    "<input data-saver='creditch' class='input-mysettings__cc' maxlength='100' id='cch_number' name='cch_number'>" +
                    "</div>" +
                    "<div id='creditch_loader' class='mysettings-input--loader'>" +
                    "<i id='cch_spin' class='fa fa-spin fa-refresh'></i>" +
                    "<span id='creditch_saving'>Saving...</span>" +
                    "<span id='creditch_saved'>Saved</span>" +
                    "</div>" +
                    "<div id='creditch_error' class='mysettings-input--error'>Required</div>" +
                    "</div>" +
                    "</div>" +
                    "</div>" +
                    "<div class='s-content-item s-content-item__vertical card-table'>" +
                    "<div class='s-content-item--label s-content-item--label__vertical'>Expiration date</div>" +
                    "<div class='s-content-item--content s-content-item--content__vertical'>" +
                    "<div class='my-settings-input'>" +
                    "<div class='mysettings-input--input'>" +
                    "<select data-saver='expDate' id='ccem' name='ccem' class='input-mysettings__cc'>" +
                    "<option>Month</option>" +
                    "<option value='01'>01 - Jan</option>" +
                    "<option value='02'>02 - Feb</option>" +
                    "<option value='03'>03 - Mar</option>" +
                    "<option value='04'>04 - Apr</option>" +
                    "<option value='05'>05 - May</option>" +
                    "<option value='06'>06 - Jun</option>" +
                    "<option value='07'>07 - Jul</option>" +
                    "<option value='08'>08 - Aug</option>" +
                    "<option value='09'>09 - Sep</option>" +
                    "<option value='10'>10 - Oct</option>" +
                    "<option value='11'>11 - Nov</option>" +
                    "<option value='12'>12 - Dec</option>" +
                    "</select>" +
                    "<select data-saver='expDate' id='ccey' name='ccey' class='input-mysettings__cc ml'>" +
                    "</select>" +
                    "</div>" +
                    "</div>" +
                    "</div>" +
                    "</div>" +
                    "</div>" +
                    "</div>" +
                    "<div class='card-table marg-top'>" +
                    "<div class='ar-width'>" +
                    "<button id='cc_btnsave' type='button' class='btn-mysettings ccbutton same-size'>Save change</button>" +
                    "<button id='cc_btncancel' type='button' class='btn-mysettings same-size'>Cancel</button>" +
                    "</div>" +
                    "</div>" +
                    "</div>" +
                    "</form>" +
                    "</div>";

                var setYear = document.getElementById("ccey");
                setYear.innerHTML = "<option>Year</option>";
                var startYear = new Date().getFullYear();
                for (var i = startYear; i <= startYear + 30; i++) {
                    setYear.innerHTML += "<option value=" + i + ">" + i +
                        "</option>";
                }

                document.getElementById("s_body_content").style.minHeight = "1740px";
                document.getElementById("s_body_content__area").style.minHeight = "1740px";
                document.getElementById("s_body_content__area").style.height = "1740px";

                var getNumber = document
                    .querySelector(".mysettings-table__content .ccnumber");
                var getHolderName = document
                    .querySelector(".mysettings-table__content .ccholder");
                var getExpD = document
                    .querySelector(".mysettings-table__content .ccexpd");
                var getType = document
                    .querySelector(".mysettings-table__content input[type=hidden]");

                var setNumber = document.getElementById("cc_number");
                setNumber.value = getNumber.innerHTML;
                var setHolderName = document
                    .getElementById("cch_number");
                setHolderName.value = getHolderName.innerHTML;
                var setType = document.getElementById("scts");
                for (i = 0; i < setType.options.length; i++) {
                    if (setType.options[i].value == getType.value)
                        setType.selectedIndex = i;
                }

                var ss = getExpD.innerHTML;
                var setMonth = document.getElementById("ccem");
                for (i = 0; i < setMonth.options.length; i++) {
                    if (setMonth.options[i].value == ss.substring(0, ss
                            .indexOf("/")))
                        setMonth.selectedIndex = i;
                }
                var setYear = document.getElementById("ccey");
                for (i = 0; i < setYear.options.length; i++) {
                    if (setYear.options[i].value == ss.substring(ss
                            .indexOf("/") + 1))
                        setYear.selectedIndex = i;
                }

                var removeTableContent = document
                    .querySelector(".settings-container-content .mysettings-table .mysettings-table__content");
                removeTableContent.parentNode
                    .removeChild(removeTableContent);
                var hideHeader = document
                    .querySelector(".settings-container-content .mysettings-table .mysettings-table__head");
                hideHeader.style.display = "none";

                return false;

            }
            if (x.target && x.target.id === "cc_btnsave") {
                var username = clientObject[0].username;
                var updateUsername = {
                    callback: function(callback) {
                    	clientObject[0] = callback;
                    },
                    errorHandler: function(errMessage, exception) {
                        console.debug(errMessage);
                        console.debug(exception);
                        loader.style.display = "none";
                        main_error.style.display = "inline-block";
                    }
                };
                GOLOBALServices.findClientByUsername(username,
                    updateUsername);

                Array.prototype.slice.call(document.querySelectorAll(".input-mysettings__cc")).forEach( function(element) {
                            var dataSaver = element
                                .getAttribute("data-saver");
                            var loader = document
                                .getElementById(dataSaver +
                                    "_loader");
                            var spin = document
                                .getElementById(dataSaver +
                                    "_spin");
                            var saving = document
                                .getElementById(dataSaver +
                                    "_saving");
                            var saved = document
                                .getElementById(dataSaver +
                                    "_saved");
                            var error = document
                                .getElementById(dataSaver +
                                    "_error");
                            var c = document
                                .getElementById("scts");
                            var cct = c.options[c.selectedIndex]
                                .getAttribute("value");
                            var ccn = document
                                .getElementById("cc_number");
                            var hn = document
                                .getElementById("cch_number");
                            var m = document
                                .getElementById("ccem");
                            var getMonth = m.options[m.selectedIndex]
                                .getAttribute("value");
                            var y = document
                                .getElementById("ccey");
                            var getYear = y.options[y.selectedIndex]
                                .getAttribute("value");

                            var showError = document
                                .querySelector(".nb .alert");
                            if (cct === null ||
                                getMonth === null ||
                                getYear === null ||
                                c.value === "" ||
                                hn.value === "") {

                                if (showError.classList
                                    .contains("alert-info") &&
                                    !showError.classList
                                    .contains("alert-danger")) {
                                    showError.classList
                                        .remove("alert-info");
                                }
                                showError.className = "alert-danger alert";
                                showError.innerHTML = "<strong>Error!</strong> Please fill empty blanks in order to save your credit card.";
                                showError.style.display = "inline-block";
                                showError.scrollIntoView();
                                return false;
                            }

                            if (element.id === "cc_number" &&
                                element.name === "cc_number") {
//                                obj = clientObject[0];
                                var c = document
                                    .getElementById("scts");
                                var cct = c.options[c.selectedIndex]
                                    .getAttribute("value");
                                if (isValidCreditCard(cct,
                                        ccn.value)) {
                                	clientObject[0].bankName = cct;
                                	clientObject[0].creditCardNo = ccn.value;
                                	clientObject[0].holderName = document
                                        .getElementById("cch_number").value;
                                    var m = document
                                        .getElementById("ccem");
                                    var getMonth = m.options[m.selectedIndex]
                                        .getAttribute("value");
                                    var y = document
                                        .getElementById("ccey");
                                    var getYear = y.options[y.selectedIndex]
                                        .getAttribute("value");
                                    clientObject[0].expDate = getMonth +
                                        "/" + getYear;
                                    // showError.style.display =
                                    // "none";
                                    if (showError.classList
                                        .contains("alert-danger") &&
                                        !showError.classList
                                        .contains("alert-info")) {
                                        showError.classList
                                            .remove("alert-danger");
                                    }
                                    GOLOBALServices.updateClient(clientObject[0]);
                                    showError.className = "alert-info alert";
                                    showError.innerHTML = "<strong>Validation!</strong> Your credit card will be available to use within a minute.";
                                    showError.style.display = "inline-block";
                                    showError.scrollIntoView();
                                    document.getElementById(
                                            "cc_btnsave")
                                        .setAttribute(
                                            "disabled",
                                            true);
                                } else {
                                    showError.style.display = "inline-block";
                                }
                            }
                        });
            }

            if (x.target &&
                x.target.ownerDocument.activeElement.id === "cc_btncancel") {
                var getDiv = document
                    .getElementById("cCc__mysettings__cCc");
                var removeDiv = document
                    .querySelector("#cCc__mysettings__cCc .card-table");
                removeDiv.parentNode.removeChild(removeDiv);
                getDiv.innerHTML = "<div id=_3frv class=card-table>" +
                    "<button id=btnShowTable class='btn-mysettings ccbutton fs'>" +
                    " <span>" +
                    "<i class='fa fa-plus-square'></i>" +
                    "<span class=mysettings-btnaddc-text>Add a credit card</span>" +
                    "</span></button></div>";
                window.location.hash = "#credit_card";
                // hash allows us to set div id in url.

                document.getElementById("s_body_content").style.minHeight = "1350px";
                document.getElementById("s_body_content__area").style.minHeight = "1350px";
                document.getElementById("s_body_content__area").style.height = "1350px";

            }

            if (x.target &&
                x.target.ownerDocument.activeElement.id === "btnShowTable") {
                var removeBtn = document.getElementById("_3frv");
                removeBtn.parentNode.removeChild(removeBtn);

                var getDiv = document
                    .getElementById("cCc__mysettings__cCc");
                getDiv.innerHTML = "<div class='card-table mysettings-table__row nb'>" +
                    "<div class='alert alert-danger'>" +
                    "<strong>Error!</strong> Please fill empty blanks in order to save your credit card.</div>" +
                    "<form method=POST data-validation='true' data-secure='true' data-form='mysettings'>" +
                    "<div class='mysettings-form'>" +
                    "<div class='card-table'>" +
                    "<div class='width-fields'>" +
                    "<div class='s-content-item s-content-item__vertical card-table'>" +
                    "<div class='s-content-item--label s-content-item--label__vertical'>Credit card type</div>" +
                    "<div class='s-content-item--content s-content-item--content__vertical'>" +
                    "<div class='my-settings-input'>" +
                    "<div class='mysettings-input--input'>" +
                    "<select name=scts data-saver='ctype' id=scts class='input-mysettings__cc settings__cc-type'>" +
                    "<option>Select</option>" +
                    "<option value='americanexpress'>American Express</option>" +
                    "<option value='visa'>Visa</option>" +
                    "<option value='mastercard'>MasterCard</option>" +
                    "<option value='dinersclub'>Diners Club</option>" +
                    "<option value='discover'>Discover</option>" +
                    "<option value='maestro'>Maestro</option>" +
                    "</select>" +
                    "</div>" +
                    "</div>" +
                    "</div>" +
                    "</div>" +
                    "<div class='s-content-item s-content-item__vertical card-table'>" +
                    "<div class='s-content-item--label s-content-item--label__vertical'>Credit card number</div>" +
                    "<div class='s-content-item--content s-content-item--content__vertical'>" +
                    "<div class='my-settings-input'>" +
                    "<div class='mysettings-input--input width-fields'>" +
                    "<input data-saver='creditc' class='input-mysettings__cc' maxlength='19' id='cc_number' name='cc_number'>" +
                    "</div>" +
                    "<div id='creditc_loader' class='mysettings-input--loader'>" +
                    "<i id='creditc_spin' class='fa fa-spin fa-refresh'></i>" +
                    "<span id='creditc_saving'>Saving...</span>" +
                    "<span id='creditc_saved'>Saved</span>" +
                    "</div>" +
                    "<div id='creditc_error' class='mysettings-input--error'>Required</div>" +
                    "</div>" +
                    "</div>" +
                    "</div>" +
                    "<div class='s-content-item s-content-item__vertical card-table'>" +
                    "<div class='s-content-item--label s-content-item--label__vertical'>Cardholder's name</div>" +
                    "<div class='s-content-item--content s-content-item--content__vertical'>" +
                    "<div class='my-settings-input'>" +
                    "<div class='mysettings-input--input width-fields'>" +
                    "<input data-saver='creditch' class='input-mysettings__cc' maxlength='100' id='cch_number' name='cch_number'>" +
                    "</div>" +
                    "<div id='creditch_loader' class='mysettings-input--loader'>" +
                    "<i id='cch_spin' class='fa fa-spin fa-refresh'></i>" +
                    "<span id='creditch_saving'>Saving...</span>" +
                    "<span id='creditch_saved'>Saved</span>" +
                    "</div>" +
                    "<div id='creditch_error' class='mysettings-input--error'>Required</div>" +
                    "</div>" +
                    "</div>" +
                    "</div>" +
                    "<div class='s-content-item s-content-item__vertical card-table'>" +
                    "<div class='s-content-item--label s-content-item--label__vertical'>Expiration date</div>" +
                    "<div class='s-content-item--content s-content-item--content__vertical'>" +
                    "<div class='my-settings-input'>" +
                    "<div class='mysettings-input--input'>" +
                    "<select data-saver='expDate' id='ccem' name='ccem' class='input-mysettings__cc'>" +
                    "<option>Month</option>" +
                    "<option value='01'>01 - Jan</option>" +
                    "<option value='02'>02 - Feb</option>" +
                    "<option value='03'>03 - Mar</option>" +
                    "<option value='04'>04 - Apr</option>" +
                    "<option value='05'>05 - May</option>" +
                    "<option value='06'>06 - Jun</option>" +
                    "<option value='07'>07 - Jul</option>" +
                    "<option value='08'>08 - Aug</option>" +
                    "<option value='09'>09 - Sep</option>" +
                    "<option value='10'>10 - Oct</option>" +
                    "<option value='11'>11 - Nov</option>" +
                    "<option value='12'>12 - Dec</option>" +
                    "</select>" +
                    "<select data-saver='expDate' id='ccey' name='ccey' class='input-mysettings__cc ml'>" +
                    "</select>" +
                    "</div>" +
                    "</div>" +
                    "</div>" +
                    "</div>" +
                    "</div>" +
                    "</div>" +
                    "<div class='card-table marg-top'>" +
                    "<div class='ar-width'>" +
                    "<button id='cc_btnsave' type='button' class='btn-mysettings ccbutton same-size'>Save change</button>" +
                    "<button id='cc_btncancel' type='button' class='btn-mysettings same-size'>Cancel</button>" +
                    "</div>" +
                    "</div>" +
                    "</div>" +
                    "</form>" +
                    "</div>";

                var setYear = document.getElementById("ccey");
                setYear.innerHTML = "<option>Year</option>";
                var startYear = new Date().getFullYear();
                for (var i = startYear; i <= startYear + 30; i++) {
                    setYear.innerHTML += "<option value=" + i + ">" + i +
                        "</option>";
                }

                document.getElementById("s_body_content").style.minHeight = "1740px";
                document.getElementById("s_body_content__area").style.minHeight = "1740px";
                document.getElementById("s_body_content__area").style.height = "1740px";
                return false;
            }
            
            if(x.target.className.indexOf("popover") == -1 && x.target.className.indexOf("canActivatePopover") == -1) {
           	 $('.popover').each(function () {
    		        // hide any open popovers when the anywhere else in the body is clicked
    		            $(this).popover('hide');
    		    });
            }
        });

if (pathAction === "msearch") {
    var qkw = getURLParameter("qkw");
    checkin = getURLParameter("checkin");
    checkout = getURLParameter("checkout");
    var url = windowLocationS + "/listSearch?qkw=" + qkw;
    if (checkin != null) {
        url += "&checkin=" + checkin;
    }
    if (checkin != null && checkout != null) {
        url += "&checkout=" + checkout;
    }

    // call query with ajax
    dojo
        .xhrGet({
            url: url,
            load: function(data, ioargs) {
                var jsn = JSON.parse(data);
                console.debug(jsn);
                var resultNumber = 0;
                var mainDiv = document.getElementById("pw");
                if (jsn.country) {
                    if (jsn.country[0][0] != 0 || jsn.country[0][1] != null) {
                        resultNumber = resultNumber +
                            parseInt(jsn.country.length);
                        var searchCountry = document.createElement("div");
                        searchCountry.id = "search_country";
                        searchCountry.setAttribute("class",
                            "multisearch country");
                        mainDiv.appendChild(searchCountry);
                        var multiSearchHeader = document
                            .createElement("div");
                        multiSearchHeader.setAttribute("class",
                            "multisearch-header");
                        searchCountry.appendChild(multiSearchHeader);
                        var searchHeaderTitle = document
                            .createElement("span");
                        searchHeaderTitle.setAttribute("class",
                            "header-title");
                        searchHeaderTitle.innerHTML = jsn.country.length > 1 ? "Countries" :
                            "Country";
                        multiSearchHeader.appendChild(searchHeaderTitle);
                        var countryWrapper = document.createElement("div");
                        countryWrapper.setAttribute("class",
                            "countryWrapper");
                        mainDiv.appendChild(countryWrapper);
                        for (i = 0; i < jsn.country.length; i++) {
                            var url = windowLocation + "/search?qkw=" +
                                jsn.country[i][1] + "&cat=country";
                            var checkin = getURLParameter("checkin");
                            var checkout = getURLParameter("checkout");
                            if (checkin != null)
                                url += "&checkin=" + checkin;
                            if (checkin != null && checkout != null)
                                url += "&checkout=" + checkout;
                            var room = getURLParameter("select_room");
                            if (room != null)
                                url += "&select_room=" + room;
                            var adult = getURLParameter("select_adult");
                            if (adult != null)
                                url += "&select_adult=" + adult;
                            var child = getURLParameter("select_child");
                            if (child != null)
                                url += "&select_child=" + child;
                            var ah = document.createElement("a");
                            ah.href = url;
                            countryWrapper.appendChild(ah);
                            var itemClass = document.createElement("div");
                            var propertyCount = jsn.country[i][0] > 1 ? "(" +
                                jsn.country[i][0] +
                                "&nbsp;properties)" : "(" +
                                jsn.country[i][0] + "&nbsp;property)";
                            itemClass
                                .setAttribute("class",
                                    "msb_precious item search-item clearfix");
                            itemClass.setAttribute("data-redirect",
                                "tr_s-form");
                            itemClass.setAttribute("data-url", url);
                            ah.appendChild(itemClass);
                            var itemImage = document.createElement("div");
                            itemImage.setAttribute("class",
                                "msb_precious item-image ip");
                            itemImage.setAttribute("data-redirect",
                                "tr_s-form");
                            itemImage.setAttribute("data-url", url);
                            itemClass.appendChild(itemImage);
                            var imageHref = document.createElement("a");
                            imageHref.setAttribute("data-redirect",
                                "tr_s-form");
                            imageHref.href = url;
                            itemImage.appendChild(imageHref);
                            var itemName = document.createElement("div");
                            itemName.setAttribute("class",
                                "msb_precious item-name ip");
                            itemName.setAttribute("data-redirect",
                                "tr_s-form");
                            itemName.setAttribute("data-url", url);
                            itemClass.appendChild(itemName);
                            var destName = document.createElement("div");
                            destName.setAttribute("class",
                                "msb_precious destination-name");
                            destName.setAttribute("data-redirect",
                                "tr_s-form");
                            destName.setAttribute("data-url", url);
                            var destHref = document.createElement("a");
                            destHref.setAttribute("class",
                                "msb_precious dest-name-a");
                            destHref.setAttribute("data-redirect",
                                "tr_s-form");
                            destHref.href = url;
                            destHref.innerHTML = jsn.country[i][1];
                            destName.appendChild(destHref);
                            itemName.appendChild(destName);
                            var pAddress = document.createElement("p");
                            pAddress
                                .setAttribute("class",
                                    "msb_precious address-with-country-city");
                            pAddress.setAttribute("data-redirect",
                                "tr_s-form");
                            pAddress.setAttribute("data-url", url);
                            pAddress.innerHTML = "<div class='flag flag-" +
                                jsn.country[i][2] + "'></div>&nbsp;" +
                                jsn.country[i][3] + "&nbsp;" +
                                jsn.country[i][1] + "&nbsp;" +
                                propertyCount;
                            itemName.appendChild(pAddress);
                            var btnRight = document.createElement("div");
                            btnRight.setAttribute("class", "btn-right");
                            var button = document.createElement("button");
                            button.setAttribute("class",
                                "msb_precious btn-acb");
                            button.setAttribute("data-redirect",
                                "tr_s-form");
                            button.setAttribute("data-url", url);
                            button.innerHTML = "Show properties";
                            btnRight.appendChild(button);
                            itemClass.appendChild(btnRight);
                        }
                    }
                }
                if (jsn.cities) {
                    if (jsn.cities[0][0] != 0 || jsn.cities[0][1] != null) {
                        resultNumber = resultNumber +
                            parseInt(jsn.cities.length);
                        var searchCity = document.createElement("div");
                        searchCity.id = "search_city";
                        searchCity
                            .setAttribute("class", "multisearch city");
                        mainDiv.appendChild(searchCity);
                        var multiSearchHeader = document
                            .createElement("div");
                        multiSearchHeader.setAttribute("class",
                            "multisearch-header");
                        searchCity.appendChild(multiSearchHeader);
                        var searchHeaderTitle = document
                            .createElement("span");
                        searchHeaderTitle.setAttribute("class",
                            "header-title");
                        searchHeaderTitle.innerHTML = jsn.cities.length > 1 ? "Cities" :
                            "City";
                        multiSearchHeader.appendChild(searchHeaderTitle);
                        var cityWrapper = document.createElement("div");
                        cityWrapper.setAttribute("class", "cityWrapper");
                        mainDiv.appendChild(cityWrapper);
                        for (i = 0; i < jsn.cities.length; i++) {
                            var propertyCount = jsn.cities[i][0] > 1 ? "(" +
                                jsn.cities[i][0] +
                                "&nbsp;properties)" : "(" +
                                jsn.cities[i][0] + "&nbsp;property)";
                            var url = windowLocation + "/search?qkw=" +
                                jsn.properties[i][4] + "&cat=city";
                            var checkin = getURLParameter("checkin");
                            var checkout = getURLParameter("checkout");
                            if (checkin != null)
                                url += "&checkin=" + checkin;
                            if (checkin != null && checkout != null)
                                url += "&checkout=" + checkout;
                            var room = getURLParameter("select_room");
                            if (room != null)
                                url += "&select_room=" + room;
                            var adult = getURLParameter("select_adult");
                            if (adult != null)
                                url += "&select_adult=" + adult;
                            var child = getURLParameter("select_child");
                            if (child != null)
                                url += "&select_child=" + child;
                            var ah = document.createElement("a");
                            ah.href = url;
                            cityWrapper.appendChild(ah);
                            var itemClass = document.createElement("div");
                            itemClass
                                .setAttribute("class",
                                    "msb_precious item search-item clearfix");
                            itemClass.setAttribute("data-redirect",
                                "tr_s-form");
                            itemClass.setAttribute("data-url", url);
                            ah.appendChild(itemClass);
                            var itemImage = document.createElement("div");
                            itemImage.setAttribute("class",
                                "msb_precious item-image ip");
                            itemImage.setAttribute("data-redirect",
                                "tr_s-form");
                            itemImage.setAttribute("data-url", url);
                            itemClass.appendChild(itemImage);
                            var imageHref = document.createElement("a");
                            imageHref.href = url;
                            itemImage.appendChild(imageHref);
                            var itemName = document.createElement("div");
                            itemName.setAttribute("class",
                                "msb_precious item-name ip");
                            itemName.setAttribute("data-redirect",
                                "tr_s-form");
                            itemName.setAttribute("data-url", url);
                            itemClass.appendChild(itemName);
                            var destName = document.createElement("div");
                            destName.setAttribute("class",
                                "msb_precious destination-name");
                            destName.setAttribute("data-redirect",
                                "tr_s-form");
                            destName.setAttribute("data-url", url);
                            var destHref = document.createElement("a");
                            destHref.setAttribute("class", "dest-name-a");
                            destHref.href = url;
                            destHref.innerHTML = modifyWord(jsn.cities[i][4]);
                            destName.appendChild(destHref);
                            itemName.appendChild(destName);
                            var pAddress = document.createElement("p");
                            pAddress
                                .setAttribute("class",
                                    "msb_precious address-with-country-city");
                            pAddress.setAttribute("data-redirect",
                                "tr_s-form");
                            pAddress.setAttribute("data-url", url);
                            pAddress.innerHTML = "<div class='flag flag-" +
                                jsn.cities[i][2] + "'></div>&nbsp;" +
                                jsn.cities[i][3] + "&nbsp;" +
                                jsn.cities[i][1] + "&nbsp;" +
                                propertyCount;
                            itemName.appendChild(pAddress);
                            var btnRight = document.createElement("div");
                            btnRight.setAttribute("class", "btn-right");
                            var button = document.createElement("button");
                            button.setAttribute("class",
                                "msb_precious btn-acb");
                            button.setAttribute("data-redirect",
                                "tr_s-form");
                            button.setAttribute("data-url", url);
                            button.innerHTML = "Show properties";
                            btnRight.appendChild(button);
                            itemClass.appendChild(btnRight);
                        }
                    }
                }
                if (jsn.properties) {
                    if (jsn.properties[0][0] != 0 ||
                        jsn.properties[0][1] != null) {
                        resultNumber = resultNumber +
                            parseInt(jsn.properties.length);
                        var searchProperty = document.createElement("div");
                        searchProperty.id = "search_property";
                        searchProperty.setAttribute("class",
                            "multisearch property");
                        mainDiv.appendChild(searchProperty);
                        var multiSearchHeader = document
                            .createElement("div");
                        multiSearchHeader.setAttribute("class",
                            "multisearch-header");
                        searchProperty.appendChild(multiSearchHeader);
                        var searchHeaderTitle = document
                            .createElement("span");
                        searchHeaderTitle.setAttribute("class",
                            "header-title");
                        searchHeaderTitle.innerHTML = jsn.properties.length > 1 ? "Properties" :
                            "Property";
                        multiSearchHeader.appendChild(searchHeaderTitle);
                        var propertyWrapper = document.createElement("div");
                        propertyWrapper.setAttribute("class",
                            "propertyWrapper");
                        mainDiv.appendChild(propertyWrapper);
                        for (i = 0; i < jsn.properties.length; i++) {
                            var url = windowLocation + "/search?qkw=" +
                                jsn.properties[i][0] + "&cat=prop";
                            var checkin = getURLParameter("checkin");
                            var checkout = getURLParameter("checkout");
                            if (checkin != null)
                                url += "&checkin=" + checkin;
                            if (checkin != null && checkout != null)
                                url += "&checkout=" + checkout;
                            var room = getURLParameter("select_room");
                            if (room != null)
                                url += "&select_room=" + room;
                            var adult = getURLParameter("select_adult");
                            if (adult != null)
                                url += "&select_adult=" + adult;
                            var child = getURLParameter("select_child");
                            if (child != null)
                                url += "&select_child=" + child;
                            var ah = document.createElement("a");
                            ah.href = url;
                            propertyWrapper.appendChild(ah);
                            var itemClass = document.createElement("div");
                            itemClass
                                .setAttribute("class",
                                    "msb_precious item search-item clearfix");
                            itemClass.setAttribute("data-redirect",
                                "tr_s-form");
                            itemClass.setAttribute("data-url", url);
                            ah.appendChild(itemClass);
                            var itemImage = document.createElement("div");
                            itemImage.setAttribute("class",
                                "msb_precious item-image ip");
                            itemImage.setAttribute("data-redirect",
                                "tr_s-form");
                            itemImage.setAttribute("data-url", url);
                            itemClass.appendChild(itemImage);
                            var imageHref = document.createElement("a");
                            imageHref.href = url;
                            itemImage.appendChild(imageHref);
                            var itemName = document.createElement("div");
                            itemName.setAttribute("class",
                                "msb_precious item-name ip");
                            itemName.setAttribute("data-redirect",
                                "tr_s-form");
                            itemName.setAttribute("data-url", url);
                            itemClass.appendChild(itemName);
                            var destName = document.createElement("div");
                            destName.setAttribute("class",
                                "msb_precious destination-name");
                            destName.setAttribute("data-redirect",
                                "tr_s-form");
                            destName.setAttribute("data-url", url);
                            var destHref = document.createElement("a");
                            destHref.setAttribute("class", "dest-name-a");
                            destHref.href = url;
                            destHref.innerHTML = modifyWord(jsn.properties[i][0]);
                            destName.appendChild(destHref);
                            itemName.appendChild(destName);
                            var pAddress = document.createElement("p");
                            pAddress
                                .setAttribute("class",
                                    "msb_precious address-with-country-property");
                            pAddress.setAttribute("data-redirect",
                                "tr_s-form");
                            pAddress.setAttribute("data-url", url);
                            pAddress.innerHTML = "<div class='flag flag-" +
                                jsn.properties[i][2] +
                                "'></div>&nbsp;" +
                                modifyWord(jsn.properties[i][4]) +
                                ",&nbsp;" + jsn.properties[i][3] +
                                "&nbsp;" + jsn.properties[i][1];
                            itemName.appendChild(pAddress);
                            var btnRight = document.createElement("div");
                            btnRight.setAttribute("class", "btn-right");
                            var button = document.createElement("button");
                            button.setAttribute("class",
                                "msb_precious btn-acb");
                            button.setAttribute("data-redirect",
                                "tr_s-form");
                            button.setAttribute("data-url", url);
                            button.innerHTML = "Show properties";
                            btnRight.appendChild(button);
                            itemClass.appendChild(btnRight);
                        }
                    }
                }
                var setSearchTitle = document
                    .querySelector("#pw .search-title");
                setSearchTitle.innerHTML = resultNumber > 1 ? 'Here are the ' +
                    resultNumber + '  options for "' + qkw + '"' :
                    'Here is the ' + resultNumber + '  option for "' +
                    qkw + '"';

                $("#loading").remove();
                $("#__d17").removeClass("hide");
                $("#footer").removeClass("hide");
            },
            error: function(error) {
                alert("error occured. See console for further information");
                console.error("We've got an error sir!");
                console.error(error);
            }
        });
}

if (pathAction === "tasearch" || pathAction === "tour") {
    var func = function(id, value) {
        if(id) {
        	for (i = 0; i < id.options.length; i++) {
                if (id.options[i].value === value) {
                    id.selectedIndex = i;
                    break;
                }
            }
            if (id.id === "ta_qkw") {
                loadTourCities(id.options[id.selectedIndex].value);
            }
        }
    };
    var country = getURLParameter("ta_qkw");
    country = country == "Bosnia and Hercegovina" || "Bosnia and Herzegovina" ? "bih" :
        country;
    var city = getURLParameter("ta_qc");
    var tourType = getURLParameter("ta_tourtype");
    var taCheckin = getURLParameter("ta_checkin");
    var taCheckout = getURLParameter("ta_checkout");
    var countryD = document.getElementById("ta_qkw");
    var cityD = document.getElementById("ta_qc");
    var tourTypeD = document.getElementById("ta_tourtype");
    var taCheckinD = document.getElementById("ta_checkin");
    var taCheckoutD = document.getElementById("ta_checkout");
    func(countryD, country);
    func(cityD, city);
    func(tourTypeD, tourType);
}

$('body')
    .on(
        'focus',
        '.noavailability-dates',
        function() {
            $(".na-d_checkin").datepicker({
                dateFormat: "D, M d, yy",
                minDate: 0,
                onSelect: function(date) {
                    var date2 = $('.na-d_checkin').datepicker(
                        'getDate');
                    // sets minDate to dateofbirth date + 1
                    date2.setDate(date2.getDate() + 1);
                    $('.na-d_checkout').datepicker('setDate',
                        date2);
                    $('.na-d_checkout').datepicker('option',
                        'minDate', date2);
                    $('.na-d_checkin').datepicker('option',
                        'minDate', 0);
                }
            }).attr("readonly", "readonly").datepicker(
                "setDate",
                $.datepicker.parseDate("yy-mm-dd", checkin));
            $('.na-d_checkout')
                .datepicker({
                    dateFormat: "D, M d, yy",
                    onClose: function() {
                        var dt1 = $('.na-d_checkin')
                            .datepicker('getDate');
                        var dt2 = $('.na-d_checkout')
                            .datepicker('getDate');
                        if (dt2 <= dt1) {
                            var minDate = $(
                                    '.na-d_checkout')
                                .datepicker('option',
                                    'minDate');
                            $('.na-d_checkout').datepicker(
                                'setDate', minDate);
                        }
                    }
                }).attr("readonly", "readonly").datepicker(
                    "setDate",
                    $.datepicker
                    .parseDate("yy-mm-dd", checkout));
        });
var storeLoadedTAIds = [];
var customId; //test purpose
function setTourAccommodationModal(id) {
	if(storeLoadedTAIds.indexOf(id) === -1) {
			storeLoadedTAIds.push(id);
			dojo.xhrGet({
	            url: windowLocationS + "/aftt/" + id,
	            sync: true,
	            load: function(data, ioargs) {
	            	var jsn = JSON.parse(data);
	            	if(jsn.length > 0) {
	            		var id = jsn[0].id;
	            		customId = jsn[0].customId;
	                	console.log("tour accommodation");
	                	console.log(jsn);
	                	document.getElementById("mh_" + id).innerHTML += jsn[0].name;
	                	var setPictures = document.getElementById("picture_" + id);
	                	if(jsn[0].accommodationPics && jsn[0].accommodationPics.length > 0) {
	                		var setJssor1 = document.createElement("div");
	                		setJssor1.id = qei();
	                		setJssor1.setAttribute("class","taP");
	                		var setSlides = document.createElement("div");
	                		setSlides.setAttribute("class", "taP-slides");
	                		setSlides.setAttribute("data-u", "slides");
	    	            	for(i = 0; i < jsn[0].accommodationPics.length; i++) {
	    	            		var picUrl = jsn[0].accommodationPics[i].pic;
	    	            		var setEmptyDiv = document.createElement("div");
	    	            		var setSliderImage = document.createElement("img");
	    	            		setSliderImage.setAttribute("data-u", "image");
	    	            		setSliderImage.src = picUrl;
	    	            		setEmptyDiv.appendChild(setSliderImage);
	    	            		setSlides.appendChild(setEmptyDiv);
	    	            	}
	    	            	setJssor1.appendChild(setSlides);
	    	            	tourAccommodationSliderConfiguration(setJssor1, setPictures);
	                	}
	            	}
	            },
				error: function(error) {
					alert("error occured on loading pictures. See log.");
					console.log(error);
				}
			});
			dojo.xhrGet({
                url: windowLocationS + "/alllist/" + customId,
                load: function(data, ioargs) {
	                var jsn = JSON.parse(data);
	                document.querySelector("#facility_"+id+" .facility-hotel-name").style.display = "inline-block";
	                console.log("lists");
	                console.log(jsn);
	                if (jsn.pet) {
						var petList = document.getElementById("petsList_"+id);
						document.getElementById("pets_"+id).style.display = "block";
						if (jsn.pet[0].petsAllowed === 1) {
							petList.innerHTML += "<li>Pets are allowed to stay</li>";
						} else if (jsn.pet[0].petsAllowed === 2) {
							petList.innerHTML += "<li>Pets are allowed(upon request)</li>";
						} else {
							petList.innerHTML += "<li>Pets are not allowed to stay</li>";
						}
					}
					if (jsn.miscellaneous) {
						var miscellaneousList = document
								.getElementById("miscellaneousList_"+id);
						for (i = 0; i < jsn.miscellaneous.length; i++) {
							miscellaneousList.innerHTML += "<li>"
									+ jsn.miscellaneous[i].optionName + "</li>";
						}
						document.getElementById("miscellaneous_"+id).style.display = "block";
					}
					if (jsn.shop) {
						var shopList = document.getElementById("shopsList_"+id);
						for (i = 0; i < jsn.length; i++) {
							shopList.innerHTML += "<li>" + jsn.shop[i].shopName
									+ "</li>";
						}
						document.getElementById("shops_"+id).style.display = "block";
					}
					if (jsn.businessFacility) {
						var businessFacilityList = document
								.getElementById("businessFacilityList_"+id);
						for (i = 0; i < jsn.businessFacility.length; i++) {
							businessFacilityList.innerHTML += "<li>"
									+ jsn.businessFacility[i].facilityName
									+ "</li>";
						}
						document.getElementById("business_facilities_"+id).style.display = "block";
					}
					if (jsn.cleaningService) {
						var cleaningServiceList = document
								.getElementById("cleaningServiceList_"+id);
						for (i = 0; i < jsn.cleaningService.length; i++) {
							cleaningServiceList.innerHTML += "<li>"
									+ jsn.cleaningService[i].serviceName + "</li>";
						}
						document.getElementById("cleaning_services_"+id).style.display = "block";
					}
					if (jsn.entertainment) {
						var entertainmentList = document
								.getElementById("entertainmentList_"+id);
						for (i = 0; i < jsn.entertainment.length; i++) {
							entertainmentList.innerHTML += "<li>"
									+ jsn.entertainment[i].entertainmentName
									+ "</li>";
						}
						document.getElementById("entertainment_and_family_services_"+id).style.display = "block";
					}
					if (jsn.commonArea) {
						var commonAreaList = document
								.getElementById("commonAreaList_"+id);
						for (i = 0; i < jsn.commonArea.length; i++) {
							commonAreaList.innerHTML += "<li>"
									+ jsn.commonArea[i].areaName + "</li>";
						}
						document.getElementById("common_areas_"+id).style.display = "block";
					}
					if (jsn.frontdeskService) {
						var frontdeskServiceList = document
								.getElementById("frontdeskServiceList_"+id);
						for (i = 0; i < jsn.frontdeskService.length; i++) {
							frontdeskServiceList.innerHTML += "<li>"
									+ jsn.frontdeskService[i].serviceName + "</li>";
						}
						document.getElementById("front_desk_services_"+id).style.display = "block";
					}
					if (jsn.transportation) {
						var transportationList = document
								.getElementById("transportationList_"+id);
						for (i = 0; i < jsn.transportation.length; i++) {
							transportationList.innerHTML += "<li>"
									+ jsn.transportation[i].amenityName + "</li>";
						}
						document.getElementById("transportations_"+id).style.display = "block";
					}
					if (jsn.poolSpa) {
						var poolSpaList = document.getElementById("poolSpaList_"+id);
						for (i = 0; i < jsn.poolSpa.length; i++) {
							poolSpaList.innerHTML += "<li>"
									+ jsn.poolSpa[i].amenityName + "</li>";
						}
						document.getElementById("pool_and_spa_"+id).style.display = "block";
					}
					if (jsn.foodDrink) {
						var foodDrinkList = document
								.getElementById("foodDrinkList_"+id);
						for (i = 0; i < jsn.foodDrink.length; i++) {
							foodDrinkList.innerHTML += "<li>"
									+ jsn.foodDrink[i].amenityName + "</li>";
						}
						document.getElementById("food_and_drink_"+id).style.display = "block";
					}
					if (jsn.activity) {
						var activityList = document.getElementById("activityList_"+id);
						for (i = 0; i < jsn.activity.length; i++) {
							activityList.innerHTML += "<li>"
									+ jsn.activity[i].activityName + "</li>";
						}
						document.getElementById("activities_"+id).style.display = "block";
					}
					if (jsn.staffLanguage) {
						var languageList = document.getElementById("languageList_"+id);
						for (i = 0; i < jsn.staffLanguage.length; i++) {
							languageList.innerHTML += jsn.staffLanguage[i].languageType === language ? "<li style='line-height:0.8;'>" + jsn.staffLanguage[i].languageType + " - <i style='font-weight: bold; font-size: .6em;'>We speak your language!</i></li>" : "<li>" + jsn.staffLanguage[i].languageType + "</li>"; 
						}
						document.getElementById("languages_spoken_"+id).style.display = "block";
					}
					if(jsn.internet) {
						var internetList = document.getElementById("internetList_"+id);
						if (jsn.internet.length > 0) {
							internetList.innerHTML += "<li>Internet(" + jsn.internet[0][2]
									+ ") is available for " + jsn.internet[0][1] + " </li>";
							document.getElementById("internet_"+id).style.display = "block";
						}
					}
                },
                error: function(error) {
	                alert("Error occured on loading facilities. See log");
	                console.log(error);
                }
            });
//		});
	}
	document.getElementById("tamf_" + id).style.display = "block";
	document.body.className += " modalOpened";
}

function tourAccommodationSliderConfiguration(ih, h) {
	ih.innerHTML+="<div data-u='navigator' class='jssorb051' style='position:absolute;bottom:14px;right:12px;' data-autocenter='1' data-scale='0.5' data-scale-bottom='0.75'><div data-u='prototype' class='i' style='width:18px;height:18px;'><svg viewbox='0 0 16000 16000' style='position:absolute;top:0;left:0;width:100%;height:100%;'><circle class='b' cx='8000' cy='8000' r='5800'></circle></svg></div></div><div data-u='arrowleft' class='jssora051' style='width:65px;height:65px;top:0px;left:25px;' data-autocenter='2' data-scale='0.75' data-scale-left='0.75'><svg viewbox='0 0 16000 16000' style='position:absolute;top:0;left:0;width:100%;height:100%;'><polyline class='a' points='11040,1920 4960,8000 11040,14080 '></polyline></svg></div><div data-u='arrowright' class='jssora051' style='width:65px;height:65px;top:0px;right:25px;' data-autocenter='2' data-scale='0.75' data-scale-right='0.75'><svg viewbox='0 0 16000 16000' style='position:absolute;top:0;left:0;width:100%;height:100%;'><polyline class='a' points='4960,1920 11040,8000 4960,14080 '></polyline></svg></div>",h.appendChild(ih);var jssor_1_SlideoTransitions=[[{b:900,d:2e3,x:-379,e:{x:7}}],[{b:900,d:2e3,x:-379,e:{x:7}}],[{b:-1,d:1,o:-1,sX:2,sY:2},{b:0,d:900,x:-171,y:-341,o:1,sX:-2,sY:-2,e:{x:3,y:3,sX:3,sY:3}},{b:900,d:1600,x:-283,o:-1,e:{x:16}}]],jssor_1_options={$AutoPlay:1,$SlideDuration:800,$SlideEasing:$Jease$.$OutQuint,$CaptionSliderOptions:{$Class:$JssorCaptionSlideo$,$Transitions:jssor_1_SlideoTransitions},$ArrowNavigatorOptions:{$Class:$JssorArrowNavigator$},$BulletNavigatorOptions:{$Class:$JssorBulletNavigator$}},jssor_1_slider=new $JssorSlider$(ih.id,jssor_1_options);function ScaleSlider(){var a=jssor_1_slider.$Elmt.parentNode.clientWidth;a?(a=Math.min(a,1920),jssor_1_slider.$ScaleWidth(a)):window.setTimeout(ScaleSlider,30)}ScaleSlider(),$Jssor$.$AddEvent(window,"load",ScaleSlider),$Jssor$.$AddEvent(window,"resize",ScaleSlider),$Jssor$.$AddEvent(window,"orientationchange",ScaleSlider);
	}

document.onkeydown = function(evt) {
	evt = evt || window.event;
	if(evt.keyCode === 27) {
		Array.from(document.getElementsByClassName("enableESC")).forEach(function(el) {
	        el.style.display = el.style.display === "block" ? "none" : "";
		});
	}
}

function tntp() {
	//tntp = tour new total price.
	closureTourDiv = document.getElementById("tour_qty1"); //we only have adults.
	var currentVal = parseInt(closureTourDiv.value);
	if(!isNaN(currentVal) && currentVal < tourMaxClients) {
		i = parseInt(document.getElementById("tpp").value);
		var q = document.querySelector(".table-summary .ta_treservation-total");
		var sum = tourOptionalServicesPrice.reduce((q, w) => Math.round(q) + Math.round(w), 0);
		q.innerHTML = i * currentVal + Math.round(sum);
		
	}
}

function clousureForTourQuantity(f, value){f(value);}


function inc(value) {
	closureTourDiv = document.getElementById("tour_qty"+value);
	var currentVal = parseInt(closureTourDiv.value);
	if(!isNaN(currentVal) && currentVal < tourMaxClients) {
		closureTourDiv.value = currentVal + 1;
		document.getElementById("qty"+value+"_table").innerHTML = currentVal + 1;
		tourTableDiv = document.querySelector(".table-summary .totalquantity-user");
		tourTableDivValue = parseInt(tourTableDiv.innerHTML);
		tourTableDiv.innerHTML = currentVal + 1;
		i = parseInt(document.getElementById("tpp").value);
		var q = document.querySelector(".table-summary .ta_treservation-total");
		var collection = document.getElementsByClassName("dTable-s-selection");
		if(collection.length > 0) {
			var cl = [];
			for(var a = 0, len = collection.length; a < len; a++) {
    			var mainPrice = parseInt(collection[a].getAttribute("data-mp"));
    			var quantity = parseInt(collection[a].value);
    			cl.push(parseInt(mainPrice * quantity));
    		}
			var servicesSum = cl.reduce((q, w) => Math.round(q) + Math.round(w), 0);
			q.innerHTML = i * (currentVal + 1) + Math.round(servicesSum);
		} else {
			q.innerHTML = i * (currentVal + 1);
		}
	}
}

function dec(value) {
	closureTourDiv = document.getElementById("tour_qty"+value);
	if(closureTourDiv) {
		var currentVal = parseInt(closureTourDiv.value);
		if(!isNaN(currentVal) && currentVal > 0) {
			var collection = document.getElementsByClassName("dTable-s-selection");
			var cl = [];
			for(var a = 0, len = collection.length; a < len; a++) {
    			var mainPrice = parseInt(collection[a].getAttribute("data-mp"));
    			var quantity = parseInt(collection[a].value);
    			cl.push(parseInt(mainPrice * quantity));
    		}
			var servicesSum = cl.reduce((q, w) => Math.round(q) + Math.round(w), 0);
			if(closureTourDiv.id === "tour_qty1") {
				if(currentVal - 1 == 0) {
					closureTourDiv.value = parseInt(1);
					document.getElementById("qty"+value+"_table").innerHTML = parseInt(1);
					return;
				}
			}
			closureTourDiv.value = currentVal - 1;
			document.getElementById("qty"+value+"_table").innerHTML = currentVal - 1;
			tourTableDiv = document.querySelector(".table-summary .totalquantity-user");
			tourTableDivValue = parseInt(tourTableDiv.innerHTML);
			tourTableDiv.innerHTML = currentVal - 1;
			i = parseInt(document.getElementById("tpp").value);
			var q = document.querySelector(".table-summary .ta_treservation-total");
			q.innerHTML = i * (currentVal - 1) + Math.round(servicesSum);
		}
	}
}

var hideAllPopovers=function(){$('.popover').each(function(){$(this).popover('hide')})};
function alerting(){return alert("Something went wrong. Page will be reloaded."),void location.reload()}
 
var titles = document.getElementsByClassName("sttip");
window.onmousemove = function (e) {
	var x = (e.clientX + 20) + "px",
		y = (e.clientY + 20) + "px";
	if(titles && $(window).width() > 991) {
    	for (var i = 0; i < titles.length; i++) {
            titles[i].style.top = y;
            titles[i].style.left = x;
        }
    }
};

if(pathActionThird && pathAction === "tour" && pathActionThird === "reservation") {
	var json = document.getElementById("json").value;
	
}