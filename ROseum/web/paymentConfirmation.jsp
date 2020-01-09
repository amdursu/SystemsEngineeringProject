<%-- 
    Document   : paymentConfirmation
    Created on : May 18, 2019, 6:10:15 PM
    Author     : iadin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <%@include file="/WEB-INF/jspf/head.jspf" %> 
        <title>Confirmation</title>
    </head>
    <body>
        <header>
            <div class="container header">
                <%@include file="/WEB-INF/jspf/nav.jspf" %>
                <%@include file="/WEB-INF/jspf/header.jspf" %>
            </div>
        </header>
        <section>
            <div class="container contact">
                <div class="row">
                    <div class="col-lg-8 registerLeft">
                        <h3><c:out value = "${name}"/>, you have:</h3>
                        <p><c:out value = "${full}"/> full price tickets</p>
                        <p><c:out value = "${half}"/> half price tickets</p>
                        <p><c:out value = "${free}"/> free tickets</p>
                        <p> Total price of : <c:out value = "${price}"/> RON</p>
                        <h4>Please show this page when you arrive at <c:out value = "${mueseum}"/> on <c:out value = "${date}"/></h4>
                    </div>
                    <div class="col-lg-4">
                        <progress value="3" max="3">
                        </progress>
                    </div>
                </div>
            </div>
        </section>

        <footer>
            <%@include file="/WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>
