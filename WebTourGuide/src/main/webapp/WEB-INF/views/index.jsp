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
           <div class="hp-section hp-banner" style="background-image: url(https://www.toursbylocals.com/images/homepage/diagonalbanner.jpg);">
                <div class="row">
                    <div class="columns-10 column-center"><h1>&nbsp;</h1> </div>
                </div>
            </div>
            <div class="hp-section hp-banner-bottom">
                <div class="row">
                    <div class="columns-12">
                        <div class="columns-3 search-column">
                            <h4 class="textAlignLeft">Where are you going?</h4>
                            <form name="" method="post" class="inline-search-form" action="">
                                <input id="selectPlaceIndex" type="hidden" value="-2" name="selectPlaceIndex">
                                <input size="40" onblur="defaultPlaceNameFld();" onfocus="clearDefaultText();" class="textAlignLeft ac_input" id="thePlaceName" type="text" name="thePlaceName" autocomplete="off">
                            </form>
                        </div>
                        <div class="columns-2 search-column">
                            <div class="showOnDesktop">
                                <h4 class="textAlignLeft"><span class="fontSize10"><a>&nbsp;</a></span></h4>
                            </div>
                            <form name="f_61" method="post" class="inline-search-form" action="">
                                <input readonly="" placeholder=" From" class="stylish" id="datepickerStart" type="text" name="" aria-label="Use the arrow keys to pick a date">
                            </form>
                        </div>
                        <div class="columns-2 search-column">
                            <div class="showOnDesktop">
                                <h4>&nbsp;</h4>
                            </div>
                            <form name="f_63" method="post" class="inline-search-form" action="">
                                <input readonly="" placeholder=" To" class="stylish" id="datepickerEnd" type="text" name="63.3.1" aria-label="Use the arrow keys to pick a date">
                            </form>
                        </div>
                        <div class="columns-2 search-column">
                            <div class="showOnDesktop">
                                <h4>&nbsp;</h4></div>
                            <div class="showOnDesktop"><a id="searchButton" href="search_tour" class="button orange square minWidth200">Find A Tour</a></div>
             
                        </div>
                        <div class="columns-3 block-column">
                            <div class="icon-holder marginLeft75"></div>
                            <p><img src="https://www.toursbylocals.com/images/hp-boat.png"></p> 
                            <a class="read-more" href="">Shore Excursion Planner</a> 
                        </div>
                    </div>
                </div>
            </div>
            <div class="hp-section hp-intro">
                <div class="row">
                    <div class="columns-8 column-center intro-column column-reset">
                        <div class="number-counter"><span>1</span><span>4</span><span>8</span><span>1</span><span>8</span><span>5</span><span>7</span></div>
                        <h3>Travelers Served</h3>
                        <h2>4593 Guides in 167 Countries</h2>
                        <p>Discover the world with ToursByLocals! Our private tours offer you a unique and personalized experience in any destination.</p>
                    </div>
                    <div class="columns-12 column-clear intro-info-column">
                        <ul class="block-grid-4 intro-info-grid">
                            <li>
                                <div class="icon-holder"> <img class="lazy" src="https://www.toursbylocals.com/images/hp-hand-picked-guides.png" style="display: inline;"> </div>
                                <p class="tblGreen">Hand Picked Guides</p>
                            </li>
                            <li>
                                <div class="icon-holder"> <img class="lazy" src="https://www.toursbylocals.com/images/hp-24-7-customer-support.png" style="display: inline;"> </div>
                                <p class="tblGreen">24/7 Customer Support</p>
                            </li>
                            <li>
                                <div class="icon-holder"> <img class="lazy" src="https://www.toursbylocals.com/images/icon-bulb.png" style="display: inline;"> </div>
                                <p class="tblGreen">Every tour private and customizable</p>
                            </li>
                            <li>
                                <div class="icon-holder"> <img class="lazy" src="https://www.toursbylocals.com/images/hp-verified-customer-reviews.png" style="display: inline;"> </div>
                                <p class="tblGreen">Verified Customer Reviews</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="guide-tours-section" id="guide-tours">
                <div class="row">
                    <div class="columns-6 column-center">
                        <h3>Tours trong nước</h3><br/>
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
                                            <p>Stunning view at Mua Cave and spectacular scenery sampan ride in Trang,...</p>
                                            <p><span>THỜI GIAN: </span>24/06/2020</p>
                                            <p><span>Khởi hành: </span>Hà Nội</p>
                                            <a class="read-more" href="find_guide_detail.jsp">learn more</a> 
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="marginBottom20">
                                <div class="item tour-item">
                                    <div class="card-holder">
                                        <div class="image-holder">
                                            <a href=""><img alt="Mua Dancing Caves and Trang An adventure day tour with biking" class="lazy" src="https://www.toursbylocals.com/images/guides/12/12728/2019197214649462.jpg" style="display: inline;"></a>
                                        </div>
                                        <div class="card-box">
                                            <h3><a href="">Mua Dancing Caves and Trang An adventure,...</a></h3>
                                            <p>Stunning view at Mua Cave and spectacular scenery sampan ride in Trang,...</p>
                                            <p><span>THỜI GIAN: </span>24/06/2020</p>
                                            <p><span>Khởi hành: </span>Hà Nội</p>
                                            <a class="read-more" href="">learn more</a> 
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="marginBottom20">
                                <div class="item tour-item">
                                    <div class="card-holder">
                                        <div class="image-holder">
                                            <a href=""><img alt="Mua Dancing Caves and Trang An adventure day tour with biking" class="lazy" src="https://www.toursbylocals.com/images/guides/12/12728/2019197214649462.jpg" style="display: inline;"></a>
                                        </div>
                                        <div class="card-box">
                                            <h3><a href="">Mua Dancing Caves and Trang An adventure,...</a></h3>
                                            <p>Stunning view at Mua Cave and spectacular scenery sampan ride in Trang,...</p>
                                            <p><span>THỜI GIAN: </span>24/06/2020</p>
                                            <p><span>Khởi hành: </span>Hà Nội</p>
                                            <a class="read-more" href="">learn more</a> 
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <br/><br/>
                <div class="row">
                    <div class="columns-6 column-center">
                        <h3>Tours quốc tế</h3><br/>
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
                                            <p>Stunning view at Mua Cave and spectacular scenery sampan ride in Trang,...</p>
                                            <p><span>THỜI GIAN: </span>24/06/2020</p>
                                            <p><span>Khởi hành: </span>Hà Nội</p>
                                            <a class="read-more" href="">learn more</a> 
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="marginBottom20">
                                <div class="item tour-item">
                                    <div class="card-holder">
                                        <div class="image-holder">
                                            <a href=""><img alt="Mua Dancing Caves and Trang An adventure day tour with biking" class="lazy" src="https://www.toursbylocals.com/images/guides/12/12728/2019197214649462.jpg" style="display: inline;"></a>
                                        </div>
                                        <div class="card-box">
                                            <h3><a href="">Mua Dancing Caves and Trang An adventure,...</a></h3>
                                            <p>Stunning view at Mua Cave and spectacular scenery sampan ride in Trang,...</p>
                                            <p><span>THỜI GIAN: </span>24/06/2020</p>
                                            <p><span>Khởi hành: </span>Hà Nội</p>
                                            <a class="read-more" href="">learn more</a> 
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="marginBottom20">
                                <div class="item tour-item">
                                    <div class="card-holder">
                                        <div class="image-holder">
                                            <a href=""><img alt="Mua Dancing Caves and Trang An adventure day tour with biking" class="lazy" src="https://www.toursbylocals.com/images/guides/12/12728/2019197214649462.jpg" style="display: inline;"></a>
                                        </div>
                                        <div class="card-box">
                                            <h3><a href="">Mua Dancing Caves and Trang An adventure,...</a></h3>
                                            <p>Stunning view at Mua Cave and spectacular scenery sampan ride in Trang,...</p>
                                            <p><span>THỜI GIAN: </span>24/06/2020</p>
                                            <p><span>Khởi hành: </span>Hà Nội</p>
                                            <a class="read-more" href="">learn more</a> 
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