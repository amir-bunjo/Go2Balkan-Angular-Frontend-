function modifyWord(a) {
    return null!==a||void 0!==a?a.replace(/\w\S*/g, function(b) {
        return b.charAt(0).toUpperCase()+b.substr(1).toLowerCase()
    }
    ):null
}

String.prototype.truncString=function() {
    var a=200,
    b=b||" ... <span>More info</span>";
    return this.length>a?this.substring(0, a)+b: this
}

;
var path=localStorage.getItem("services"),
tourPath=localStorage.getItem("frontend")+"/tour/",
params=window.location.search,
gridTour,
storeTour,
storeTourM,
layoutTour,
country="bih"===getURLParameter("ta_qkw")?"Bosnia and Herzegovina":getURLParameter("ta_qkw")||"All Balkan countries",
city=getURLParameter("ta_qc")||"with all cities",
type=getURLParameter("ta_tourtype")||"and all tour types";
country="All Balkan countries"===country?country:modifyWord(country),
city="with all cities"===city?city:modifyWord(city),
type="and all tour types"===type?type:modifyWord(type),
dojo.ready(function() {
    dojo.xhrGet( {
        url:path+"/findtours"+params, load:function(a) {
            var b=JSON.parse(a);
            console.log(b);
            var e=b.length, f=document.getElementById("s_keyword");
            if(0<e) {
                dojo.byId("ta_search_list").appendChild(gridTour.domNode), f.innerHTML=country+",&nbsp;"+city+"&nbsp;"+type+"&nbsp;:";
                var g=document.getElementById("numOfLoop");
                g.innerHTML=1<e?e+" results":e+" result", storeTourM=new dojo.store.Memory( {
                    identifier: "id", label: "name", data: b
                }
                ), storeTour=new dojo.data.ObjectStore( {
                    objectStore: storeTourM
                }
                ), gridTour.setStore(storeTour);
                var h=document.getElementById("spinner");
                h.parentNode.removeChild(h), gridTour.on("RowClick", function(i) {
                    var j=i.rowIndex, k=gridTour.getItem(j), l;
                    null!=checkin&&null!=checkout?(l="?ta_checkin="+checkin+"&ta_checkout="+checkout, window.open(tourPath+k[0]+l)): window.open(tourPath+k[0])
                }
                , !0)
            }
            else f.innerHTML="<h3>No result found</h3>", $("#ta_search_list").remove()
        }
        , error:function(a) {
            alert(a.responseText)
        }
    }
    ), gridTour=new dojox.grid.EnhancedGrid( {
        id:"taGridTour", structure:layoutTours, clientSort:!0, autoHeight:!0, preload:!0, rowsPerPage:10, plugins: {
            pagination: {
                pageSizes: ["10", "25", "50", "All"], defaultPage: 1, defaultPageSize: 10, currentPageSize: 10, description: !0, sizeSwitch: !0, pageStepper: !0, gotoButton: !0, maxPageStep: 4, position: "bottom"
            }
        }
    }
    , document.createElement("div")), gridTour.startup(), gridTour.defaultUpdate()
}

),
layoutTours=[[ {
    name: "table_row_tour", id: "table_row_tour", field: "0", headerStyles: "display:none;", cellStyles: "background-color: transparent; display: none;", formatter:function(a) {
        return"<input type=hidden value="+a+"/>"
    }
}

,
{
    name: "pic", field: "1", width: "200px", headerStyles: "display: none;", cellStyles:"", formatter:function(a) {
        return"<img class='ta-pic' src="+a+" alt=image />"
    }
}

,
{
    name: "tourName", field: "2", width: "auto", headerStyles: "display: none;", cellStyles:"background: #f7f7f7", formatter:function(a) {
        return"<span class='s-tourname'>"+modifyWord(a)+"</span>"
    }
}

,
{
    name: "travelProgram", field: "3", width: "auto", headerStyles: "display: none;", cellStyles:"background: #f7f7f7", formatter:function(a) {
        return a.truncString()
    }
}

,
{
    name: "cbCity", field: "4", width: "auto", headerStyles: "display: none;", cellStyles:"background: #f7f7f7", formatter:function(a) {
        return"<span class=durat-small>Location: "+a.cityName+",&nbsp;"+a.cbState.stateName+"</span>"
    }
}

,
{
    name: "nightsNo", field: "5", width: "auto", headerStyles: "display: none;", cellStyles:"background: #f7f7f7", formatter:function(a) {
        var b=1<a+1?"days": "day";
        return"<span class=durat-small>Duration: "+(a+1)+" "+b+"</span>"
    }
}

,
{
    name: "outputPrice", field: "6", width: "auto", headerStyles: "display: none;", cellStyles:"background: #f7f7f7", formatter:function(a) {
        return"<span class='ta-from'>From</span><span class=ta-price>BAM "+a+"</span>"
    }
}

,
{
    name: "learnMore", field: "6", width: "auto", headerStyles: "display: none;", cellStyles:"background: #f7f7f7", formatter:function() {
        return"<div class='package-ribbon-wrapper'><div class='package-type normal-type'>Learn More</div><div class='clear'></div><div class='package-type-gimmick'></div><div class='clear'></div></div>"
    }
}

]];