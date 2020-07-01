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
<aside class="columns-4 site-sidebar region-sidebar column-reset">
						<div class="widget highlight" id="region-sidebar-search">
							<div class="closing">
								<div class="icon-holder">
									<i class="fa fa-thumbs-o-up fa-2x" aria-hidden="true"></i>
								</div>
								<div class="page-title-landing">
									<h3 class="ul-title">Testimonials</h3>
								</div>
								<div class="rating-holder green floatLeft">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>&nbsp;(565)
								</div>
								<br />
								<br />
								<p>
									<a  style="cursor: pointer;" href="javascript: void(0)">about ratings</a>
								</p>
								<p> Tour in Hanoi, Vietnam: 
									<br />
									<i>"Alex did a great job. This tour was the highlight of our two week vacation."</i>
								</p>
							</div>
							<div class="closing">
								<div class="icon-holder">
									<i class="fa fa-map-o fa-2x" aria-hidden="true"></i>
								</div>
								<div class="page-title-landing">
									<h3 class="ul-title">About ToursByLocals</h3>
								</div>
								<div class="floatLeft">
									<img border="0" alt="check" width="15" height="15" src="images/green-tick_15x15.jpg" />
									<b>4,580</b> Guides in 
									<b>166</b> Countries!
						
									<br />
									<span class="floatLeft">
										<img border="0" alt="check" width="15" height="15" src="images/green-tick_15x15.jpg" />
										<b>1,481,846</b> Travelers Served!
									</span>
								</div>
								<br />
								<br />
								<br />
								<a href="" title="How ToursByLocals works" target="_blank" class="read-more">Learn More about how ToursByLocals works</a>
							</div>
						</div>
					</aside>
</body>
</html>