<!DOCTYPE html>
<%@page import="java.sql.*;" %>
<%@page import="java.io.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Login: PickMe</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="style.css">
        <link href="https://fonts.googleapis.com/css?family=Raleway:500" rel="stylesheet">

        <link rel = "stylesheet" type = "text/css" href = "style.css">
        
        <style>
            .btn-default{
                margin: 5%;
            }
        </style>
    </head>
    <body>
        <div class ="container-fluid">
              <!--Quote and logo-->
              <div class="row banner">
                <div class="col-lg-offset-2 col-lg-7">
                  <img src="images/quote.png" width="600" height="100" alt="qoute">
                </div>
                <div class="col-lg-offset-1 col-lg-2">
                  <img src="images/logo.png" width="150" height="100" alt="logo">
                </div>
              </div>
              <!--Start of navbar-->
              <nav class="navbar navbar-default">
                <div class="container-fluid">
                  <!-- Brand and toggle get grouped for better mobile display -->
                  <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                </button>

                  </div>

                  <!-- Collect the nav links, forms, and other content for toggling -->
                  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                      <li><a href="index.html">Home</a></li>
                      <li><a href="adopt.jsp">Adopt</a></li>
                      <li><a href="vol.jsp">Volunteer</a></li>
                      <li><a href="feed.jsp">Feedback</a></li>
                      <li><a href="book.jsp">Book Appointment</a></li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Staff<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                          <li class="active"><a href="login.jsp">Sign In<span class="sr-only">(current)</span></a></li>
                          <li><a href="newlogin.jsp">Sign Up</a></li>

                        </ul>
                      </li>
                    </ul>

                  </div>
                  <!-- /.navbar-collapse -->
                </div>
                <!-- /.container-fluid -->
              </nav>
              <!--End of navbar-->
              <div class="row">
                  <div class="col-lg-9 green">
                <%
           String url = "jdbc:sqlserver://localhost:1433;databaseName=FWT;integratedSecurity=true";
           Connection con = null;
           Statement stmt = null;
           ResultSet rs = null;
           String u = request.getParameter("user");
           String p = request.getParameter("pass");        
           int x=0;
           try
           {
               Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
               con = DriverManager.getConnection(url);
               stmt = con.createStatement();
               String sql = "select * from stafflogin";
               rs = stmt.executeQuery(sql);
               while(rs.next())
               {
                   if(u.equals(rs.getString(2)) && p.equals(rs.getString(3)))
                   {
                       x=1;
                   }                                             
               }
               if(x==0)
               {
                   %>
    
        <div style="text-align: center"><h3> Sorry, you are not authorized to login. </h3>
                   <form action="login.jsp">
                       <input type="submit" class="btn btn-default" value="Try Again" />
                   </form>
            </div>
                   <%
               }
               else
               { %>
    <center>
        <div style="text-align: center"><h3>
                   <%
                    out.println("Welcome, "+u); %>
                    </h3> </div>
                   
               <br>
               <!--<form action="staff.html">-->
                   <input type="submit" class="btn btn-default" value="Go" />
               <!--</form>-->
               </center>
              <% }
           }
           catch(Exception e)
           {
                out.println(e.getMessage());
           }
           %>
            </div>
            <div class="col-lg-3 pink">
           <h3>
           The Story of Tipsy
           </h3>
           <img src="images/Tipsy.jpg" alt="Bagheera" class="storyOf">
           <p>
             Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rerum nemo, in deleniti necessitatibus tempora vero, velit minima, quis quibusdam error omnis dignissimos? Consequatur obcaecati, alias veniam repellat quam corrupti dolores, quo eos, dignissimos
             fuga illo velit quas minima ipsam neque impedit dolore numquam distinctio. 
           
         </div>
              </div>
                  
                  
            <div class="row grey">
          <div class="container">
            <div class="col-lg-4">
              <h4>Address</h4>
              <p>
                1234 Street Name, City, AA 99999
              </p>
            </div>
            <div class="col-lg-8">
              <h4>Contact</h4>
              <p class="contact">
                <span style="padding-right: 30px;">Email: support@mobirise.com</span>
                <span style="padding-right: 30px;">Phone: +1 (0) 000 0000 001</span>
                <span style="padding-right: 30px;">Fax: +1 (0) 000 0000 002</span>
              </p>
            </div>
          </div>
        </div>
        </div>
    </body>
</html>
