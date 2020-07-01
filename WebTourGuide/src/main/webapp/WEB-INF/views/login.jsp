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
                    <ul class="block-grid-2">
                        <li style="border-right: 1px solid lightgray; height: 100%; padding: 25px;">
                            <div class="page-title">
                                <h1>I'm a Returning TMKProject Traveler</h1>
                                <p> Tour Guides, please use the <a href="">TOUR&nbsp;GUIDE&nbsp;login</a>.
                                    <br>Travel Agents, please use the <a href="profile.html">AGENT&nbsp;login</a>. </p>
                            </div>
                            <div class="login-content row">
                                <div class="columns-12 column-center column-reset">
                                    <form name="loginForm" method="post" class="login-form background-form" action="">
                                        <div class="form-section">
                                            <div class="form-field">
                                                <label>Email</label>
                                                <div class="input-holder">
                                                    <div class="icon-holder"> <i class="fa fa-envelope-o" style="font-size: 1.5em; padding: 12px;"></i> </div>
                                                    <input placeholder="e.g., youremail@email.com" tabindex="1" type="text" name="loginEmail"> </div>
                                            </div>
                                            <div class="form-field">
                                                <label>Password</label>
                                                <div class="input-holder">
                                                    <div class="icon-holder"> 
                                                        <img src="https://www.toursbylocals.com/images/icon-lock.png"> 
                                                    </div>
                                                    <input type="password" tabindex="2" name="loginPassword"> 
                                                </div>
                                                <br><a href="">forgot password?</a> 
                                            </div>
                                        </div>
                                        <div class="text-center">
                                            <input tabindex="3" class="button green" type="submit" value="Login" name=""> 
                                        </div>
                                        <br>
                                        <input type="checkbox" name="" value="">&nbsp;Remember login on this computer

                                    </form>
                                </div>
                            </div>
                        </li>
                        <li style="padding: 25px;">
                            <div class="page-title">
                                <h1>I'm a New TMKProject Traveler</h1> </div>
                            <p>Register to become a Traveler to:</p>
                            <ul>
                                <li>add tours to your 'wish list' with a single click</li>
                                <li>rate tours and add testimonials about the tours you've taken</li>
                                <li>record your TMKProject purchases</li>
                                <li>send PDF or image files to TMKProject guides, and more!</li>
                            </ul>
                            <br>
                            <center>
                                <input class="button green" onclick="jump('register')" style="cursor: pointer;" value="Continue">
                            </center>
                        </li>
                    </ul>
                    <br>
                    <div class="columns-6 column-center column-reset" id="register">
                        <div class="page-title">
                            <h1>Become a TMKProject Traveler</h1> </div>
                    </div>
                    <form name="registrationForm" method="post" class="register-form ul-form" action="">
                        <div class="columns-8 column-center column-reset">
                            <div class="form-field">
                                <label>Given (First) Name</label>
                                <input tabindex="4" type="text" name="givenName"> 
                            </div>
                            <div class="form-field">
                                <label>Family (Last) Name</label>
                                <input tabindex="5" type="text" name="familyName"> 
                            </div>
                            <div class="form-field" id="countryDropdown">
                                <label>Country</label>
                                <select tabindex="6" onchange="document.getElementById('countrySelectedSubmit').click();" name="theCountry">
                                    <option value="WONoSelectionString">choose...</option>
                                    <option value="0">Afghanistan</option>
                                    <option value="1">Albania</option>
                                    <option value="2">Algeria</option>
                                    <option value="3">Andorra</option>
                                    <option value="4">Angola</option>
                                    <option value="5">Anguilla</option>
                                    <option value="6">Antarctica</option>
                                    <option value="7">Antigua and Barbuda</option>
                                    <option value="8">Argentina</option>
                                    <option value="9">Armenia</option>
                                    <option value="10">Aruba</option>
                                    <option value="11">Ashmore and Cartier Islands</option>
                                    <option value="12">Australia</option>
                                    <option value="13">Austria</option>
                                    <option value="14">Azerbaijan</option>
                                    <option value="15">Bahamas</option>
                                    <option value="16">Bahrain</option>
                                    <option value="17">Bangladesh</option>
                                    <option value="18">Barbados</option>
                                    <option value="19">Bassas Da India</option>
                                    <option value="20">Belarus</option>
                                    <option value="21">Belgium</option>
                                    <option value="22">Belize</option>
                                    <option value="23">Benin</option>
                                    <option value="24">Bermuda</option>
                                    <option value="25">Bhutan</option>
                                    <option value="26">Bolivia</option>
                                    <option value="27">Bosnia and Herzegovina</option>
                                    <option value="28">Botswana</option>
                                    <option value="29">Bouvet Island</option>
                                    <option value="30">Brazil</option>
                                    <option value="31">British Indian Ocean Territory</option>
                                    <option value="32">British Virgin Islands</option>
                                    <option value="33">Brunei</option>
                                    <option value="34">Bulgaria</option>
                                    <option value="35">Burkina Faso</option>
                                    <option value="36">Burundi</option>
                                    <option value="37">Cambodia</option>
                                    <option value="38">Cameroon</option>
                                    <option value="39">Canada</option>
                                    <option value="40">Canary Islands</option>
                                    <option value="41">Cape Verde</option>
                                    <option value="42">Cayman Islands</option>
                                    <option value="43">Central African Republic</option>
                                    <option value="44">Chad</option>
                                    <option value="45">Chile</option>
                                    <option value="46">China</option>
                                    <option value="47">Christmas Island</option>
                                    <option value="48">Clipperton Island</option>
                                    <option value="49">Cocos Islands</option>
                                    <option value="50">Colombia</option>
                                    <option value="51">Comoros</option>
                                    <option value="52">Congo</option>
                                    <option value="53">Congo Democratic Republic</option>
                                    <option value="54">Cook Islands</option>
                                    <option value="55">Coral Sea Islands</option>
                                    <option value="56">Costa Rica</option>
                                    <option value="57">Côte d'Ivoire</option>
                                    <option value="58">Croatia</option>
                                    <option value="59">Cuba</option>
                                    <option value="60">Curacao</option>
                                    <option value="61">Cyprus</option>
                                    <option value="62">Czech Republic</option>
                                    <option value="63">Denmark</option>
                                    <option value="64">Djibouti</option>
                                    <option value="65">Dominica</option>
                                    <option value="66">Dominican Republic</option>
                                    <option value="67">East Timor</option>
                                    <option value="68">Ecuador</option>
                                    <option value="69">Egypt</option>
                                    <option value="70">El Salvador</option>
                                    <option value="71">Equatorial Guinea</option>
                                    <option value="72">Eritrea</option>
                                    <option value="73">Estonia</option>
                                    <option value="74">Eswatini</option>
                                    <option value="75">Ethiopia</option>
                                    <option value="76">Europa Island</option>
                                    <option value="77">Falkland Islands</option>
                                    <option value="78">Faroe Islands</option>
                                    <option value="79">Fiji</option>
                                    <option value="80">Finland</option>
                                    <option value="81">France</option>
                                    <option value="82">French Guiana</option>
                                    <option value="83">French Polynesia</option>
                                    <option value="84">French Southern and Antarctic Lands</option>
                                    <option value="85">Gabon</option>
                                    <option value="86">Gambia</option>
                                    <option value="87">Gaza Strip</option>
                                    <option value="88">Georgia</option>
                                    <option value="89">Germany</option>
                                    <option value="90">Ghana</option>
                                    <option value="91">Gibraltar</option>
                                    <option value="92">Glorioso Islands</option>
                                    <option value="93">Greece</option>
                                    <option value="94">Greenland</option>
                                    <option value="95">Grenada</option>
                                    <option value="96">Guadeloupe</option>
                                    <option value="97">Guatemala</option>
                                    <option value="98">Guernsey</option>
                                    <option value="99">Guinea</option>
                                    <option value="100">Guinea-Bissau</option>
                                    <option value="101">Guyana</option>
                                    <option value="102">Haiti</option>
                                    <option value="103">Heard Island and Mcdonald Islands</option>
                                    <option value="104">Honduras</option>
                                    <option value="105">Hong Kong</option>
                                    <option value="106">Hungary</option>
                                    <option value="107">Iceland</option>
                                    <option value="108">India</option>
                                    <option value="109">Indonesia</option>
                                    <option value="110">Iran</option>
                                    <option value="111">Iraq</option>
                                    <option value="112">Ireland</option>
                                    <option value="113">Isle of Man</option>
                                    <option value="114">Israel</option>
                                    <option value="115">Italy</option>
                                    <option value="116">Jamaica</option>
                                    <option value="117">Jan Mayen</option>
                                    <option value="118">Japan</option>
                                    <option value="119">Jersey</option>
                                    <option value="120">Jordan</option>
                                    <option value="121">Juan De Nova Island</option>
                                    <option value="122">Kazakhstan</option>
                                    <option value="123">Kenya</option>
                                    <option value="124">Kiribati</option>
                                    <option value="125">Kosovo</option>
                                    <option value="126">Kuwait</option>
                                    <option value="127">Kyrgyzstan</option>
                                    <option value="128">Laos</option>
                                    <option value="129">Latvia</option>
                                    <option value="130">Lebanon</option>
                                    <option value="131">Lesotho</option>
                                    <option value="132">Liberia</option>
                                    <option value="133">Libya</option>
                                    <option value="134">Liechtenstein</option>
                                    <option value="135">Lithuania</option>
                                    <option value="136">Luxembourg</option>
                                    <option value="137">Macau</option>
                                    <option value="138">Macedonia</option>
                                    <option value="139">Madagascar</option>
                                    <option value="140">Malawi</option>
                                    <option value="141">Malaysia</option>
                                    <option value="142">Maldives</option>
                                    <option value="143">Mali</option>
                                    <option value="144">Malta</option>
                                    <option value="145">Marshall Islands</option>
                                    <option value="146">Martinique</option>
                                    <option value="147">Mauritania</option>
                                    <option value="148">Mauritius</option>
                                    <option value="149">Mayotte</option>
                                    <option value="150">Mexico</option>
                                    <option value="151">Micronesia - Federated States of</option>
                                    <option value="152">Moldova</option>
                                    <option value="153">Monaco</option>
                                    <option value="154">Mongolia</option>
                                    <option value="155">Montenegro</option>
                                    <option value="156">Montserrat</option>
                                    <option value="157">Morocco</option>
                                    <option value="158">Mozambique</option>
                                    <option value="159">Myanmar</option>
                                    <option value="160">Namibia</option>
                                    <option value="161">Nauru</option>
                                    <option value="162">Nepal</option>
                                    <option value="163">Netherlands</option>
                                    <option value="164">New Caledonia</option>
                                    <option value="165">New Zealand</option>
                                    <option value="166">Nicaragua</option>
                                    <option value="167">Niger</option>
                                    <option value="168">Nigeria</option>
                                    <option value="169">Niue</option>
                                    <option value="170">Norfolk Island</option>
                                    <option value="171">North Korea</option>
                                    <option value="172">Norway</option>
                                    <option value="173">Oman</option>
                                    <option value="174">Pakistan</option>
                                    <option value="175">Palau</option>
                                    <option value="176">Panama</option>
                                    <option value="177">Papua New Guinea</option>
                                    <option value="178">Paracel Islands</option>
                                    <option value="179">Paraguay</option>
                                    <option value="180">Peru</option>
                                    <option value="181">Philippines</option>
                                    <option value="182">Pitcairn Islands</option>
                                    <option value="183">Poland</option>
                                    <option value="184">Portugal</option>
                                    <option value="185">Qatar</option>
                                    <option value="186">Réunion</option>
                                    <option value="187">Romania</option>
                                    <option value="188">Russia</option>
                                    <option value="189">Rwanda</option>
                                    <option value="190">Saint-Barthélemy</option>
                                    <option value="191">Saint Helena</option>
                                    <option value="192">Saint Kitts and Nevis</option>
                                    <option value="193">Saint Lucia</option>
                                    <option value="194">Saint Martin</option>
                                    <option value="195">Saint Pierre and Miquelon</option>
                                    <option value="196">Saint Vincent and The Grenadines</option>
                                    <option value="197">Samoa</option>
                                    <option value="198">San Marino</option>
                                    <option value="199">Sao Tome and Principe</option>
                                    <option value="200">Saudi Arabia</option>
                                    <option value="201">Senegal</option>
                                    <option value="202">Serbia</option>
                                    <option value="203">Seychelles</option>
                                    <option value="204">Sierra Leone</option>
                                    <option value="205">Singapore</option>
                                    <option value="206">Slovakia</option>
                                    <option value="207">Slovenia</option>
                                    <option value="208">Solomon Islands</option>
                                    <option value="209">Somalia</option>
                                    <option value="210">South Africa</option>
                                    <option value="211">South Georgia and The South Sandwich Islands</option>
                                    <option value="212">South Korea</option>
                                    <option value="213">Spain</option>
                                    <option value="214">Spratly Islands</option>
                                    <option value="215">Sri Lanka</option>
                                    <option value="216">Sudan</option>
                                    <option value="217">Suriname</option>
                                    <option value="218">Svalbard</option>
                                    <option value="219">Sweden</option>
                                    <option value="220">Switzerland</option>
                                    <option value="221">Syria</option>
                                    <option value="222">Taiwan</option>
                                    <option value="223">Tajikistan</option>
                                    <option value="224">Tanzania</option>
                                    <option value="225">Thailand</option>
                                    <option value="226">Togo</option>
                                    <option value="227">Tokelau</option>
                                    <option value="228">Tonga</option>
                                    <option value="229">Trinidad and Tobago</option>
                                    <option value="230">Tromelin Island</option>
                                    <option value="231">Tunisia</option>
                                    <option value="232">Turkey</option>
                                    <option value="233">Turkmenistan</option>
                                    <option value="234">Turks and Caicos Islands</option>
                                    <option value="235">Tuvalu</option>
                                    <option value="236">Uganda</option>
                                    <option value="237">Ukraine</option>
                                    <option value="238">United Arab Emirates</option>
                                    <option value="239">United Kingdom</option>
                                    <option value="240">United States</option>
                                    <option value="241">Uruguay</option>
                                    <option value="242">Uzbekistan</option>
                                    <option value="243">Vanuatu</option>
                                    <option value="244">Vatican City</option>
                                    <option value="245">Venezuela</option>
                                    <option value="246">Vietnam</option>
                                    <option value="247">Wallis and Futuna</option>
                                    <option value="248">West Bank</option>
                                    <option value="249">Western Sahara</option>
                                    <option value="250">Yemen</option>
                                    <option value="251">Zambia</option>
                                    <option value="252">Zimbabwe</option>
                                </select>
                                <span class="displayNone"><input id="countrySelectedSubmit" type="submit" value="Submit" name=""></span> 
                            </div>
                            <div class="form-field">
                                <label>Email</label>
                                <input tabindex="7" type="text" name="theEmail"> 
                            </div>
                            <div class="form-field">
                                <label>Confirm Email</label>
                                <input tabindex="8" type="text" name="theConfirmEmail"> 
                            </div>
                            <ul class="accordion css-accordion">
                                <li class="accordion-item">
                                    <input class="accordion-item-input" type="checkbox" name="accordion" id="item1">
                                    <label for="item1" class="accordion-item-hd">Alternate Emails <span class="accordion-item-hd-cta">▲</span></label>
                                    <div class="accordion-item-bd" style="background-color: pink;"><small>If you have other devices (smart phone, tablet, home computer, work computer, etc) where you may be continuing email discussions with this guide, you can speed up communication and avoid problems by adding these email addresses now. These will ONLY be used for this purpose and will never be sold or given away.</small></div>
                                    <div class="accordion-item-bd">Alternate Email 1
                                        <div class="form-field">
                                            <input tabindex="9" type="text" name="theAlternateEmail1">
                                        </div>
                                    </div>
                                    <div class="accordion-item-bd">Alternate Email 2
                                        <div class="form-field">
                                            <input tabindex="10" type="text" name="theAlternateEmail2">
                                        </div>
                                    </div>
                                    <div class="accordion-item-bd">Alternate Email 3
                                        <div class="form-field">
                                            <input tabindex="11" type="text" name="theAlternateEmail3">
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <div class="form-field">
                                <label>Choose a Password</label>
                                <input type="password" tabindex="12" name="thePassword"> 
                            </div>
                            <div class="form-field">
                                <label>Re-enter Password</label>
                                <input type="password" tabindex="13" name="confirmPassword"> 
                            </div>
                            <div>Receive Newsletter: &nbsp;
                                <input type="checkbox" name="25.3.7.25" value="25.3.7.25">&nbsp;(occasional, no more than once per month)</div>
                            <div class="submit-holder">
                                <br>
                                <p>Once you've registered, you can add additional optional contact information such as address and telephone number.</p>
                                <p>Your privacy is important to us. Your email address will only be used for ToursByLocals business and will not be rented, sold or otherwise distributed. See our <a target="instructionsviewer" href="">Privacy&nbsp;Policy</a></p>
                                <div class="text-center">
                                    <input tabindex="14" class="button square green" type="submit" value="Register" name=""> </div>
                            </div>
                        </div>
                    </form>
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