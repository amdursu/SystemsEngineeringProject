<%-- 
    Document   : login
    Created on : Apr 20, 2019, 6:22:36 PM
    Author     : iadin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <%@include file="/WEB-INF/jspf/head.jspf" %> 
        <title>Log in</title>
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
                    <div class="col-lg-4 registerLeft">
                        <h3>Welcome!</h3>
                        <p>If you do not have an account:</p>
                        <a href="signup.jsp"><button type="button" name="Sign up">Sign up</button></a><br>
                    </div>
                    <div class="col-lg-2 registerMiddle">

                    </div>
                    <div class="col-lg-6 registerRight">
                        <h3>Log into your account:</h3>
                        <form class="loginForm" action="LoginController" method="post">
                            <div class="col-lg-8">
                                <input type="email" id="email" name="email" placeholder="Email" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"><br><br>
                                <input type="password" id="pasword" name="password" placeholder="Password" value="" required><br><br>
                                <input type="submit" name="submit" value="Log in" id="login"><br><br>
                            </div>
                        </form>
                        <c:if test = "${errMessage!=null}">
                            <p><c:out value = "${errMessage}"/></p>
                        </c:if><br>
                    </div>
                </div>
            </div>
        </section>
        
        <footer>
            <%@include file="/WEB-INF/jspf/footer.jspf" %>
        </div>
    </footer>
</body>
</html>

