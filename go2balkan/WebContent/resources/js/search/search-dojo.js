function modifyWord(a) {
    return a.replace(/\w\S*/g, function(b) {
        return b.charAt(0).toUpperCase()+b.substr(1).toLowerCase()
    }
    )
}

var path=localStorage.getItem("services"),
hotelPath=localStorage.getItem("frontend")+"/hotel/",
gridAccommodation,
storeAccommodation,
storeAccommodationM,
layoutAccommodation,
word=!1;
dojo.ready(function() {
    var a=getURLParameter("select_room"), b=getURLParameter("select_adult"), c=getURLParameter("select_child"), d=0<a?a-1: a, e=0<b?b-1: b;
    document.getElementById("select_room").selectedIndex=d, document.getElementById("select_adult").selectedIndex=e, document.getElementById("select_child").selectedIndex=c;
    var f=document.getElementById("keyword").value;
    document.getElementById("qkw").value=f;
    var g=getURLParameter("checkin"), h=getURLParameter("checkout"), j=getURLParameter("cat"), k;
    "country"==j&&(k=path+"/getaccommodationbyCountry?qkw="+f), "city"==j&&(k=path+"/getaccommodationbyCity?qkw="+f), "prop"==j&&(k=path+"/getaccommodationbyName?qkw="+f), null!=g&&(k+="&checkin="+g), null!=g&&null!=h&&(k+="&checkout="+h), dojo.xhrGet( {
        url:k, load:function(l) {
            for(var m=JSON.parse(l), n=document.querySelectorAll(".right-content-header h6 a"), o=0;
            o<n.length;
            o++)"country"===j&&(n[o].href=windowLocation+"/tasearch?ta_qkw="+m[0].cbCity.cbState.stateName), "city"===j&&(n[o].href=windowLocation+"/tasearch?ta_qkw="+m[0].cbCity.cbState.stateName+"&ta_qc="+m[0].cbCity.cityName), "prop"===j&&(n[o].href=windowLocation+"/tasearch");
            var p=m.length;
            document.getElementById("numOfLoop").innerHTML=1==p?p+" result":p+"\tresults", storeAccommodationM=new dojo.store.Memory( {
                identifier: "id", label: "name", data: m
            }
            ), storeAccommodation=new dojo.data.ObjectStore( {
                objectStore: storeAccommodationM
            }
            ), gridAccommodation.setStore(storeAccommodation);
            var q=document.getElementById("spinner");
            q.parentNode.removeChild(q), $("#footer").removeClass("hide"), gridAccommodation.on("RowClick", function(r) {
                var s=r.rowIndex, t=gridAccommodation.getItem(s), u;
                null!=g&&(u="?checkin="+g), null!=g&&null!=h&&(u+="&checkout="+h), null!=a&&(u+="&select_room="+d), null!=b&&(u+="&select_adult="+e), null!=c&&(u+="&select_child="+c), u==void 0?window.open(hotelPath+t.customId): window.open(hotelPath+t.customId+u)
            }
            , !0)
        }
        , error:function(l) {
            console.log("error: "+l)
        }
    }
    ), gridAccommodation=new dojox.grid.EnhancedGrid( {
        id:"gridAccommodation", structure:layoutAccommodations, clientSort:!0, autoHeight:!0, preload:!0, rowsPerPage:10, plugins: {
            pagination: {
                pageSizes: ["10", "25", "50", "All"], defaultPage: 1, defaultPageSize: 10, currentPageSize: 10, description: !0, sizeSwitch: !0, pageStepper: !0, gotoButton: !0, maxPageStep: 4, position: "bottom"
            }
        }
    }
    , document.createElement("div")), dojo.byId("search_list").appendChild(gridAccommodation.domNode), gridAccommodation.startup(), gridAccommodation.defaultUpdate()
}

),
layoutAccommodations=[[ {
    name: "table_row_accommodation", id: "table_row_accommodation", field: "customId", headerStyles: "display:none;", cellStyles: "background-color: transparent; display: none;", formatter:function(a) {
        return"<input type=hidden id=table_row_accommodation_"+a+" value="+a+">"
    }
}

,
{
    name: "pic", field: "accommodationPics", width: "260px", headerStyles: "display: none;", cellStyles: "height:240px; background: #f7f7f7;", formatter:function(a) {
        if(""==a)return"<img />";
        for(var b=0;
        b<a.length;
        b++)return 1==a[b].isPromoPic?"<img style='height: 240px; width: 258px;' src="+a[b].pic+" />": "<img />"
    }
}

,
{
    name: "Rank", field: "rank", width: "160px", headerStyles: "display: none;", cellStyles: "background: #f7f7f7; color: darkgoldenrod; font-size: 11px; display: inline-block; padding-left: 10px; margin-top: -157px;", formatter:function(a) {
        for(var b="<span style='font-size: 11px;'>", c=0;
        c<a;
        c++)b+="&#9733;";
        return b+="</span>",
        b
    }
}

,
{
    name: "accommodationName", field: "name", width: "320px", headerStyles: "display: none;", cellStyles: "background: #f7f7f7; color: #337ab7; font-size: 20px; display: inline-block; margin-top: -155px; padding-left: 10px;", formatter:function(a) {
        for(var b="", c=0;
        c<a.length;
        c++)b="<span class=item-name>"+modifyWord(a)+"</span>";
        return b
    }
}

,
{
    name: "city", field: "cbCity", width: "160px", headerStyles: "display: none;", cellStyles: "background: #f7f7f7; color: #337ab7; font-size: 12px; display: inline-block; margin-top: -155px; padding-left: 10px;", formatter:function(a) {
        return"<span class=location-city>"+a.cityName+"</span>"
    }
}

,
{
    name: "distance", field: "accommodationDistances", width: "400px", headerStyles: "display: none;", cellStyles: "background: #f7f7f7; padding-top: 35px; padding-left: 45px;", formatter:function(a) {
        var b="";
        if(""!=a) {
            b+="<ul style='column-count: 2;' class='surrounding-list dyn'>";
            for(var c=0;
            6>c;
            c++)b+="<li><div class=riba-"+a[c].accommodationSurrounding.surroundingIcon+"></div>&nbsp;"+a[c].accommodationSurrounding.surroundingName+" "+a[c].distance+"</li>";
            return b+="</ul>",
            b
        }
        return""
    }
}

,
{
    name: "internet", field: "accommodationOptionsInternet", width: "90px", headerStyles: "display: none;", cellStyles: "color: #337ab7; font-weight: lighter; background: transparent; display: inline-block; margin-left: -392px; margin-top: 180px; font-size:11px; line-height: 1.5;", formatter:function(a) {
        return null==a?(word=!1, ""): (word=!0, a.cbInternetConnectionType.connectionType)
    }
}

,
{
    name: "parking", field: "accommodationOptionsParkings", width: "300px", headerStyles: "display: none;", cellStyles: "background: transparent; display: inline-block; margin-left: -90px; margin-top: 180px; color: #337ab7; font-weight: lighter; font-size:11px; line-height: 1.5;", formatter:function(a) {
        return null==a||0!=a.parkingPrice?"": 0==a.parkingPrice?word?"<span style='margin-left: 29px;'>, Free parking</span>": "Free parking": void 0
    }
}

,
{
    name: "breakfast", field: "accommodationOptionsBreakfasts", width: "155px", headerStyles: "display: none;", cellStyles: "background-color: #f7f7f7; display: inline-block; margin-top:-300px; font-size: 11px; margin-left: -55px;", formatter:function(a) {
        return 0<a.length?0==a[0].breakfastPrice?"Breakfast included": "Breakfast BAM "+a[0].breakfastPrice: ""
    }
}

,
{
    name: "price", field: "accommodationOptionsBreakfasts", width: "100px", headerStyles: "display: none;", cellStyles: "background-color: #f7f7f7; color: red; display: inline-block; margin-top: -40px;", formatter:function(a) {
        return 0<a.length?"<span>BAM </span><span style='font-size: 26px; text-decoration: underline;'>79</span>": "<span>BAM </span><span style='font-size: 26px; text-decoration: underline;'>99</span>"
    }
}

]];