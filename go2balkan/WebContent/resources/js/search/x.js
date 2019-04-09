dojo.require("dojo.parser"),
dojo.require("dojox.grid.EnhancedGrid"),
dojo.require("dojo.data.ItemFileWriteStore"),
dojo.require("dijit.layout.ContentPane"),
dojo.require("dojox.grid.enhanced.plugins.Pagination"),
dojo.require("dojox.grid.cells"),
dojo.require("dojox.grid.cells.dijit"),
dojo.require("dojo.request.xhr"),
dojo.require("dojox.data.JsonRestStore"),
dojo.require("dojo.store.Memory"),
dojo.require("dojo.data.ObjectStore"),
dojo.require("dojo.store.JsonRest"),
dojo.require("dojo.store.Cache"),
dojo.require("dojo.dom"),
dojo.require("dojo.domReady!"),
dojo.require("dojo.dom-construct"),
dojo.require("dojo._base/array"),
dojo.require("dijit.registry"),
dojo.require("dojo.dom-style"),
dojo.require("dojox.grid.enhanced.plugins.NestedSorting"),
dojo.require("dojox.grid.enhanced.plugins.IndirectSelection"),
require(["dojo/parser", "dijit/form/Select"]),
require(["dojo/parser", "dijit/Fieldset"]),
require(["dojo/parser", "dijit/form/TextBox"]),
require(["dojo/parser", "dijit/form/DateTextBox"]),
require(["dijit/form/CheckBox", "dojo/domReady!"], function(a) {
    var c=new a( {
        name:"first", value:"price between \u20AC 0 - \u20AC 50 per night", checked:!1, onChange:function(v) {
            alert("onChange called with parameter = "+v+", and widget value = "+this.get("value"))
        }
    }
    , "first"), d=new a( {
        name:"second", value:"price between \u20AC 50 - \u20AC 100 per night", checked:!1, onChange:function(v) {
            alert("onChange called with parameter = "+v+", and widget value = "+this.get("value"))
        }
    }
    , "second"), e=new a( {
        name:"third", value:"price between \u20AC 100 - \u20AC 150 per night", checked:!1, onChange:function(v) {
            alert("onChange called with parameter = "+v+", and widget value = "+this.get("value"))
        }
    }
    , "third"), f=new a( {
        name:"fourth", value:"price between \u20AC 150 - \u20AC 200 per night", checked:!1, onChange:function(v) {
            alert("onChange called with parameter = "+v+", and widget value = "+this.get("value"))
        }
    }
    , "fourth"), g=new a( {
        name:"fifth", value:"price between \u20AC 200 - \u20AC 250 per night", checked:!1, onChange:function(v) {
            alert("onChange called with parameter = "+v+", and widget value = "+this.get("value"))
        }
    }
    , "fifth"), h=new a( {
        name:"sixth", value:"price between \u20AC 250+ per night", checked:!1, onChange:function(v) {
            alert("onChange called with parameter = "+v+", and widget value = "+this.get("value"))
        }
    }
    , "sixth"), i=new a( {
        name:"first-acommodationType", value:"Hotel", checked:!1, onChange:function(v) {
            alert("onChange called with parameter = "+v+", and widget value = "+this.get("value"))
        }
    }
    , "first-acommodationType"), j=new a( {
        name:"second-acommodationType", value:"Apartment", checked:!1, onChange:function(v) {
            alert("onChange called with parameter = "+v+", and widget value = "+this.get("value"))
        }
    }
    , "second-acommodationType"), k=new a( {
        name:"third-acommodationType", value:"Motel", checked:!1, onChange:function(v) {
            alert("onChange called with parameter = "+v+", and widget value = "+this.get("value"))
        }
    }
    , "third-acommodationType"), l=new a( {
        name:"first-facility", value:"Car Park", checked:!1, onChange:function(v) {
            alert("onChange called with parameter = "+v+", and widget value = "+this.get("value"))
        }
    }
    , "first-facility"), m=new a( {
        name:"fourt-facility", value:"Pets Allowed", checked:!1, onChange:function(v) {
            alert("onChange called with parameter = "+v+", and widget value = "+this.get("value"))
        }
    }
    , "fourth-facility"), n=new a( {
        name:"fifth-facility", value:"Breakfast Included", checked:!1, onChange:function(v) {
            alert("onChange called with parameter = "+v+", and widget value = "+this.get("value"))
        }
    }
    , "fifth-facility"), o=new a( {
        name:"sixth-facility", value:"Free WiFi", checked:!1, onChange:function(v) {
            alert("onChange called with parameter = "+v+", and widget value = "+this.get("value"))
        }
    }
    , "sixth-facility"), p=new a( {
        name:"first-star", value:"1 Star", checked:!1, onChange:function(v) {
            alert("onChange called with parameter = "+v+", and widget value = "+this.get("value"))
        }
    }
    , "first-star"), q=new a( {
        name:"second-star", value:"2 Stars", checked:!1, onChange:function(v) {
            alert("onChange called with parameter = "+v+", and widget value = "+this.get("value"))
        }
    }
    , "second-star"), r=new a( {
        name:"third-star", value:"3 Stars", checked:!1, onChange:function(v) {
            alert("onChange called with parameter = "+v+", and widget value = "+this.get("value"))
        }
    }
    , "third-star"), s=new a( {
        name:"fourt-star", value:"4 Stars", checked:!1, onChange:function(v) {
            alert("onChange called with parameter = "+v+", and widget value = "+this.get("value"))
        }
    }
    , "fourth-star"), t=new a( {
        name:"fifth-star", value:"5 Stars", checked:!1, onChange:function(v) {
            alert("onChange called with parameter = "+v+", and widget value = "+this.get("value"))
        }
    }
    , "fifth-star"), u=new a( {
        name:"sixth-star", value:"Unrated", checked:!1, onChange:function(v) {
            alert("onChange called with parameter = "+v+", and widget value = "+this.get("value"))
        }
    }
    , "sixth-star")
}

),
require(["dijit/form/Button", "dojo/dom", "dojo/domReady!"], function(a) {
    new a( {
        label:"Submit", onClick:function() {
            alert("submit clicked")
        }
    }
    , "submit").startup()
}

),
require(["dojo/store/Memory", "dijit/form/ComboBox", "dojo/domReady!"], function(a, c) {
    var d=new a( {
        data:[ {
            name: "1", id: "1"
        }
        , {
            name: "2", id: "2"
        }
        , {
            name: "3", id: "3"
        }
        , {
            name: "4", id: "4"
        }
        , {
            name: "5", id: "5"
        }
        , {
            name: "6", id: "6"
        }
        , {
            name: "7", id: "7"
        }
        , {
            name: "8", id: "8"
        }
        , {
            name: "9", id: "9"
        }
        , {
            name: "10", id: "11"
        }
        , {
            name: "11", id: "11"
        }
        , {
            name: "12", id: "12"
        }
        , {
            name: "13", id: "13"
        }
        , {
            name: "14", id: "14"
        }
        , {
            name: "15", id: "15"
        }
        , {
            name: "16", id: "16"
        }
        , {
            name: "17", id: "17"
        }
        , {
            name: "18", id: "18"
        }
        , {
            name: "19", id: "19"
        }
        , {
            name: "20", id: "20"
        }
        ]
    }
    ), e=new c( {
        id:"roomSelect", name:"room", value:"0", store:d, searchAttr:"name", style: {
            "margin-left": "60px", width: "45px"
        }
    }
    , "roomSelect"), f=new a( {
        data:[ {
            name: "1", id: "1"
        }
        , {
            name: "2", id: "2"
        }
        , {
            name: "3", id: "3"
        }
        , {
            name: "4", id: "4"
        }
        , {
            name: "5", id: "5"
        }
        , {
            name: "6", id: "6"
        }
        , {
            name: "7", id: "7"
        }
        , {
            name: "8", id: "8"
        }
        , {
            name: "9", id: "9"
        }
        , {
            name: "10", id: "11"
        }
        , {
            name: "11", id: "11"
        }
        , {
            name: "12", id: "12"
        }
        , {
            name: "13", id: "13"
        }
        , {
            name: "14", id: "14"
        }
        , {
            name: "15", id: "15"
        }
        , {
            name: "16", id: "16"
        }
        , {
            name: "17", id: "17"
        }
        , {
            name: "18", id: "18"
        }
        , {
            name: "19", id: "19"
        }
        , {
            name: "20", id: "20"
        }
        ]
    }
    ), e=new c( {
        id:"adultSelect", name:"adult", value:"0", store:f, searchAttr:"name", style: {
            width: "45px", "margin-left": "63px"
        }
    }
    , "adultSelect"), g=new a( {
        data:[ {
            name: "1", id: "1"
        }
        , {
            name: "2", id: "2"
        }
        , {
            name: "3", id: "3"
        }
        , {
            name: "4", id: "4"
        }
        , {
            name: "5", id: "5"
        }
        , {
            name: "6", id: "6"
        }
        , {
            name: "7", id: "7"
        }
        , {
            name: "8", id: "8"
        }
        , {
            name: "9", id: "9"
        }
        , {
            name: "10", id: "11"
        }
        , {
            name: "11", id: "11"
        }
        , {
            name: "12", id: "12"
        }
        , {
            name: "13", id: "13"
        }
        , {
            name: "14", id: "14"
        }
        , {
            name: "15", id: "15"
        }
        , {
            name: "16", id: "16"
        }
        , {
            name: "17", id: "17"
        }
        , {
            name: "18", id: "18"
        }
        , {
            name: "19", id: "19"
        }
        , {
            name: "20", id: "20"
        }
        ]
    }
    ), e=new c( {
        id:"childSelect", name:"child", value:"0", store:g, searchAttr:"name", style: {
            width: "45px", "margin-left": "41px"
        }
    }
    , "childSelect")
}

);