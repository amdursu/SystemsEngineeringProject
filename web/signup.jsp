<%-- 
    Document   : signup
    Created on : Apr 20, 2019, 6:23:58 PM
    Author     : iadin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <%@include file="/WEB-INF/jspf/head.jspf" %> 
        <title>Sign up</title>
    </head>
    <body>
        <header>
            <div class="container header">
                <%@include file="/WEB-INF/jspf/nav.jspf" %>
                <%@include file="/WEB-INF/jspf/header.jspf" %>
            </div>
        </header>
            
        <section>
            <div class="container register">
                <div class="row">
                    <div class="col-lg-4 registerLeft">
                        <h3>Welcome!</h3>
                        <p>If you already have an account:</p>
                        <a href="login.jsp"><button type="button" name="Log in">Login</button></a><br>
                    </div>
                    <div class="col-lg-2 registerMiddle">

                    </div>
                    <div class="col-lg-6 registerRight">
                        <h3>Register here:</h3>

                        <form class="registerForm" action="RegistrationController" method="post">
                            <div class="col-lg-4">
                                <input type="text" id="firstname" name="firstname" placeholder="First Name*"  required><br><br>
                                <input type="email" id="email" name="email" placeholder="Email*"  required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"><br><br>
                                <input type="password" id="password" name="password" placeholder="Password*"  required onkeyup='check();'><br><br>
                                <input type="submit" name="submit" value="Register" id="register"><br><br>
                            </div>
                            <div class="col-lg-4">
                                <input type="text" id="lastname" name="lastname" placeholder="Last Name*" required><br><br>
                                <input type="text" id="phone" name="phone" placeholder="Telephone" value="" pattern="[\+]\d{10}"><br><br>
                                <input type="password" id="repeat" name="repeat" placeholder="Confirm Password*" required onkeyup='check();'><br><br>
                                <div id="message"></div>
                                <p>All * fields are required!</p>
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
        </footer>
        <script src="script.js"></script>
</body>
</html>

