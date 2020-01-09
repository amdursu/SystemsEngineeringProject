<%-- 
    Document   : museum
    Created on : Apr 20, 2019, 6:22:48 PM
    Author     : iadin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <%@include file="/WEB-INF/jspf/head.jspf" %> 
        <title>Museums</title>
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
                
                <div class="row">
                    <div class="col-lg-2">

                    </div>
                    <div class="col-lg-2">
                        <img src="./images/antipa.jpg" width="200px " alt="">
                    </div>
                    <div class="col-lg-8">
                        <a href="historyB.jsp"> <h3>Antipa National History Museum</h3></a>
                        <p>Sos. Kiseleff nr. 1, Bucuresti, sector 1</p>
                        <p>The Antipa National History Museum is the most important museum of Romanian nation.</p>
                    </div>
                    <hr>
                </div>
            </div>
        </section>

        

        <footer>
            <%@include file="/WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>

