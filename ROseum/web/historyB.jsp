<%-- 
    Document   : historyB
    Created on : May 18, 2019, 9:50:12 PM
    Author     : iadin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <%@include file="/WEB-INF/jspf/head.jspf" %> 
        <title>Museum of Romanian History</title>
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
                            <h1>Welcome, Guest!</h1>
                            <a href="login.jsp"><button type="button" name="login">Login</button></a><br><br><br><br><br>
                        </c:when>
                    </c:choose>
                </div>
                <c:set var="mueseum" value="Antipa National History Museum" scope="session" />
                <div class="row">
                    <div class="col-lg-3">
                        <img src="./images/antipa.jpg" width="300px " alt=""> 
                    </div>
                    <div class="col-lg-3">
                        <img src="./images/antipa_in.jpg" width="300px " alt="">
                    </div>
                    <div class="col-lg-6">
                        <h1>Antipa National History Museum</h1>
                        <p>Sos. Kiseleff nr. 1, Bucuresti, sector 1 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="https://antipa.ro/"><button>Site</button></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            <a href="https://www.facebook.com/MNIRpage/"><img id="fb" src="./images/logi.png" width="30px"  alt=""></a></p>
                        <span>Expoziția permanentă ocupă cea mai importantă parte a spațiului vizitabil de către public și permite contemplarea unui sector divers și reprezentativ al patrimoniului Muzeului, organizat tematic.</span>
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
                            <label for="full"> Full price (12 RON):</label>
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
                            <input type="submit" name="confirm" value="Confirm" id="contact" style="margin-top: 22px">
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
