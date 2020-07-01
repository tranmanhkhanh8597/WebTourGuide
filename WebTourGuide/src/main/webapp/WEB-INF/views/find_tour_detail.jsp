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
				<div id="content" class="columns-7 site-content tour-content column-reset" role="main">
					<div class="page-title">
						<h1>${lsTourId.name}</h1>
						<div class="rating-holder orange"><a data-fancybox-type="iframe" class="toolTipster fancybox cursorPointer tooltipstered" href="">
							<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></a>&nbsp;(6)
						</div>
					</div>
					<article class="post-content pad-clean">
						<div class="text-center">
							<p class="lead">${lsTourId.title}</p>
						</div>
						<hr>
						<p>${lsTourId.introduce}</p>
						<section class="page-inner-section">
							<h2>Journeys</h2>
							<p>${lsTourId.journeys}</p>
						</section>
						<section class="page-inner-section">
							<h2>Meeting Point + Tour Duration</h2>
							<p><b>Meeting Point Options:</b> Rail or Bus Station, Cruise Ship Port, Airport, Hotel, Address or Intersection, Monument/Building</p>
							<p><b>Duration:</b> ${lsTourId.tour_duration}</p>
						</section>
						<section class="page-inner-section">
							<h2>Transportation</h2>
							<p>${lsTourId.transportation}</p>
						</section>
						<section class="page-inner-section">
							<h2>What’s Included</h2>
							<p class="no-padding-bottom">${lsTourId.includes}</p>
						</section>
						<section class="page-inner-section">
							<h2>Estimated Local Cash Needed</h2>
							<p>150000 VND - Drinks</p>
						</section>
						<section class="page-inner-section">
							<h2>What’s Extra</h2>
							<p class="no-padding-bottom">Other: Drinks
								<br>Personal expenses</p>
						</section>
						<section class="page-inner-section">
							<h2>Restrictions</h2>
							<p>${lsTourId.retrictions}</p>
						</section>
						<h5 class="text-center">A Recent Review of this tour</h5>
						<section class="page-inner-section review-holder">
							<div class="rating-holder orange">
								<a  href=""><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></a>
							</div>
							<blockquote>
								<p>Anh is a great guide who provided an excellent introduction to the old quarter along with a very good selection of food.
									<br><cite>Peter S.</cite></p>
							</blockquote> 
						
					</article>
				</div>
				<aside class="columns-5 site-sidebar tour-sidebar column-reset">
					<div class="widget highlight book-tour">
						<div class="image-holder featured-image">
							<a target="photoViewer" rel="nofollow" href="">
								<img alt="Walking Hanoi street food tour" class="lazy" src="https://www.toursbylocals.com/images/guides/12/12728/2016260081238838.jpg" style="display: inline;">
							</a>
							<a target="photoViewer" rel="nofollow" href="">
								<center><i class="fa fa-camera"></i> View Gallery (6)</center>
							</a>
						</div>
						<div class="widget about-guide guideWidgetWhiteBoxStyle">
							<h2><a href=""><span class="tblGreen">Meet Your Guide</span></a></h2>
							<div class="guide-blurb">
								<div class="guide-profile-block row">
									<p class="guide-meta text-center"> 
										<span class="guideWidgetDisplayName">
											<a href=""><span class="too-far-future-color">${lsTourId.guiderName}</span></a>
										</span> &nbsp;&nbsp;&nbsp; ${lsTourId.location}
									</p>
								</div>
								<div class="icon-holder avatar-holder">
									<a href=""><img alt="Private tour guide Anh" class="lazy" src="https://www.toursbylocals.com/images/guides/12/12728/2014303085228468.jpg" style="display: block;"></a>
								</div>
								<div class="rating-holder orange">
									<a href=""><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></a>
									&nbsp;(48)
								</div>
								<p> My name is Anh and I was born and raised in Hanoi, Vietnam. I am a licensed tourist guide in Vietnam.,... <a href="">more</a> </p>
							</div>
							<div class="buttons-holder text-center"> <a rel="nofollow" class="button green" href="">Message ${lsTourId.guiderName}</a> </div>
						</div>
						<h2 class="paddingTen">
							<a class="orangeDisc" href="">Book this tour</a>
						</h2>
						<div class="tour-currency-holder">
							<div class="tour-currency-switch"> <b>Currency</b>
								<ul class="tour-currencies">
									<li class="active">USD</li>
									<li> <a rel="nofollow" class="toolTipster cursorPointer tooltipstered" href="">AUD</a>&nbsp;&nbsp; 
										<a rel="nofollow" class="toolTipster cursorPointer tooltipstered" href="">CAD</a>&nbsp;&nbsp; 								
									</ul>
							</div>
							<div class="tour-currency-price"> <b>Tour Price</b>
								<p>
									<select class="tourDetailsPopupStyle" name="47.116.1">
										<option value="0">345 USD for 8 people</option>
										<option value="1">310 USD for 7 people</option>
										<option value="2">275 USD for 6 people</option>
										<option value="3">240 USD for 5 people</option>
										<option value="4">205 USD for 4 people</option>
										<option value="5">170 USD for 3 people</option>
										<option value="6">135 USD for 2 people</option>
										<option selected="selected" value="7">100 USD for 1 person</option>
									</select>
								</p>
							</div>
						</div>
						<div class="tour-booking-holder positionRelative" id="viewDateTime"> 
							<b>Date</b>
							<br/>
							<input type="date" name="" placeholder="Ngày bắt đầu">
							<input type="date" name="" placeholder="Ngày kết thúc">
						</div>
					</div>
					<div class="borderBottom2pxWhite"></div>
					<div class="widget highlight tour-details widget-details">
						<h2>Tour Details</h2>
						<h3>Tour Type(s)</h3>
						<ul class="block-grid-2 widget-detail-grid">
							<li> <img width="60" height="60" alt="Local Experience" class="lazy" src="https://www.toursbylocals.com/images/tour-category-icons/local-experience.png" style="display: inline;"> <span>Local Experience</span> </li>
							<li> <img width="60" height="60" alt="Hiking and Walking" class="lazy" src="https://www.toursbylocals.com/images/tour-category-icons/hiking-and-walking.png" style="display: inline;"> <span>Hiking and Walking</span> </li>
							<li> <img width="60" height="60" alt="Food and Wine" class="lazy" src="https://www.toursbylocals.com/images/tour-category-icons/food-and-wine.png" style="display: inline;"> <span>Food and Wine</span> </li>
							<li> <img width="60" height="60" alt="City" class="lazy" src="https://www.toursbylocals.com/images/tour-category-icons/city.png" style="display: inline;"> <span>City</span> </li>
						</ul>
						<h3>Details</h3>
						<p class="tour-extra textAlignLeft"> <i class="fa fa-child"></i> Kid Friendly: Yes.
							<br> <i class="fa fa-wheelchair"></i> Friendly: No.
							<br> Maximum travelers: 8 </p>
						<h3>Language(s)</h3>
						<ul class="tour-language-list bar-chart-lists">
							<li> <b class="language"><small>Vietnamese</small></b>
								<div data-level="4" class="bar-chart-level"><span></span><span></span><span></span><span></span><b><small>fluent</small></b></div>
							</li>
							<li> <b class="language"><small>English</small></b>
								<div data-level="4" class="bar-chart-level"><span></span><span></span><span></span><span></span><b><small>fluent</small></b></div>
							</li>
						</ul>
					</div>
					<div class="post-share">
						<h5>Share This Tour</h5>
						<ul class="share-icons">
							<li><a href=""><i class="fa fa-twitter"></i></a></li>
							<li><a href=""><i class="fa fa-facebook-official"></i></a></li>
							<li><a href=""><i class="fa fa-envelope"></i></a></li>
						
						</ul>
					</div>
				</aside>
			</div>
			<div class="guide-tours-section" id="guide-tours">
				<div class="row">
					<div class="columns-6 column-center">
						<h3>Tours by Anh</h3>
						<p>See more of the tours offered by this guide.</p>
					</div>
					<div class="columns-12 column-center">
						<ul class="block-grid-3">
							<li class="marginBottom20">
								<div class="item tour-item">
									<div class="card-holder">
										<div class="image-holder">
											<a href=""><img alt="Mua Dancing Caves and Trang An adventure day tour with biking" class="lazy" src="https://www.toursbylocals.com/images/guides/12/12728/2019197214649462.jpg" style="display: inline;"></a>
										</div>
										<div class="card-box">
											<h3><a href="">Mua Dancing Caves and Trang An adventure,...</a></h3>
											<div class="rating-holder"> &nbsp;<small>unrated</small> </div>
											<p>Stunning view at Mua Cave and spectacular scenery sampan ride in Trang,...</p>
											<p class="meta"><a class="toolTipster tooltipstered" style="text-decoration: none; cursor: pointer;" href="javascript: void(0)">from&nbsp;275 USD&nbsp;per tour</a></p>
											<p><a class="toolTipster tooltipstered" style="cursor: pointer;" href="javascript: void(0)">(for&nbsp;up&nbsp;to&nbsp;10&nbsp;people)</a></p>
											<p> 8 hours</p> <a class="read-more" href="">learn more</a> 
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
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