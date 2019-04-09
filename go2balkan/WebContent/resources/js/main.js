var input = document.getElementById("username"),
    windowLocation = localStorage.getItem("frontend"),
    windowLocationS = localStorage.getItem("services"),
    encrypt = "ItWillBeChangedLater",
    ok = !1;
require(["dojo/request"], function() {
    dojo.xhrGet({
        url: windowLocationS + "/userdetails/",
        load: function(a) {
            var e = document.querySelector(".header .right");
            if (0 < a.length) {
                var f = JSON.parse(a),
                    g = f.value.username,
                    h = document.createElement("input");
                h.setAttribute("type", "hidden"), h.setAttribute("value", encrypt), h.setAttribute("id", "_xq3"), e.appendChild(h);
                var j = document.createElement("input");
                j.setAttribute("type", "hidden"), j.setAttribute("value", g), j.setAttribute("id", "_jX38"), document.body.appendChild(j);
                var k = document.createElement("div");
                k.setAttribute("id", "currentUser"), k.setAttribute("class", "dropdown"), k.innerHTML = "<button ondblclick=dblclick() class='btn btn-primary dropdown-toggle cuser' type=button data-toggle=dropdown><span><span class='user-profile profile-circle'><img class='client-profile-picture'></span></i>&nbsp;My Profile</span></button><ul class='dropdown-menu current-user-list'><li><a onClick=q1()>Dashboard</a></li><div class=divider></div><li><a onClick=q2()>Bookings</a></li><li><a onClick=q3()>Settings</a></li><div class=divider></div><li><a href=" + windowLocationS + "/logout>Logout</a></li></ul>", e.appendChild(k);
                var l = getCookie("_sYrV");
                "" === l && (set_cookie("_sYrV", encrypt, 0), sessionStorage.setItem("_sYrV", encrypt), window.onload = function() {
                    localStorage._q32x || (localStorage.setItem("_q32x", "true") /*,window.location.reload()*/ )
                })
            } else {
                var l = getCookie("_sYrV");
                "" !== l && (delete_cookie("_sYrV"), sessionStorage.removeItem("_sYrV"), sessionStorage.clear(), window.onload = function() {
                    localStorage._q32x || (localStorage.setItem("_q32x", "true") /*,window.location.reload()*/ )
                });
                var m = document.createElement("button");
                m.setAttribute("type", "button"), m.setAttribute("class", "btn current-button"), m.innerHTML = "Register", m.setAttribute("id", "btn_registerModal"), m.setAttribute("data-target", "#signinModal"), m.setAttribute("data-toggle", "modal"), m.setAttribute("onclick", "w()"), e.appendChild(m);
                var n = document.createElement("button");
                n.setAttribute("type", "button"), n.setAttribute("id", "btn_signinModal"), n.setAttribute("class", "btn current-button"), n.setAttribute("data-target", "#signinModal"), n.setAttribute("data-toggle", "modal"), n.setAttribute("onclick", "q()"), n.innerHTML = "Sign in", e.appendChild(n)
            }
        }
    }).then(function() {
        var a = document.querySelector(".right #_xq3");
        if (null !== a) {
            var b = document.getElementById("_jX38").value;
            getUserFromDB(b)
        }
    })
});
var delete_cookie = function(a) {
        document.cookie = a + "=;expires=Thu, 01 Jan 1970 00:00:01 GMT;path=/"
    },
    set_cookie = function(a, b, e) {
        var f = new Date;
        f.setTime(f.getTime() + 1e3 * (60 * (60 * (24 * e))));
        var g = "expires=" + f.toUTCString();
        document.cookie = a + "=" + b + ";" + g + ";path=/"
    };

function getCookie(a) {
    for (var h, b = a + "=", e = decodeURIComponent(document.cookie), f = e.split(";"), g = 0; g < f.length; g++) {
        for (h = f[g];
            " " == h.charAt(0);) h = h.substring(1);
        if (0 == h.indexOf(b)) return h.substring(b.length, h.length)
    }
    return ""
}

function qei() {
    var a = "",
        b = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    for (var e = 0; 5 > e; e++) a += b.charAt(Math.floor(Math.random() * b.length));
    return a
}
var dblclick = function() {
        var a = document.getElementById("__d17");
        a.style.display = "none", a.style.visibility = "hidden";
        var b = document.getElementById("_up17");
        b.style.display = "block", b.style.visibility = "visible"
    },
    q1 = function() {
        var a = document.getElementById("__d17");
        a.style.display = "none", a.style.visibility = "hidden";
        var b = document.getElementById("s_body");
        b.style.display = "block", b.style.visibility = "visible";
        var e = document.getElementById("_up17");
        e.style.display = "block", e.style.visibility = "visible";
        var f = document.querySelector(".settings_mysettings");
        f.style.display = "none", f.style.visibility = "hidden";
        var g = document.getElementById("btn_dashboard");
        g.style.backgroundColor = "darkblue", g.style.opacity = "0.5";
        var h = document.querySelector("#btn_dashboard a");
        h.style.color = "darkgray";
        var j = document.getElementById("btn_bookings");
        j.style.backgroundColor = null, j.style.opacity = null;
        var k = document.querySelector("#btn_bookings a");
        k.style.color = null;
        var l = document.getElementById("btn_settings");
        l.style.backgroundColor = null, l.style.opacity = null;
        var m = document.querySelector("#btn_settings a");
        m.style.color = null
    },
    q2 = function() {
        var a = document.getElementById("__d17");
        a.style.display = "none", a.style.visibility = "hidden";
        var b = document.getElementById("s_body");
        b.style.display = "block", b.style.visibility = "visible";
        var e = document.getElementById("_up17");
        e.style.display = "block", e.style.visibility = "visible";
        var f = document.querySelector(".settings_mysettings");
        f.style.display = "none", f.style.visibility = "hidden";
        var g = document.getElementById("btn_bookings");
        g.style.backgroundColor = "darkblue", g.style.opacity = "0.5";
        var h = document.querySelector("#btn_bookings a");
        h.style.color = "darkgray";
        var j = document.getElementById("btn_dashboard");
        j.style.backgroundColor = null, j.style.opacity = null;
        var k = document.querySelector("#btn_dashboard a");
        k.style.color = null;
        var l = document.getElementById("btn_settings");
        l.style.backgroundColor = null, l.style.opacity = null;
        var m = document.querySelector("#btn_settings a");
        m.style.color = null
    },
    q3 = function() {
        var a = document.getElementById("__d17");
        a.style.display = "none", a.style.visibility = "hidden";
        var b = document.getElementById("s_body");
        b.style.display = "block", b.style.visibility = "visible";
        var e = document.getElementById("_up17");
        e.style.display = "block", e.style.visibility = "visible";
        var f = document.querySelector(".settings_mysettings");
        f.style.display = "block", f.style.visibility = "visible";
        var g = document.getElementById("btn_settings");
        g.style.backgroundColor = "darkblue", g.style.opacity = "0.5";
        var h = document.querySelector("#btn_settings a");
        h.style.color = "darkgray";
        var j = document.getElementById("btn_dashboard");
        j.style.backgroundColor = null, j.style.opacity = null;
        var k = document.querySelector("#btn_dashboard a");
        k.style.color = null;
        var l = document.getElementById("btn_bookings");
        l.style.backgroundColor = null, l.style.opacity = null;
        var m = document.querySelector("#btn_bookings a");
        m.style.color = null
    };