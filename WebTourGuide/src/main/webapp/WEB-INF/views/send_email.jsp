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
<div class="columns-12">
<div class="page-title"><h1>Meet our Guides</h1></div>
</div>
<aside class="columns-5 site-sidebar tour-sidebar column-right column-reset">
<div class="widget about-guide highlight">
<h2>About the Guide</h2>
<div class="guide-blurb">
<div class="icon-holder avatar-holder">
<img data-src="https://www.toursbylocals.com/images/guides/31/31735/2018230231041228.jpg" alt="Private tour guide Vu Thu Trang" class="lazy" src="https://www.toursbylocals.com/images/pixel.gif" />
</div>
<div class="rating-holder"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><b>Guide Rating</b></div>
<p>Xin chao! Hello my friends, My name is Vu. Welcome to Vietnam, let me guide you through Vietnam,...</p>
<a class="read-more" href="/TBL/WebObjects/ToursByLocals.woa/1/wo/FeWkPPcr9Bo2GKbEhebOOM/5.35">About Vu Thu Trang</a> 
</div>
</div>
<br/><div class="text-center"><a target="instructionsviewer" onClick="var w=window.open('/TBL/WebObjects/ToursByLocals.woa/1/wa/textPopup?c=28&wosid=FeWkPPcr9Bo2GKbEhebOOM','instructionsviewer','toolbar=no,location=no,status=no,menubar=no,resizable=yes,scrollbars=yes,width=700,height=600'); w.focus(); return false" class="read-more" href="/TBL/WebObjects/ToursByLocals.woa/1/wa/textPopup?c=28&wosid=FeWkPPcr9Bo2GKbEhebOOM">booking&nbsp;process</a></div>
</aside>
<div id="content" class="columns-7 site-content column-reset" role="main">
<article class="post-content pad-clean">
<h2>Contact this Guide</h2>
	<form method="get" class="contact-form ul-form" action="sendemail">
		<ul class="form-field-lists">
			<div class="form-field">
				<label for="first_name">Given (First) Name</label>
				<input size="20" type="text" name="firstName" />
			</div>
			<div class="form-field">
				<label for="last_name">Family (Last) Name</label>
				<input size="20" type="text" name="lastName" />
			</div>
			<div class="form-field">
				<label for="email_address">Email Address</label>
				<input size="32" type="text" name="email" />
			</div>
		</ul>
		<ul class="form-field-lists">
			<div class="form-field">
				<label for="comments">Questions or Message</label>
				<textarea cols="60" rows="5" name="content"></textarea>
			</div>
		</ul>
			<div class="text-center">
			<br/><a class="button account" href="">cancel</a>&nbsp;&nbsp;&nbsp;<input type="submit" value="Send email" name="41.1.23.23" />
			</div>
			<input type="hidden" name="wosid" value="FeWkPPcr9Bo2GKbEhebOOM" />
	</form>



</article>
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