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
                    <div class="page-title">
                        <h1>Meet our Guides</h1>
                        <p>Get to know the person behind the tour</p>
                    </div>
                </div>
                <div id="content" class="columns-7 site-content column-reset" role="main">
                    <div class="guide-profile-block row">
                        <div class="columns-4">
                            <div class="image-holder"> 
                                <img alt="Private tour guide Junie" src="https://www.toursbylocals.com/images/guides/31/31735/2018230231041228.jpg">
                                <br> 
                                <a target="photoViewer" rel="nofollow" onclick="" href=""><i class="fa fa-camera"></i>&nbsp;View Photos&nbsp;(1)</a> 
                            </div>
                        </div>
                        <div class="columns-8">
                            <h2>${lsGuiderId.fullName}</h2>
                            <p class="guide-meta">${lsGuiderId.country}</p>
                            <p>${lsGuiderId.biography}</p>
                            <div class="button-holder"> <a rel="nofollow" class="button green" href="emailpage">Message ${lsGuiderId.fullName}</a> 
                                <a href="#guide-tours" class="read-more smooth-scroll">View All Tours</a> 
                            </div>
                        </div>
                    </div>
                    <article class="post-content">
                        <p>I am a keen traveler like yourself. I have my own tour business.
                            <br>
                            <br>Who know the best way to approach new culture where you meet people, families, enjoy nice food, capture moment of life &amp; people in beautiful photos - locals, we are, I am! And I would love to explore this beauty with you.
                            <br>
                            <br>"Life is a journey, not a destination"
                            <br>.
                        </p>
                      
                        <h5 align="center">A Recent Review of this guide</h5>
                        <section class="page-inner-section review-holder">
                            <div class="rating-holder orange">
                                <a href=""><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></a>
                            </div>
                            <blockquote>
                                <p>${lsGuiderId.review}
                                <br><cite>Tim Paddison</cite></p>
                            </blockquote> 
                            <a data-fancybox-type="iframe" class="read-more fancybox" title="Click the stars to see the detailed ratings for this guide´s tours." href="">Read Reviews</a> 
                        </section>
                        <section class="page-inner-section">
                            <h2>Credentials</h2>
                            <p>${lsGuiderId.credentials}</p>
                        </section>
                        <section class="page-inner-section">
                            <h5 class="text-center">Restrictions</h5>
                            <p>${lsGuiderId.retrictions}
                                <br>If you come from cruises, please contact me before make any bookings.
                                <br>Thank you.</p>
                        </section>
                    </article>
                </div>
                <aside class="columns-5 site-sidebar guide-sidebar column-reset">
                    <div class="widget highlight card-holder guide-details widget-details">
                        <h2>Guide Details</h2>
                        <h3>Guide Rating</h3>
                        <div class="rating-holder orange"> <a class="toolTipster fancybox cursorPointer tooltipstered" href="">
                            <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
                            </a>&nbsp;96&nbsp;reviews
                            <br><a class="read-more fancybox" title="Click the stars to see the detailed ratings for this guide´s tours." href="">Read Reviews</a> 
                        </div>
                        <h3>Lives In</h3>
                        <p class="guide-lives-in">${lsGuiderId.country}</p>
                        <h3>Language(s)</h3>
                        <p class="tour-extra text-center"><a target="instructionsviewer" rel="nofollow" href="">explanation</a></p>
                        <ul class="tour-language-list bar-chart-lists">
                            <li> <b class="language"><small>English</small></b>
                                <div data-level="4" class="bar-chart-level"><span></span><span></span><span></span><span></span><b><small>fluent</small></b></div>
                            </li>
                            <li> <b class="language"><small>Vietnamese</small></b>
                                <div data-level="1" class="bar-chart-level"><span></span><span></span><span></span><span></span><b><small>basic</small></b></div>
                            </li>
                        </ul>
                        <h3>Tours Given</h3>
                        <div class="guide-tours-given">
                            <div class="tour-scroe"><span>190</span></div>
                            <p><b>First tour on</b>
                            <br><i>${lsGuiderId.firstTour}</i></p>
                        </div>
                        <h3>Guide Number</h3>
                        <h3 class="text-center"><b>#664</b></h3> 
                    </div>
                    <div class="post-share">
                        <h5>Share This Guide</h5>
                        <ul class="share-icons">
                            <li><a href=""><i class="fa fa-twitter"></i></a></li>
                            <li><a href=""><i class="fa fa-facebook-official"></i></a></li>
                            <li><a ><i class="fa fa-envelope"></i></a></li>
                            <li> 
                                <a class="cursorPointer"><i class="fa fa-clipboard"></i></a>
                            </li>
                        </ul>
                    </div>
                </aside>
            </div>
            <div class="guide-contact-section">
                <div class="icon-holder avatar-holder"> <img alt="Private tour guide Junie" src="https://www.toursbylocals.com/images/guides/31/31735/2018230231041228.jpg"> </div>
                <div class="row">
                    <div class="columns-6 column-center">
                        <h3>Contact this Guide</h3>
                        <p>Questions about the tour? Not seeing exactly what you’re looking for? Contact this guide with questions, or to create a custom itinerary for you and your travel companions.</p> 
                        <a rel="nofollow" class="button orange" href="emailpage">Message ${lsGuiderId.fullName}</a>
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