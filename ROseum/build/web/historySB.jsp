<%-- 
    Document   : historySB
    Created on : May 18, 2019, 9:50:28 PM
    Author     : iadin
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <%@include file="/WEB-INF/jspf/head.jspf" %> 
        <title>Altemberger House</title>
    </head>
    <body>
        <header>
            <div class="container header">
                <%@include file="/WEB-INF/jspf/nav.jspf" %>
                <%@include file="/WEB-INF/jspf/header.jspf" %>
            </div>
            
        </header>
        <section>
            <div class="container section">
                <div class="row">
                    <c:set var = "user" scope = "session" value="${user}"/>
                    <c:choose>
                        <c:when test="${user!=null}">
                            <h1>Welcome,<c:out value = "${user}"/>!</h1>
                            <a href="LogoutController"><button type="button" name="logout">Logout</button></a><br><br><br><br>
                        </c:when>
                        <c:when test="${user==null}">
                            <h1>Welcome,USER!</h1>
                            <a href="login.jsp"><button type="button" name="login">Login</button></a><br><br><br><br><br>
                        </c:when>
                    </c:choose>
                </div>
                <c:set var="mueseum" value="Altemberger House" scope="session" />
                <div class="row">
                    <div class="col-lg-3">
                        <img src="./images/455.jpg" width="200px " alt=""> 
                    </div>
                    <div class="col-lg-3">
                        <img src="./images/ARMEFOC.jpg" width="300px " alt="">
                    </div>
                    <div class="col-lg-6">
                        <h1>Altemberger House: History Museum</h1>
                        <p>2 Strada Mitropoliei, Sibiu &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.brukenthalmuseum.ro/istorie_en/index.html"><button>Site</button></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            <a href="https://www.facebook.com/pages/category/History-Museum/Muzeul-de-Istorie-Casa-Altemberger-150651002422807/"><img id="fb" src="./images/logi.png" width="30px"  alt=""></a></p>
                        <span>The building known today as the Altemberger House, after the name of its first proprietor, was purchased in 1545 by the Magistrate of the city, becoming the location of the Town Hall for 400 years (until 1948). 
It comprises 10 architectural units, to which a defensive tower was added, conjointly structuring one of the most impressive ensembles of civic Gothic architecture in Romania and even in the South Eastern Europe.</span>
                        <br><br>
                        <div class="stars" data-rating="3">
                            <p>Rate your experience:</p>
                            <%--<input type="radio" name="rating" value="1" class="star">
                               <input type="radio" name="rating" value="2" class="star">
                               <input type="radio" name="rating" value="3" class="star">
                               <input type="radio" name="rating" value="4" class="star">
                               <input type="radio" name="rating" value="5" class="star">
                               <c:out value="${rate}"/> --%>

                            <span class="star">&nbsp;</span>
                            <span class="star">&nbsp;</span>
                            <span class="star">&nbsp;</span>
                            <span class="star">&nbsp;</span>
                            <span class="star">&nbsp;</span>
                        </div>
                    </div>
                </div>
                <br><br>
                <div class="row">
                    <form  action="ConfirmationController" method="post">
                        <div class="col-lg-2 ">
                            <label for="fullname">Full name:</label>
                            <input type="text" id="fullname" name="fullname"><br>
                        </div>
                        <div class="col-lg-2">
                            <label for="date"> Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                            <input type="date" id="date" name="date"><br>
                        </div>
                        <div class="col-lg-2">
                            <label for="full"> Full price (10 RON):</label>
                            <input type="number" max="50" id="full" name="full"><br>
                        </div>
                        <div class="col-lg-2">
                            <label for="half"> Half price (6-18 years old):</label>
                            <input type="number" max="50" id="half" name="half"><br>
                        </div>
                        <div class="col-lg-2">
                            <label for="zero"> Free (0-6 years old):</label>
                            <input type="number" max="50" id="zero" name="zero"><br>
                        </div>
                        <div class="col-lg-2">
                            <input type="submit" name="confirm" value="Confirm" id="contact">
                        </div>
                    </form>
                </div>
            </div>
        </section>
                            
        <br><br><br>
        
        <footer>
            <%@include file="/WEB-INF/jspf/footer.jspf" %>
        </footer>
        <script src="script.js"></script>
    </body>
</html>
