<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="no-js" lang="en-CA">
    <head>
        <title>Hanoi-Vietnam - TMKProject</title>
        <base href="" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width" />
        <link href="css/pikaday.min.css" rel="stylesheet" />
        <link href="css/main-style.min.css" rel="stylesheet" />
        <link href="css/tbl-find_place.css" rel="stylesheet" type="text/css" />
        <link href="css/font-css/fonts.min.css" rel="stylesheet" />
        <link href="css/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
        <link href="javascript/fancybox/jquery.fancybox.css" rel="stylesheet" />
        <script language="JavaScript" type="text/javascript" src="javascript/jquery-2.1.3.min.js"></script>
        <script src="javascript/jquery.lazy.min.js" type="text/javascript"></script>
        <script language="JavaScript" type="text/javascript" src="javascript/jquery.autocomplete.min.js"></script>
        <script src="javascript/imageMapResizer.js" type="text/javascript"></script>
        <script>
        $(document).ready(function() {
            $(".fancybox").fancybox({
                maxWidth: 800,
                maxHeight: 600,
                fitToView: false,
                width: "70%",
                height: "70%",
                autoSize: false,
                closeClick: false,
                openEffect: "none",
                closeEffect: "none",
            });
        });
        </script>
            <script type="text/javascript">
        function disableButtonFunction() {
            document.getElementById("searchButton").disabled = true;
            document.getElementById("searchButton").value = "Please wait...";
            document.getElementById("searchButton").style.backgroundColor = "#808080";
            document.getElementById("searchButton").style.cursor = "none";
            window.setTimeout(function() {
                document.getElementById("hiddenSearchButton").click();
            }, 0001);
        }
        </script>
            <script>
        $(document).ready(function() {
            $("input").bind("keydown", function(event) {
                var keycode = event.keyCode ? event.keyCode : event.which ? event.which : event.charCode;
                if(keycode == 13) {
                    document.getElementById("searchButton").click();
                    return false;
                } else {
                    return true;
                }
            });
        });
        </script>
    </head>
    <body class="page-guide-results">
        <jsp:include page="header.jsp"></jsp:include>
        <section id="main" class="site-main">
            <div class="row content-area">
                <div id="content" class="columns-12 site-content" role="main">
                    <ul class="block-grid-2">
                        <li style="border-right: 1px solid lightgray; height: 100%; padding: 25px;">
                            <div class="page-title">
                                <h1>I'm a Returning TMKProject Traveler</h1>
                                <p> Tour Guides, please use the <a href="">TOUR&nbsp;GUIDE&nbsp;login</a>.
                                    <br>Travel Agents, please use the <a href="profile.html">AGENT&nbsp;login</a>. </p>
                            </div>
                            <div class="login-content row">
                                <div class="columns-12 column-center column-reset">
                                    <form name="adminLoginAction" method="get" class="login-form background-form" action="adminLoginAction">
                                        <div class="form-section">
                                            <div class="form-field">
                                                <label>Email</label>
                                                <div class="input-holder">
                                                    <div class="icon-holder"> <i class="fa fa-envelope-o" style="font-size: 1.5em; padding: 12px;"></i> </div>
                                                    <input placeholder="e.g., youremail@email.com" tabindex="1" type="text" name="loginEmail"> </div>
                                            </div>
                                            <div class="form-field">
                                                <label>Password</label>
                                                <div class="input-holder">
                                                    <div class="icon-holder"> 
                                                        <img src="https://www.toursbylocals.com/images/icon-lock.png"> 
                                                    </div>
                                                    <input type="password" tabindex="2" name="loginPassword"> 
                                                </div>
                                                <br><a href="">forgot password?</a> 
                                            </div>
                                        </div>
                                        <div class="text-center">
                                            <input tabindex="3" class="button green" type="submit" value="Login" name=""> 
                                        </div>
                                        <br>
                                        <input type="checkbox" name="" value="">&nbsp;Remember login on this computer

                                    </form>
                                </div>
                            </div>
                        </li>                   
                </div>
            </div>
        </section>
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- #colophon -->
        <script src="javascript/packery.pkgd.min.js" type="text/javascript"></script>
        <script src="javascript/moment.min.js" type="text/javascript"></script>
        <script src="javascript/pikaday.min.js" type="text/javascript"></script>
        <script src="javascript/fancybox/jquery.fancybox.pack.js" type="text/javascript"></script>
        <script src="javascript/site-main.min.js" type="text/javascript"></script>

        <script type="text/javascript">
            $(function() {
                $(".lazy").lazy({
                    effect: "fadeIn",
                    effectTime: 1000,
                    threshold: 0,
                });
            });
            </script>
                        <script>
            var pickerStart = new Pikaday({
                field: document.getElementById("datepickerStart"),
                firstDay: 0,
                format: "YYYY-MM-DD",
                minDate: new Date(),
                maxDate: new Date(2021, 11, 31),
                yearRange: [2000, 2021],
                onSelect: function() {
                    if(pickerEnd.getDate() < this.getDate()) {
                        pickerEnd.setDate(this.getDate());
                    }
                },
            });
            var pickerEnd = new Pikaday({
                field: document.getElementById("datepickerEnd"),
                firstDay: 0,
                format: "YYYY-MM-DD",
                minDate: new Date(),
                maxDate: new Date(2021, 11, 31),
                yearRange: [2000, 2021],
            });
    
        </script>
    
    </body>
</html>