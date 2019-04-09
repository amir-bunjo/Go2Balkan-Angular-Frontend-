var id = document.getElementById("id").value,
    hotelName, windowLocation = localStorage.getItem("frontend"),
    windowLocationS = localStorage.getItem("services"),
    language = "Bosnian",
    userCurrency = "BAM",
    dataHotelCurrencyCode = dataHotelCurrencyCode = "&euro;";

function hpage() {}
dojo.xhrGet({
    url: windowLocationS + "alllist/" + id,
    load: function(a) {
        var b = JSON.parse(a);
        if (b.pet) {
            var c = document.getElementById("pets_policy"),
                d = document.getElementById("petsList");
            document.getElementById("a_rules").style.visibility = "visible", document.getElementById("a_rules").style.display = "table-cell", document.getElementById("rules").style.visibility = "visible", document.getElementById("rules").style.display = "block", document.getElementById("pets_policy").style.display = "block", document.getElementById("pets").style.display = "block", 1 === b.pet[0].petsAllowed ? (c.innerHTML += "<p>Pets are allowed</p>", d.innerHTML += "<li>Pets are allowed to stay</li>") : 2 === b.pet[0].petsAllowed ? (c.innerHTML += "<p>Pets are allowed(upon request).</p>", d.innerHTML += "<li>Pets are allowed(upon request)</li>") : (c.innerHTML += "<p>Pets are not allowed.</p>", d.innerHTML += "<li>Pets are not allowed to stay</li>")
        }
        if (b.cards) {
            var f = document.getElementById("parag_creditCardList"),
                g = document.querySelector(".hname .hn").innerHTML;
            if (0 < b.cards.length)
                for (var h = document.getElementById("card_type"), j = 0; j < b.cards.length; j++) {
                    if ("Visa" === b.cards[j].cardName) {
                        f.innerHTML += "<div title='This property accepts these cards and reserves the right temporarily hold an amound prior to arrival.' class='riba-creditcard-visa-inverted'></div>";
                        var k = document.createElement("option");
                        k.text = "Visa", k.value = "visa", h.appendChild(k)
                    }
                    if ("Maestro" === b.cards[j].cardName) {
                        f.innerHTML += "<div title='This property accepts these cards and reserves the right temporarily hold an amound prior to arrival.' class='riba-creditcard-maestro-inverted'></div>";
                        var k = document.createElement("option");
                        k.text = "Maestro", k.value = "maestro", h.appendChild(k)
                    }
                    if ("American Express" === b.cards[j].cardName) {
                        f.innerHTML += "<div title='This property accepts these cards and reserves the right temporarily hold an amound prior to arrival.' class='riba-creditcard-american-express-inverted'></div>";
                        var k = document.createElement("option");
                        k.text = "American Express", k.value = "americanexpress", h.appendChild(k)
                    }
                    if ("Discover" === b.cards[j].cardName) {
                        f.innerHTML += "<div style='margin-left: 15px; zoom: .8; cursor: help;' title='This property accepts these cards and reserves the right temporarily hold an amound prior to arrival.' class='riba-creditcard-discover'></div>";
                        var k = document.createElement("option");
                        k.text = "Discover", k.value = "discover", h.appendChild(k)
                    }
                    if ("Diners Club" === b.cards[j].cardName) {
                        f.innerHTML += "<div style='margin-left: 15px; zoom: .8; cursor: help;' title='This property accepts these cards and reserves the right temporarily hold an amound prior to arrival.' class='riba-creditcard-diners-club-inverted'></div>";
                        var k = document.createElement("option");
                        k.text = "Diners Club", k.value = "dinersclub", h.appendChild(k)
                    }
                    if ("Euro/Mastercard" === b.cards[j].cardName) {
                        f.innerHTML += "<div style='margin-left: 15px; zoom: .8; cursor: help;' title='This property accepts these cards and reserves the right temporarily hold an amound prior to arrival.' class='riba-creditcard-mastercard-inverted'></div>";
                        var k = document.createElement("option");
                        k.text = "MasterCard", k.value = "mastercard", h.appendChild(k)
                    }
                } else {
                    document.getElementById("cc_policy_name").innerHTML = "Cash only";
                    var l = document.createElement("input");
                    l.setAttribute("id", "cash_only"), l.setAttribute("type", "hidden"), l.setAttribute("value", "Cash only"), l.setAttribute("data-userCurrency", userCurrency), l.setAttribute("data-hcc", dataHotelCurrencyCode), f.innerHTML = "This property only accepts cash payments.", document.getElementById("cc_policy_name").appendChild(l);
                    var h = document.getElementById("card_type"),
                        k = document.createElement("option");
                    k.text = "Cash Only", k.value = "cash", h.appendChild(k)
                }
            document.getElementById("a_rules").style.visibility = "visible", document.getElementById("a_rules").style.display = "table-cell", document.getElementById("rules").style.visibility = "visible", document.getElementById("rules").style.display = "block", document.getElementById("creditCards_policy").style.display = "block"
        }
        if (b.miscellaneous) {
            for (var m = document.getElementById("miscellaneousList"), j = 0; j < b.miscellaneous.length; j++) m.innerHTML += "<li>" + b.miscellaneous[j].optionName + "</li>";
            document.getElementById("a_facilities").style.visibility = "visible", document.getElementById("a_facilities").style.display = "table-cell", document.getElementById("facilities").style.visibility = "visible", document.getElementById("facilities").style.display = "block", document.getElementById("miscellaneous").style.display = "block"
        }
        if (b.shop) {
            for (var n = document.getElementById("shopsList"), j = 0; j < b.length; j++) n.innerHTML += "<li>" + b.shop[j].shopName + "</li>";
            document.getElementById("a_facilities").style.visibility = "visible", document.getElementById("a_facilities").style.display = "table-cell", document.getElementById("facilities").style.visibility = "visible", document.getElementById("facilities").style.display = "block", document.getElementById("shops").style.display = "block"
        }
        if (b.businessFacility) {
            for (var o = document.getElementById("businessFacilityList"), j = 0; j < b.businessFacility.length; j++) o.innerHTML += "<li>" + b.businessFacility[j].facilityName + "</li>";
            document.getElementById("a_facilities").style.visibility = "visible", document.getElementById("a_facilities").style.display = "table-cell", document.getElementById("facilities").style.visibility = "visible", document.getElementById("facilities").style.display = "block", document.getElementById("business_facilities").style.display = "block"
        }
        if (b.cleaningService) {
            for (var p = document.getElementById("cleaningServiceList"), j = 0; j < b.cleaningService.length; j++) p.innerHTML += "<li>" + b.cleaningService[j].serviceName + "</li>";
            document.getElementById("a_facilities").style.visibility = "visible", document.getElementById("a_facilities").style.display = "table-cell", document.getElementById("facilities").style.visibility = "visible", document.getElementById("facilities").style.display = "block", document.getElementById("cleaning_services").style.display = "block"
        }
        if (b.entertainment) {
            for (var q = document.getElementById("entertainmentList"), j = 0; j < b.entertainment.length; j++) q.innerHTML += "<li>" + b.entertainment[j].entertainmentName + "</li>";
            document.getElementById("a_facilities").style.visibility = "visible", document.getElementById("a_facilities").style.display = "table-cell", document.getElementById("facilities").style.visibility = "visible", document.getElementById("facilities").style.display = "block", document.getElementById("entertainment_and_family_services").style.display = "block"
        }
        if (b.commonArea) {
            for (var r = document.getElementById("commonAreaList"), j = 0; j < b.commonArea.length; j++) r.innerHTML += "<li>" + b.commonArea[j].areaName + "</li>";
            document.getElementById("a_facilities").style.visibility = "visible", document.getElementById("a_facilities").style.display = "table-cell", document.getElementById("facilities").style.visibility = "visible", document.getElementById("facilities").style.display = "block", document.getElementById("common_areas").style.display = "block"
        }
        if (b.frontdeskService) {
            for (var s = document.getElementById("frontdeskServiceList"), j = 0; j < b.frontdeskService.length; j++) s.innerHTML += "<li>" + b.frontdeskService[j].serviceName + "</li>";
            document.getElementById("a_facilities").style.visibility = "visible", document.getElementById("a_facilities").style.display = "table-cell", document.getElementById("facilities").style.visibility = "visible", document.getElementById("facilities").style.display = "block", document.getElementById("front_desk_services").style.display = "block"
        }
        if (b.transportation) {
            for (var t = document.getElementById("transportationList"), j = 0; j < b.transportation.length; j++) t.innerHTML += "<li>" + b.transportation[j].amenityName + "</li>";
            document.getElementById("a_facilities").style.visibility = "visible", document.getElementById("a_facilities").style.display = "table-cell", document.getElementById("facilities").style.visibility = "visible", document.getElementById("facilities").style.display = "block", document.getElementById("transportations").style.display = "block"
        }
        if (b.poolSpa) {
            for (var u = document.getElementById("poolSpaList"), j = 0; j < b.poolSpa.length; j++) u.innerHTML += "<li>" + b.poolSpa[j].amenityName + "</li>";
            document.getElementById("a_facilities").style.visibility = "visible", document.getElementById("a_facilities").style.display = "table-cell", document.getElementById("facilities").style.visibility = "visible", document.getElementById("facilities").style.display = "block", document.getElementById("pool_and_spa").style.display = "block"
        }
        if (b.foodDrink) {
            for (var v = document.getElementById("foodDrinkList"), j = 0; j < b.foodDrink.length; j++) v.innerHTML += "<li>" + b.foodDrink[j].amenityName + "</li>";
            document.getElementById("a_facilities").style.visibility = "visible", document.getElementById("a_facilities").style.display = "table-cell", document.getElementById("facilities").style.visibility = "visible", document.getElementById("facilities").style.display = "block", document.getElementById("food_and_drink").style.display = "block"
        }
        if (b.activity) {
            for (var w = document.getElementById("activityList"), j = 0; j < b.activity.length; j++) w.innerHTML += "<li>" + b.activity[j].activityName + "</li>";
            document.getElementById("a_facilities").style.visibility = "visible", document.getElementById("a_facilities").style.display = "table-cell", document.getElementById("facilities").style.visibility = "visible", document.getElementById("facilities").style.display = "block", document.getElementById("activities").style.display = "block"
        }
        if (b.staffLanguage) {
            for (var x = document.getElementById("languageList"), y = document.querySelector(".hotel-description #language-speaking"), j = 0; j < b.staffLanguage.length; j++) x.innerHTML += "<li>" + b.staffLanguage[j].languageType + "</li>", b.staffLanguage[j].languageType === language && (y.innerHTML = "<div class='flag flag-" + b.staffLanguage[j].code + "'></div>", y.innerHTML += "&nbsp;<em>We speak your language!</em>", y.style.display = "block", y.style.visibility = "visible");
            document.getElementById("a_facilities").style.visibility = "visible", document.getElementById("a_facilities").style.display = "table-cell", document.getElementById("facilities").style.visibility = "visible", document.getElementById("facilities").style.display = "block", document.getElementById("languages_spoken").style.display = "block"
        }
        if (b.internet) {
            var z = document.getElementById("internetList");
            if (0 < b.internet.length)
                if (z.innerHTML += "<li>Internet(" + b.internet[0][2] + ") is available for " + b.internet[0][1] + " </li>", document.getElementById("a_facilities").style.visibility = "visible", document.getElementById("a_facilities").style.display = "table-cell", document.getElementById("facilities").style.visibility = "visible", document.getElementById("facilities").style.display = "block", document.getElementById("internet").style.display = "block", "0" != b.internet[0][3]) {
                    var A = b.internet[0][3],
                        B = "cbinternet",
                        C = "internet",
                        D = "ep_price_internet",
                        E = document.querySelector(".book-form-content .includes");
                    E.innerHTML += "<div class=excluded-prices id=" + C + "><div class=ep-checkbox><input type=checkbox id=" + B + " onchange=check('" + B + "','" + C + "','" + D + "') class=epc></div><div class=ep-name><label class=epn-title>Internet(" + b.internet[0][2] + ")</label><label class=epn-description>Internet is available for " + b.internet[0][1] + " and costs " + dataHotelCurrencyCode + " " + A + "</label></div><div id=" + D + " class=ep-price><div class=epp-total><p class=total-title>Total</p><p class=eppt-price>" + userCurrency + " " + 2 * A + "</p></div></div></div>";
                    var F = document.createElement("input");
                    F.setAttribute("type", "hidden"), F.setAttribute("id", "internetExc"), F.setAttribute("data-title", "Internet(" + b.internet[0][2] + ")"), F.setAttribute("data-userPrice", 2 * A), F.setAttribute("data-price", A), F.setAttribute("data-hotelCurrency", dataHotelCurrencyCode), F.setAttribute("data-userCurrency", userCurrency), document.getElementById(D).appendChild(F)
                } else {
                    var G = document.querySelector(".reservation-pricedetails-holder .reservation-pricedetails-freeincludes");
                    G.innerHTML += "<li class=rpd-wifi>Free Internet(" + b.internet[0][2] + ")</li>";
                    var H = document.querySelector(".book-form-content .includes");
                    H.innerHTML += "<div class='excluded-prices exc-included'><div class=ep-checkbox><input type=checkbox checked disabled class=epc></div><div class=inc><span class=included>INCLUDED</span></div><div class=ep-name><label class='epn-title z'>Internet(" + b.internet[0][2] + ")</label><label class='epn-description ep'>Internet is available for " + b.internet[0][1] + "</label></div></div>"
                }
        }
        if (b.parking) {
            var N, I = document.getElementById("parkingList"),
                J = document.getElementById("parking_policy"),
                K = "public",
                L = "outside of the site boundary",
                M = "not needed";
            if (0 < b.parking.length) {
                I.innerHTML = "<li>Available - <a href='#parking_policy'>See the rules</a></li>", document.getElementById("parking").style.display = "block", 0 === b.parking[0].isPublic && (K = "private"), 1 === b.parking[0].onSite && (L = "within the site boundary"), 1 === b.parking[0].reservationNeeded && (M = "needed"), N = 0 === b.parking[0].parkingPrice ? "<span style='padding: 5px; color: white; background-color: green;'>It is free!</span>" : "Price is " + dataHotelCurrencyCode + "&nbsp;" + b.parking[0].parkingPrice + " per spot.", J.innerHTML += "<p style='display:flex;'>Parking zone is " + K + ", " + L + " and reservation is " + M + ". " + N, document.getElementById("a_facilities").style.visibility = "visible", document.getElementById("a_facilities").style.display = "table-cell", document.getElementById("facilities").style.visibility = "visible", document.getElementById("facilities").style.display = "block", document.getElementById("parking_policy").style.display = "block";
                b.parking[0].parkingPrice;
                if (0 != b.parking[0].parkingPrice) {
                    var A = b.parking[0].parkingPrice,
                        B = "cbparking",
                        C = "parking",
                        P = "ep_price_parking",
                        E = document.querySelector(".book-form-content .includes");
                    E.innerHTML += "<div class=excluded-prices id=" + C + "><div class=ep-checkbox><input type=checkbox id=" + B + " onchange=check('" + B + "','" + C + "','" + P + "') class=epc></div><div class=ep-name><label class=epn-title>Parking</label><label class=epn-description>Parking zone is " + K + ", " + L + ", reservation is " + M + "  and costs " + dataHotelCurrencyCode + " " + b.parking[0].parkingPrice + "</label></div><div id=" + P + " class=ep-price><div class=epp-total><p class=total-title>Total</p><p class=eppt-price>" + userCurrency + " " + 2 * A + "</p></div></div></div>";
                    var F = document.createElement("input");
                    F.setAttribute("type", "hidden"), F.setAttribute("id", "parkingExc"), F.setAttribute("data-title", "Parking"), F.setAttribute("data-userPrice", 2 * A), F.setAttribute("data-price", A), F.setAttribute("data-hotelCurrency", dataHotelCurrencyCode), F.setAttribute("data-userCurrency", userCurrency), document.getElementById(P).appendChild(F)
                } else {
                    var Q = document.querySelector(".reservation-pricedetails-holder .reservation-pricedetails-freeincludes");
                    Q.innerHTML += "<li class=rpd-parking>Free Parking</li>";
                    var H = document.querySelector(".book-form-content .includes");
                    H.innerHTML += "<div class='excluded-prices exc-included'><div class=ep-checkbox><input type=checkbox checked disabled class=epc></div><div class=inc><span class=included>INCLUDED</span></div><div class=ep-name><label class='epn-title z'>Parking</label><label class='epn-description ep'>Parking zone is " + K + ", " + L + ", reservation is " + M + "</label></div></div>"
                }
            }
        }
    },
    error: function() {
        alert("Facilities cannot be loaded.")
    }
}), dojo.xhrGet({
    url: windowLocationS + "getaccommodationbyid/" + id,
    load: function(a) {
        var b = JSON.parse(a);
        0 === b.length && (alert("Hotel not found!"), hpage()), localStorage.setItem("4ce_q30xdekex_q", b[0].id);
        var c = b[0].cbCity.cityName,
            d = b[0].cbCity.cbState.stateName,
            f = "Bosnia and Hercegovina" === d ? "bih" : d,
            g = document.getElementById("parag_facilities");
        document.getElementById("city_activities").innerHTML += "Check other activities for " + c, document.getElementById("city_activities_buttons").innerHTML += "<li><a href=" + windowLocation + "/restaurants/" + c + ">Restaurants</a></li><li><a href=" + windowLocation + "events/" + c + ">Events</a></li><li><a href=" + windowLocation + "tasearch/?ta_qkw=" + f + "&ta_qc=" + c + ">Tours</a></li>", hotelName = b[0].name;
        var h = document.querySelector(".hname .hn");
        ("" != b[0] || void 0 !== b[0] || null !== b[0]) && (h.innerHTML = hotelName);
        var j = b[0].rank,
            k = document.querySelector(".hname .hrating");
        0 === j && (k.innerHTML += "");
        for (var l = 0; l < j; l++) k.innerHTML += "<span class=hrating-star>&#9733;</span>";
        var m = b[0].address,
            n = document.querySelector(".haddress .fulladdress");
        document.getElementById("mapMarker").style.display = "inline-block", n.innerHTML = m + ", " + c + ", " + d;
        var o = document.createElement("input");
        if (o.setAttribute("type", "hidden"), o.setAttribute("name", "cpolicy"), o.setAttribute("id", "cpolicy"), 0 < b[0].accommodationCancellationPolicies.length ? (o.setAttribute("data-paid", b[0].accommodationCancellationPolicies[0].fullyPaid), o.setAttribute("value", b[0].accommodationCancellationPolicies[0].cbCancellationPolicy.policyName)) : (o.setAttribute("data-paid", "0"), o.setAttribute("value", "0")), document.getElementById("right").appendChild(o), hotelName = b[0].name, document.title += " - " + hotelName, g.innerHTML = "Facilities of " + hotelName + ".", "undefined" !== b[0].checkinStart && "undefined" !== b[0].checkinEnd) {
            document.getElementById("checkin_policy").style.display = "block";
            var p = document.getElementById("parag_checkIn");
            p.innerHTML = b[0].checkinStart + " - " + b[0].checkinEnd + " hours"
        }
        if ("undefined" !== b[0].checkoutStart && "undefined" !== b[0].checkoutEnd) {
            document.getElementById("checkout_policy").style.display = "block";
            var q = document.getElementById("parag_checkOut");
            q.innerHTML = b[0].checkoutStart + " - " + b[0].checkoutEnd + " hours"
        }
        document.getElementById("qkw").value = hotelName
    },
    error: function() {
        alert("Hotel not found!"), hpage()
    }
}), dojo.xhrGet({
    url: windowLocationS + "getaccommodationcitytax/" + id,
    load: function(a) {
        var b = JSON.parse(a),
            c = document.createElement("input");
        c.setAttribute("type", "hidden"), c.setAttribute("name", "tax"), c.setAttribute("id", "tax"), 0 < b.length ? (c.setAttribute("data-amount", b[0].taxAmounth), c.setAttribute("data-included", b[0].isIncluded), c.setAttribute("value", b[0].taxType.taxType)) : (c.setAttribute("data-amount", "0"), c.setAttribute("data-included", "1"), c.setAttribute("value", "0")), document.getElementById("right").appendChild(c)
    },
    error: function() {
        console.error("Cannot load city tax")
    }
}), dojo.xhrGet({
    url: windowLocationS + "getaccommodationvat/" + id,
    load: function(a) {
        var b = JSON.parse(a),
            c = document.createElement("input");
        c.setAttribute("type", "hidden"), c.setAttribute("name", "vat"), c.setAttribute("id", "vat"), 0 < b.length ? (c.setAttribute("data-amount", b[0].amounth), c.setAttribute("data-ctype", b[0].calculationType), c.setAttribute("data-vot", b[0].vatOrTax), c.setAttribute("data-included", b[0].isIncluded)) : (c.setAttribute("data-amount", "17"), c.setAttribute("data-ctype", "%"), c.setAttribute("data-vot", "VAT"), c.setAttribute("data-included", "1")), document.getElementById("right").appendChild(c)
    },
    error: function() {
        console.error("Cannot load accommodation VAT")
    }
}), dojo.xhrGet({
    url: windowLocationS + "accommodationpics/" + id,
    load: function(a) {
        var b = JSON.parse(a),
            c = document.getElementById("content");
        if (0 === b.length) return document.getElementById("jssor_1").style.visibility = "hidden", void(document.getElementById("jssor_1").style.display = "none");
        var d = document.getElementById("hotel_pic__thumbnail");
        d.src = b[0][2], d.style.width = "200px", d.style.height = "200px";
        for (var f = 0; f < b.length; f++) c.innerHTML += "<div data-p='144.50'><img data-u='image' src='" + b[f][2] + "' /><img data-u='thumb' src='" + b[f][2] + "' /></div>";
        var g = [{
                $Duration: 1200,
                x: 0.3,
                $During: {
                    $Left: [0.3, 0.7]
                },
                $Easing: {
                    $Left: $Jease$.$InCubic,
                    $Opacity: $Jease$.$Linear
                },
                $Opacity: 2
            }, {
                $Duration: 1200,
                x: -0.3,
                $SlideOut: !0,
                $Easing: {
                    $Left: $Jease$.$InCubic,
                    $Opacity: $Jease$.$Linear
                },
                $Opacity: 2
            }, {
                $Duration: 1200,
                x: -0.3,
                $During: {
                    $Left: [0.3, 0.7]
                },
                $Easing: {
                    $Left: $Jease$.$InCubic,
                    $Opacity: $Jease$.$Linear
                },
                $Opacity: 2
            }, {
                $Duration: 1200,
                x: 0.3,
                $SlideOut: !0,
                $Easing: {
                    $Left: $Jease$.$InCubic,
                    $Opacity: $Jease$.$Linear
                },
                $Opacity: 2
            }, {
                $Duration: 1200,
                y: 0.3,
                $During: {
                    $Top: [0.3, 0.7]
                },
                $Easing: {
                    $Top: $Jease$.$InCubic,
                    $Opacity: $Jease$.$Linear
                },
                $Opacity: 2
            }, {
                $Duration: 1200,
                y: -0.3,
                $SlideOut: !0,
                $Easing: {
                    $Top: $Jease$.$InCubic,
                    $Opacity: $Jease$.$Linear
                },
                $Opacity: 2
            }, {
                $Duration: 1200,
                y: -0.3,
                $During: {
                    $Top: [0.3, 0.7]
                },
                $Easing: {
                    $Top: $Jease$.$InCubic,
                    $Opacity: $Jease$.$Linear
                },
                $Opacity: 2
            }, {
                $Duration: 1200,
                y: 0.3,
                $SlideOut: !0,
                $Easing: {
                    $Top: $Jease$.$InCubic,
                    $Opacity: $Jease$.$Linear
                },
                $Opacity: 2
            }, {
                $Duration: 1200,
                x: 0.3,
                $Cols: 2,
                $During: {
                    $Left: [0.3, 0.7]
                },
                $ChessMode: {
                    $Column: 3
                },
                $Easing: {
                    $Left: $Jease$.$InCubic,
                    $Opacity: $Jease$.$Linear
                },
                $Opacity: 2
            }, {
                $Duration: 1200,
                x: 0.3,
                $Cols: 2,
                $SlideOut: !0,
                $ChessMode: {
                    $Column: 3
                },
                $Easing: {
                    $Left: $Jease$.$InCubic,
                    $Opacity: $Jease$.$Linear
                },
                $Opacity: 2
            }, {
                $Duration: 1200,
                y: 0.3,
                $Rows: 2,
                $During: {
                    $Top: [0.3, 0.7]
                },
                $ChessMode: {
                    $Row: 12
                },
                $Easing: {
                    $Top: $Jease$.$InCubic,
                    $Opacity: $Jease$.$Linear
                },
                $Opacity: 2
            }, {
                $Duration: 1200,
                y: 0.3,
                $Rows: 2,
                $SlideOut: !0,
                $ChessMode: {
                    $Row: 12
                },
                $Easing: {
                    $Top: $Jease$.$InCubic,
                    $Opacity: $Jease$.$Linear
                },
                $Opacity: 2
            }, {
                $Duration: 1200,
                y: 0.3,
                $Cols: 2,
                $During: {
                    $Top: [0.3, 0.7]
                },
                $ChessMode: {
                    $Column: 12
                },
                $Easing: {
                    $Top: $Jease$.$InCubic,
                    $Opacity: $Jease$.$Linear
                },
                $Opacity: 2
            }, {
                $Duration: 1200,
                y: -0.3,
                $Cols: 2,
                $SlideOut: !0,
                $ChessMode: {
                    $Column: 12
                },
                $Easing: {
                    $Top: $Jease$.$InCubic,
                    $Opacity: $Jease$.$Linear
                },
                $Opacity: 2
            }, {
                $Duration: 1200,
                x: 0.3,
                $Rows: 2,
                $During: {
                    $Left: [0.3, 0.7]
                },
                $ChessMode: {
                    $Row: 3
                },
                $Easing: {
                    $Left: $Jease$.$InCubic,
                    $Opacity: $Jease$.$Linear
                },
                $Opacity: 2
            }, {
                $Duration: 1200,
                x: -0.3,
                $Rows: 2,
                $SlideOut: !0,
                $ChessMode: {
                    $Row: 3
                },
                $Easing: {
                    $Left: $Jease$.$InCubic,
                    $Opacity: $Jease$.$Linear
                },
                $Opacity: 2
            }, {
                $Duration: 1200,
                x: 0.3,
                y: 0.3,
                $Cols: 2,
                $Rows: 2,
                $During: {
                    $Left: [0.3, 0.7],
                    $Top: [0.3, 0.7]
                },
                $ChessMode: {
                    $Column: 3,
                    $Row: 12
                },
                $Easing: {
                    $Left: $Jease$.$InCubic,
                    $Top: $Jease$.$InCubic,
                    $Opacity: $Jease$.$Linear
                },
                $Opacity: 2
            }, {
                $Duration: 1200,
                x: 0.3,
                y: 0.3,
                $Cols: 2,
                $Rows: 2,
                $During: {
                    $Left: [0.3, 0.7],
                    $Top: [0.3, 0.7]
                },
                $SlideOut: !0,
                $ChessMode: {
                    $Column: 3,
                    $Row: 12
                },
                $Easing: {
                    $Left: $Jease$.$InCubic,
                    $Top: $Jease$.$InCubic,
                    $Opacity: $Jease$.$Linear
                },
                $Opacity: 2
            }, {
                $Duration: 1200,
                $Delay: 20,
                $Clip: 3,
                $Assembly: 260,
                $Easing: {
                    $Clip: $Jease$.$InCubic,
                    $Opacity: $Jease$.$Linear
                },
                $Opacity: 2
            }, {
                $Duration: 1200,
                $Delay: 20,
                $Clip: 3,
                $SlideOut: !0,
                $Assembly: 260,
                $Easing: {
                    $Clip: $Jease$.$OutCubic,
                    $Opacity: $Jease$.$Linear
                },
                $Opacity: 2
            }, {
                $Duration: 1200,
                $Delay: 20,
                $Clip: 12,
                $Assembly: 260,
                $Easing: {
                    $Clip: $Jease$.$InCubic,
                    $Opacity: $Jease$.$Linear
                },
                $Opacity: 2
            }, {
                $Duration: 1200,
                $Delay: 20,
                $Clip: 12,
                $SlideOut: !0,
                $Assembly: 260,
                $Easing: {
                    $Clip: $Jease$.$OutCubic,
                    $Opacity: $Jease$.$Linear
                },
                $Opacity: 2
            }],
            h = {
                $AutoPlay: !0,
                $SlideshowOptions: {
                    $Class: $JssorSlideshowRunner$,
                    $Transitions: g,
                    $TransitionsOrder: 1
                },
                $ArrowNavigatorOptions: {
                    $Class: $JssorArrowNavigator$
                },
                $ThumbnailNavigatorOptions: {
                    $Class: $JssorThumbnailNavigator$,
                    $Cols: 10,
                    $SpacingX: 8,
                    $SpacingY: 8,
                    $Align: 360
                }
            },
            j = new $JssorSlider$("jssor_1", h)
    }
});