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
<div class="footer-contact">
            <div class="row">
                <div class="columns-8 column-center column-reset">
                    <h4>Follow Us</h4>
                    <ul class="social-menu">
                        <li>
                            <a href="" class="fa fa-facebook-square" title="Facebook" target="_blank"></a>
                        </li>
                        <li>
                            <a href="" class="fa fa-twitter" title="Twitter" target="_blank"></a>
                        </li>
                        <li>
                            <a href="" class="fa fa-instagram" title="Instagram" target="_blank"></a>
                        </li>
                    </ul>
                    <h3 class="ul-title">How can we help? </h3>
                    <p> Our local guides provide private tours tailored to your needs. Contact us today with any questions!
                        <br /> Contact our guides today with your questions. 
                    </p>
                    <div class="button-holder">
                        <a rel="nofollow" class="button orange" href="">Contact Us</a>
                        <a class="button orange" href="">Find A Tour</a>
                    </div>
                    <a href="" title="BBB" target="_blank">
                        <img data-src="images/bbb.png" class="lazy" src="images/pixel.gif" />
                    </a> &nbsp; &nbsp; &nbsp;
                    <a href="https://www.paypal.com/" title="PayPal" target="_blank">
                        <img data-src="images/footer-paypal.png" class="lazy" src="images/pixel.gif" />
                    </a>
                </div>
            </div>
        </div>
        <footer class="site-footer" role="contentinfo">
            <div class="row">
                <div class="columns-3 right-1 site-info">
                    <img data-src="" class="lazy" src="images/pixel.gif" />
                </div>
                <div class="columns-2 right-1">
                    <ul class="footer-menu">
                        <li>
                            <a href="">Find A Tour</a>
                        </li>
                        <li>
                            <a href="">Find A Guide</a>
                        </li>
                        <li>
                            <a href="">Shore Excursions</a>
                        </li>
                        <li>
                            <a rel="nofollow" href="">e-Gift Cards</a>
                        </li>
                        <li>
                            <a rel="nofollow" href="">
                                <font size="2">Traveler Login</font>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="columns-3 right-1">
                    <ul class="footer-menu">
                        <li>
                            <span class="footerHeaderLine">Become A Partner</span>
                        </li>
                        <li>
                            <a rel="nofollow" href="">
                                <font size="2">Travel Agent</font>
                            </a>
                        </li>
                        <li>
                            <a rel="nofollow" href="">
                                <font size="2">Tour Guide</font>
                            </a>
                        </li>
                        <li>
                            <a rel="nofollow" href="">
                                <font size="2">Affiliate</font>
                            </a>
                        </li>
                        <li>
                            <span class="footerHeaderLine">Got Questions?</span>
                        </li>
                        <li>
                            <a rel="nofollow" href="">Covid-19 Updates</a>
                        </li>
                        <li>
                            <a rel="nofollow" href="">How It Works</a>
                        </li>
                        <li>
                            <a rel="nofollow" href="">FAQs</a>
                        </li>
                        <li>
                            <a rel="nofollow" href="">Our Guides</a>
                        </li>

                    </ul>
                </div>
                <div class="columns-3 right-1">
                    <ul class="footer-menu">
                        <li>
                            <a rel="nofollow" href="">
                                <font size="2">About Us</font>
                            </a>
                        </li>
                        <li>
                            <a rel="nofollow" href="">Blog</a>
                        </li>
                        <li>
                            <a rel="nofollow" href="">Contact Us</a>
                        </li>
                        <li>
                            <a href="">Careers</a>
                        </li>
                        <li>&nbsp;</li>
                        <li>
                            <a target="instructionsviewer" >
                                Terms and Conditions
                            </a>
                        </li>
                        <li>
                            <a target="instructionsviewer" >
                                Privacy Policy
                            </a>
                        </li>
                        <li>
                            <img data-src="images/creditcards.png" class="lazy" src="images/pixel.gif" />
                        </li>
                    </ul>
                </div>
            </div>
        </footer>
        <!-- #colophon -->
        <footer class="site-copyright">
            <div class="row">
                <div class="columns-8 column-center column-reset">
                    <div class="text-center">
                        <p class="copyright">© TMKProject 2020.</p>
                    </div>
                </div>
                <!-- .site-info -->
            </div>
        </footer>
</body>
</html>