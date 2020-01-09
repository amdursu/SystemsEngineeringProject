<%-- 
    Document   : payment
    Created on : May 18, 2019, 2:45:35 PM
    Author     : iadin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <%@include file="/WEB-INF/jspf/head.jspf" %> 
        <title>Payment</title>
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
                        <h3>You have selected the following on the name <c:out value = "${name}"/>:</h3>
                        <h4>Place: <c:out value = "${mueseum}"/></h4>
                        <p> Date: <c:out value = "${date}"/></p>
                        <p> No. of full price tickets: <c:out value = "${full}"/></p>
                        <p> No. of half price tickets: <c:out value = "${half}"/></p>
                        <p> No. of free tickets: <c:out value = "${free}"/></p>
                        <p> Total price: <c:out value = "${price}"/> RON</p>
                    </div>
                    <div class="col-lg-4">
                        <progress value="2" max="3">
                        </progress>
                    </div>
                </div>
                <br><br>
                <div class="row">
                    <form action="BuyController" method="post">
                        <div class="col-lg-2">
                            <label for="cardNo">Card number:</label>
                            <input type="text" id="cardNo" name="cardNo">
                        </div>
                        <div class="col-lg-2">
                            <label for="cardH">Card holder name:</label>
                            <input type="text" id="cardH" required name="cardH">
                        </div>
                        <div class="col-lg-2">
                            <label for="cvv">CVV:</label>
                            <input type="text" id="cvv" name="cvv" required pattern="^[0-9]{3,4}$">
                        </div>
                        <div class="col-lg-2">
                            <label for="expiration">Expiration date:</label>
                            <input type="text" id="cardNo" required name="expiration" pattern="^(0[1-9]|1[0-2])\/?([0-9]{4}|[0-9]{2})$">
                        </div>
                        <div class="col-lg-2">
                            <input type="submit" name="confirm" value="Confirm" id="contact" style="margin-top: 22px">
                        </div>
                        <div class="col-lg-2"></div>
                    </form>
                </div>
            </div>
        </section>

        <br><br><br><br><br><br><br>

        <footer>
            <%@include file="/WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>

