<%-- 
    Document   : index
    Created on : Apr 20, 2019, 6:22:27 PM
    Author     : iadin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <%@include file="/WEB-INF/jspf/head.jspf" %> 
        <title>Home</title>
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
                        </c:when>
                        <c:when test="${user==null}">
                            <h1>Welcome, Guest!</h1>
                        </c:when>
                    </c:choose>
                </div>
                <div class="row">
                    <div class="col-lg-3">

                    </div>
                    <div class="col-lg-9">
                        <h3>News:</h3>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-lg-3">

                    </div>
                    
                </div>
                <hr>
                <div class="row">
                    <div class="col-lg-3">

                    </div>
                    <div class="col-lg-9">
                        <h3>First launch of the platform!</h3>
                        <h5>10.01.2020</h5>
                        <p>The first version of the platform is here. New features will be added gradually.</p>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-lg-3">

                    </div>
                    
                </div>
                <hr>
                <div class="row">
                    <div class="col-lg-3">

                    </div>
                    <div class="col-lg-9">
                        <h3>Ask anything!</h3>
                        <h5>22.04.2019</h5>
                        <p>Contact us page is now available <a href="contact.jsp">click</a>.</p>
                    </div>
                </div>
                <hr>
            </div>
        </section>

        <br><br><br><br><br><br><br>

        <footer>
            <%@include file="/WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>