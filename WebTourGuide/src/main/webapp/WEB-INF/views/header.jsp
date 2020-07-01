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
<body>
<header class="site-header" role="banner">
            <div class="row">
                <div class="columns-3 site-branding">
                    <a href="">
                        <img alt="" src="" />
                    </a>
                </div>
                <div class="columns-9 column-right site-navigation">
                    <ul class="main-menu">
                        <p class="header-tagline-style" align="right">Connecting travelers with local guides worldwide</p>
                        <li>
                            <a href="search_tour">Find A Tour</a>
                        </li>
                        <li>
                            <a href="search_guide">Find A Guide</a>
                        </li>
                        <li class="dropdown">
                            <button class="dropbtn">Login</button>
                            <div class="dropdown-content" align="center">
                                <a rel="nofollow" href="login.jsp">Traveler Login</a>
                                <a rel="nofollow" href="">Guide Login</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <a href="#" class="fs-mobile-trigger burger-trigger">
                <span></span>
                <span></span>
                <span></span>
            </a>
        </header>
        <nav class="mobile-nav-container">
            <ul class="mobile-menu">
                <li>
                    <a href="search_tour">
                        <img src="images/icon-direction.png" />Find a Tour
                    </a>
                </li>
                <li>
                    <a href="search_guide">
                        <img src="images/icon-guide.png" />Find a Guide
                    </a>
                </li>
                <li class="highlight">
                    <a rel="nofollow" href="login.jsp">Traveler Login</a>
                </li>
                <li class="highlight">
                    <a rel="nofollow" href="">Guide Login</a>
                </li>
            </ul>
        </nav>
</body>
</html>