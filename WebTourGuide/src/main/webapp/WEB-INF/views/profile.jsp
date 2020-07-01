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
        
        <nav class="mobile-nav-container">
            <ul class="mobile-menu">
                <li>
                    <a href="">
                        <img src="images/icon-direction.png" />Find a Tour
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="images/icon-guide.png" />Find a Guide
                    </a>
                </li>
                <li class="highlight">
                    <a rel="nofollow" href="">Traveler Login</a>
                </li>
                <li class="highlight">
                    <a rel="nofollow" href="">Guide Login</a>
                </li>
            </ul>
        </nav>
        <section id="main" class="site-main">
        <div class="row content-area">
            <div id="content" class="columns-9 site-content region-content column-right column-reset" role="main">
                <h4 class="account-pagetitle">My Account<hr class="pagetitle-hr"></h4>
                <div class="card-holder no-shadow">
                    <h3 class="floatLeft">Upcoming Tours</h3> <span class="account-content-box-info floatRight">We recommend you print the tour details and take a copy with you</span> </div>
                <p class="no-padding-bottom"><i>-------- The list is empty --------</i></p>
                <br>
                <br>
                <div class="card-holder no-shadow">
                    <h3 class="floatLeft">Tours awaiting your rating and comments</h3> </div>
                <p class="no-padding-bottom"><i>-------- The list is empty --------</i></p>
                <br>
                <br>
                <div class="card-holder no-shadow">
                    <h3 class="floatLeft">Tours you've added to your wish list</h3> </div>
                <p><i>-------- The list is empty --------</i></p>
                <br>
                <br> </div>
            <aside class="columns-3 site-sidebar region-sidebar column-reset" style="padding-right: 0px;">
                <div class="widget highlight" id="region-sidebar-search" style="padding-left: 0px;">
                    <h5>&nbsp;<img border="0" width="12" height="12" src="https://www.toursbylocals.com/images/pixel.gif"><a style="text-decoration: none; color: #FFA500;" href="">My Account</a></h5>
                    <h5>&nbsp;<img border="0" width="12" height="12" src="https://www.toursbylocals.com/images/pixel.gif"><a style="text-decoration: none;" href="">Messages</a></h5>
                    <h5>&nbsp;<img border="0" width="12" height="12" src="https://www.toursbylocals.com/images/pixel.gif"><a style="text-decoration: none;" href="">Purchase History</a></h5>
                    <h5>&nbsp;<img border="0" width="12" height="12" src="https://www.toursbylocals.com/images/pixel.gif"><a style="text-decoration: none;" href="">My Ratings</a></h5>
                    <h5>&nbsp;<img border="0" width="12" height="12" src="https://www.toursbylocals.com/images/pixel.gif"><a style="text-decoration: none;" href="">Update My Info</a></h5>
                    <h5>&nbsp;<img border="0" width="12" height="12" src="https://www.toursbylocals.com/images/pixel.gif"><a style="text-decoration: none;" href="">Account Options</a></h5> </div>
            </aside>
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