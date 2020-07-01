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
					<div class="page-title">
						<h1>Find a Tour</h1>
					</div>
					<div id="content" class="columns-8 site-content region-content column-right column-reset" role="main">
						<div class="hp-section hp-banner-bottom">
							<div class="columns-12 search-column">
							<h4>Where are you going?</h4>
							<form name="f_69_1" method="get" class="inline-search-form" action="listTourByLocation">
							<input class="form-control pl-sm" name="location-start-2" id="location-start-2" type="text" value="" placeholder="Vị trí của bạn?" required >
							<input type="hidden" name="location-start" value="" id="id_location_start">
							<button class="button orange" type="submit" style="margin-top: 1.25rem; float: right;">Search</button>
							</form>
						</div>
					</div>
					<div id="id_map" style="width:100%; height:400px; overflow: hidden; z-index: 3"></div>
					</div>
					<jsp:include page="left_sidebar.jsp"></jsp:include>
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
		<script src="javascript/order.js" type="text/javascript"></script>
		<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyBZOT_-R6sqnAR4kmbRLx-LHCX2Hbm5GgA&amp&libraries=places&callback=initMapAutocomplete"></script>

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