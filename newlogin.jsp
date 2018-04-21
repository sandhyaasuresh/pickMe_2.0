<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript">
            function formvalid()
            {
                var pw = document.getElementById("pass").value;
                var pw2 = document.getElementById("pass2").value;
                var checkno = /[0-9]/;
                if (pw.length < 6) {
                    alert("Error: password must be of length 6 or more.");
                    return false;
                }
                if (!checkno.test(pw)) {
                    alert("Error: pw must have at least one number!");
                    return false;
                }
                checkno = /[a-z]/;
                if (!checkno.test(pw)) {
                    alert("Error: pw must have at least one lower case letter!");
                    return false;
                }
                checkno = /[A-Z]/;
                if (!checkno.test(pw)) {
                    alert("Error: pw must have at least one upper case letter!");
                    return false;
                }
                if(pw!==pw2) {
                    alert("Error: Passwords do not match!");
                    return false;
                }
                if (pw === name) {
                    alert("Error: password must be different from username!");
                    return false;
                }
            }
        </script>

        <title>Login: PickMe</title>
        <link rel = "stylesheet" type = "text/css" href = "navstyle.css">
        <style>
            .circle{
                background-color: #403b42;
                /*background-image: url("images/Login.jpg");*/
                width: 500px;
                height: 500px;
                color: #fff;
                font-family: sans-serif;
                border-radius: 50%;
            }
            .button1{
                background-color:#fff;
                color: #403b42;
                border:none;
                font-family: sans-serif;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 20px;
                margin: 4px 2px;
                transition-duration: 0.4s;
                cursor: pointer;
            }
            .button1:hover{
                background-color:#7d7580;
                color:#fff;
            }
        </style>
    </head>
    <body>
        <div class = "wrapper">
            <div class ="heading">
                <div class='dividerh'></div>
                <img src="images/quote.png" width="600" height="100" alt="quote"/>
                <div class='dividerh'></div>
                <div class='dividerh'></div>
                <img src="images/logo.png" width="150" height="100" alt="logo"/>
            </div>
            <div class ="navigation">
                <center>
                    <a href="index.html"> <input type="submit" class="button" value="Home" /> </a>
                    <div class='dividerb'></div>
                    <a href="adopt.jsp">  <input type="submit" class="button" value="Adopt" />  </a>
                    <div class='dividerb'></div>
                    <a href="vol.jsp">  <input type="submit" class="button" value="Volunteer" />  </a>
                    <div class='dividerb'></div>
                    <a href="feed.jsp">  <input type="submit" class="button" value="Feedback" />  </a>
                    <div class='dividerb'></div>
                    <a href="faq.html">  <input type="submit" class="button" value="FAQs" />  </a>
                    <div class='dividerb'></div>
                    <a href="book.jsp">  <input type="submit" class="button" value="Book Appointment" />  </a>
                    <div class='dividerb'></div>
                    <a href="login.jsp"> <input type="submit" class="button button1" value="Staff Login" /> </a>
                    <div class='dividerb'></div>
                    <a href="userlogin.jsp"><input type="submit" class="button" value="User Login" /> </a>
                    <div class='dividerb'></div>
                    <a href="newlogin.jsp"> <input type="submit" class="button" value="New User" /> </a>
                </center>
            </div>
            <div class ="content"><center>
                    <br><br>
                    <div>
                        <br><br><br><br>
                        <br><br>
                        <Form name="myform" id="myform" method="get" action="newlogindb.jsp" onsubmit="return formvalid()">
                            <b>First Name: </b> <input type="text" name="fname" required="" value="" />
                            <br><br>
                            <b>Last Name: </b> <input type="text" name="lname" required="" value="" />
                            <br><br>
                            <b>Username: </b> <input type="text" name="user" required="" value="" />
                            <br><br>
                            <b>E-mail: </b> <input type="email" name="mail" required="" value="" />
                            <br><br>
                            <b>Password: </b> <input type="password" name="pass" id="pass" required="" value="" />
                            <br><br>
                            <b>Confirm Password: </b> <input type="password" name="pass2" id="pass2" required="" value="" />
                            <br><br>
                            <input type="submit"class="button1" value="Sign up!"/>
                        </Form>
                        <a href="index.html"> <input type="submit" class="button1" value="Cancel"></a>

                    </div></center>
            </div>
            <div class="sidebar">
                <B>The Story of Mashed Potatoes</B>
                <br><br>
                <img src="images/sheeb.jpeg" width="300" height="300" alt="mija"/>
                <br><br>
                <p style="text-align: justify">
                    Lorem ipsum dolor sit amet, id dictum ligula etiam lacus, eros donec quisque mauris mi, in vel felis in, praesent vel nec magna lacus. Pulvinar elit augue fermentum vel, at morbi varius metus suscipit, tincidunt nulla ante eget commodo. Orci interdum ipsum sem, curabitur nunc rhoncus sapien, scelerisque ut mauris bibendum, sit enim nisl numquam non. Et lectus est iaculis quam, ut dolor donec ligula fringilla, a sed convallis condimentum. Mi senectus facilisis et, luctus sit imperdiet nec, urna nonummy tempus in. Sit turpis ornare nunc, bibendum vitae venenatis ut, dictum nulla parturient neque at, imperdiet ut dui sed. Sed in est elit, eget ultrices hendrerit vel consectetuer, ut lectus vestibulum tristique. Cras nec deleniti inceptos, maecenas volutpat iaculis commodo lectus.
                </p>
            </div>
            <div class="footer">
                <center>
                    <br>
                    <b>Contact Information</b><br>
                    Call Us: 9819585260<br>
                    Email Us: pickme@gmail.com<br>
                    Visit Us: 87-B, JP Road, Anderi(W)<br>
                </center>
            </div>
        </div>
    </body>
</html>

