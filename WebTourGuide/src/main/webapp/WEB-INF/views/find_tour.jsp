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
			<div class="header" id="filters">
				<div class="columns-6 textAlignRight">
					<a class="button square find-tour-guide-filter" onclick="toggleDateOpenClose()">DATES</a>
					<a class="button square find-tour-guide-filter" onclick="toggleDurationOpenClose()">DURATION</a>
					<a class="button square find-tour-guide-filter" onclick="toggleMoreFiltersOpenClose()">MORE</a>
				</div>
				<div class="columns-6">
					<form>
						<div class="form-quarter">
							<input onkeyup="sync(this)" placeholder="Search by Keyword" class="FFFFFF" type="text" name="" />
						</div>
					</form>
					<script>
				function sync(textbox) {
					document.getElementById("keywordFilterTextBox").value = textbox.value;
				}
				</script> &nbsp;
				
					<input onclick="disableButtonFunction()" id="searchButton" type="submit" value="Search" class="button orange square isDesktopFilters" /> &nbsp; 
					<a rel="nofollow" href="">CLEAR ALL FILTERS</a>
				</div>
				<form method="post" class="ol-form" style="padding: 0;" action="">
					<div class="columns-8 column-center">
						<div class="flexcontainer" id="datesOpen" style="display: none;">
							<div class="columns-3 pageOverlayModal highlight">
								<div class="textAlignRight">
									<a onclick="toggleDateOpenClose()" class="cursorPointer too-far-future-color">
										<i class="fa fa-times fa-lg"></i>
									</a>
								</div>
								<br />
								<ul class="form-fields-list block-grid-2">
									<li class="no-disc-form">
										<input readonly="" placeholder=" from" class="stylish FFFFFF" id="datepickerStart" type="text" name="" />
									</li>
									<li class="no-disc-form">
										<input readonly="" placeholder=" to" class="stylish FFFFFF" id="datepickerEnd" type="text" name="" />
									</li>
								</ul>
								<br />
								<div class="text-center">
									<input class="button orange square" type="submit" value="Apply" name="" />
								</div>
								<br />
							</div>
						</div>
					</div>
					<div class="columns-8 column-center">
						<div class="flexcontainer" id="durationOpen" style="display: none;">
							<div class="columns-3 pageOverlayModal highlight">
								<div class="textAlignRight">
									<a onclick="toggleDurationOpenClose()" class="cursorPointer too-far-future-color">
										<i class="fa fa-times fa-lg"></i>
									</a>
								</div>
								<br />
								<input type="checkbox" name="" value="" />&nbsp;Half Day (up to 5 hours)
							
								<br />
								<br />
								<input type="checkbox" name="" value="" />&nbsp;Full Day (more than 5 hours)
							
								<br />
								<br />
								<input type="checkbox" name="" value="" />&nbsp;Multiple Days
							
								<br />
								<br />
								<div class="text-center">
									<input class="button orange square" type="submit" value="Apply" name="" />
								</div>
								<br />
							</div>
						</div>
					</div>
					<div class="columns-11 column-center">
						<div class="flexcontainer" id="moreFiltersOpen" style="display: none;">
							<div class="columns-10 pageOverlayModal highlight">
								<div class="textAlignRight">
									<a onclick="toggleMoreFiltersOpenClose()" class="cursorPointer too-far-future-color">
										<i class="fa fa-times fa-lg"></i>
									</a>
								</div>
								<ol class="block-grid-5 form-field-lists">
									<span class="displayNone">
										<input placeholder="Search by Keyword" class="FFFFFF" id="keywordFilterTextBox" type="text" name="keywordFilterTextBox" />
									</span>
									<li class="accordion-item">
										<input class="accordion-item-input" type="checkbox" name="accordion" id="item1" checked="" />
										<label for="item1" class="accordion-item-hd">
											<small>Special Interest</small>
											<span class="accordion-item-hd-cta">▲</span>
										</label>
										<div class="accordion-item-bd" style="padding-left: 5px; padding-top: 0px;">
											<input type="radio" name="categories" value="55.1.1.1.25.21" checked="checked" />&nbsp;&nbsp;Any
										
											<br />
											<input type="radio" value='
												<com.tbl.model.Category pk:"8">' name="categories" />&nbsp;&nbsp;Adventure / Active

										
												<br />
											</div>
										</li>
										<li class="accordion-item">
											<input class="accordion-item-input" type="checkbox" name="accordion" id="item2" checked="" />
											<label for="item2" class="accordion-item-hd">
												<small>Activity Level</small>
												<span class="accordion-item-hd-cta">▲</span>
											</label>
											<div class="accordion-item-bd" style="padding-left: 5px; padding-top: 0px;">
												<input type="radio" name="activityLevels" value="55.1.1.1.25.29" checked="checked" />&nbsp;&nbsp;Any
										
												<br />
												<input type="radio" value="Minimal" name="activityLevels" />&nbsp;&nbsp;Minimal
										
												<br />
											</div>
										</li>
										<li class="accordion-item">
											<input class="accordion-item-input" type="checkbox" name="accordion" id="item6" checked="" />
											<label for="item6" class="accordion-item-hd">
												<small>Language</small>
												<span class="accordion-item-hd-cta">▲</span>
											</label>
											<div class="accordion-item-bd" style="padding-left: 5px; padding-top: 0px;">
												<div class="show-maintenance-alert">
													<!-- <p class="no-padding-bottom textAlignLeft"> Use the 'Control' key to select multiple. </p> -->
												</div>
												<select class="selectBrowserNoHeight" name="languageBrowser" size="10" multiple="multiple">
													<option value="0">American Sign Language</option>
													<option value="1">Arabic</option>
												</select>
											</div>
										</li>
										<li class="accordion-item">
											<input class="accordion-item-input" type="checkbox" name="accordion" id="item5" checked="" />
											<label for="item5" class="accordion-item-hd">
												<small>Number of Travelers</small>
												<span class="accordion-item-hd-cta">▲</span>
											</label>
											<div class="accordion-item-bd" style="padding-left: 5px; padding-top: 0px;">
												<input type="radio" name="numberOfTravelers" value="55.1.1.1.25.43" checked="checked" />&nbsp;&nbsp;Any
										
												<br />
												<input type="radio" value="1-2" name="numberOfTravelers" />&nbsp;&nbsp;1-2
										
												<br />
												<br /> Tours can often be customized to allow more travelers than the maximum indicated. Ask the guide!
										
												<br />
											</div>
										</li>
										<li class="accordion-item">
											<input class="accordion-item-input" type="checkbox" name="accordion" id="item4" checked="" />
											<label for="item4" class="accordion-item-hd">
												<small>Suitable For</small>
												<span class="accordion-item-hd-cta">▲</span>
											</label>
											<div class="accordion-item-bd" style="padding-left: 5px; padding-top: 0px;">
												<input type="checkbox" name="" value="" />&nbsp;&nbsp;Wheelchair accessible
										
												<br />
												<input type="checkbox" name="" value="" />&nbsp;&nbsp;Kids 
											</div>
										</li>
									</ol>
									<br />
									<div class="text-center">
										<input onclick="disableButtonFunction()" id="searchButton" type="button" class="button square orange" value="" />
										<input class="displayNone" id="hiddenSearchButton" type="submit" value="Submit" name="" />
										<br />
										<br />
										<a rel="nofollow">CLEAR ALL FILTERS</a>
										<br />
									</div>
								</div>
							</div>
						</div>
					</form>
			</div>
			<div id="datesClose"></div>
			<div id="durationClose"></div>
			<div id="moreFiltersClose"></div>
			<script>
				function toggleDateOpenClose() {
					var datesClose = document.getElementById("datesClose");
					var datesOpen = document.getElementById("datesOpen");
					var durationClose = document.getElementById("durationClose");
					var durationOpen = document.getElementById("durationOpen");
					var moreFiltersClose = document.getElementById("moreFiltersClose");
					var moreFiltersOpen = document.getElementById("moreFiltersOpen");
					if(datesClose.style.display === "none") {
						datesClose.style.display = "block";
						datesOpen.style.display = "none";
					} else {
						datesClose.style.display = "none";
						datesOpen.style.display = "block";
					}
					if(durationClose.style.display === "none") {
						durationClose.style.display = "block";
						durationOpen.style.display = "none";
					}
					if(moreFiltersClose.style.display === "none") {
						moreFiltersClose.style.display = "block";
						moreFiltersOpen.style.display = "none";
					}
				}

				function toggleDurationOpenClose() {
					var durationClose = document.getElementById("durationClose");
					var durationOpen = document.getElementById("durationOpen");
					var datesClose = document.getElementById("datesClose");
					var datesOpen = document.getElementById("datesOpen");
					var moreFiltersClose = document.getElementById("moreFiltersClose");
					var moreFiltersOpen = document.getElementById("moreFiltersOpen");
					if(durationClose.style.display === "none") {
						durationClose.style.display = "block";
						durationOpen.style.display = "none";
					} else {
						durationClose.style.display = "none";
						durationOpen.style.display = "block";
					}
					if(moreFiltersClose.style.display === "none") {
						moreFiltersClose.style.display = "block";
						moreFiltersOpen.style.display = "none";
					}
					if(datesClose.style.display === "none") {
						datesClose.style.display = "block";
						datesOpen.style.display = "none";
					}
				}

				function toggleMoreFiltersOpenClose() {
					var moreFiltersClose = document.getElementById("moreFiltersClose");
					var moreFiltersOpen = document.getElementById("moreFiltersOpen");
					var datesClose = document.getElementById("datesClose");
					var datesOpen = document.getElementById("datesOpen");
					var durationClose = document.getElementById("durationClose");
					var durationOpen = document.getElementById("durationOpen");
					if(moreFiltersClose.style.display === "none") {
						moreFiltersClose.style.display = "block";
						moreFiltersOpen.style.display = "none";
					} else {
						moreFiltersClose.style.display = "none";
						moreFiltersOpen.style.display = "block";
					}
					if(durationClose.style.display === "none") {
						durationClose.style.display = "block";
						durationOpen.style.display = "none";
					}
					if(datesClose.style.display === "none") {
						datesClose.style.display = "block";
						datesOpen.style.display = "none";
					}
				}
				</script>
			<script>
				window.onscroll = function() {
					stickFilters();
				};
				var header = document.getElementById("filters");
				var sticky = header.offsetTop;

				function stickFilters() {
					if(window.pageYOffset > sticky) {
						header.classList.add("sticky");
					} else {
						header.classList.remove("sticky");
					}
				}
			</script>
			<div class="row content-area">
				<div id="content" class="columns-12 site-content" role="main">
					<div class="page-title">
						<h1>Local Guides in Hanoi-Vietnam</h1>
					</div>
					<div id="content" class="columns-8 site-content region-content column-right column-reset" role="main">
						<p> There are 157 tours in Hanoi-Vietnam. Set filters (above) and click on "APPLY" to narrow your search. &nbsp;Displaying 53 of 157 tours. </p>
						<p>
							<b><a rel="nofollow" href="">Hanoi Overview</a>:</b> &nbsp;Discover the delights of ancient Hanoi with a friendly private guide from ToursByLocals. Get a local's perspective on this enchanting city and explore Hanoi at your own pace with a guide who is eager,... 
						</p>
						<ul class="block-grid-3">
						<c:forEach  items="${lsTourCustom}" var ="lsTourCustom">
							<li class="marginBottom20">
								<div class="item tour-item">
									<div class="card-holder">
										<div class="image-holder lazy-container">
											<a target="_blank" rel="nofollow" href="">
												<img alt="Hanoi beauty through the eyes of locals" class="lazy" src="https://www.toursbylocals.com/images/guides/26/26868/2018221004703330.jpg" style="display: inline;">
											</a>
										</div>
										<div class="card-box">
											<h3>
												<a target="_blank" rel="nofollow" href="">${lsTourCustom.name}</a>
											</h3>
											<div class="rating-holder">
												<a   style="text-decoration: none; cursor: pointer;" href="">&nbsp;
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>&nbsp;(1)
												</a>
											</div>
											<p>${lsTourCustom.title}</p>
											<p class="meta">
												<a class="toolTipster tooltipstered" style="text-decoration: none; cursor: pointer;" href="javascript: void(0)">${lsTourCustom.price}</a>
											</p>
											<p>
												<a class="toolTipster tooltipstered" style="cursor: pointer;" href="javascript: void(0)">${lsTourCustom.limit_person}</a>
											</p>
											<p>${lsTourCustom.tour_duration}</p>
											<a rel="nofollow" target="_blank" class="read-more" href="find_tour_detail">Learn More</a>
										</div>
									</div>
								</div>
							</li>
							</c:forEach>
						</ul>
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