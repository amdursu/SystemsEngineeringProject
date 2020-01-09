<%-- 
    Document   : userConfirmation
    Created on : May 18, 2019, 2:33:34 PM
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
                        <h3>You have selected the following on the name <c:out value = "${name}"/>:</h3>
                        <h4>Place: <c:out value = "${mueseum}"/></h4>
                        <p> Date: <c:out value = "${date}"/></p>
                        <p> No. of full price tickets: <c:out value = "${full}"/></p>
                        <p> No. of half price tickets: <c:out value = "${half}"/></p>
                        <p> No. of free tickets: <c:out value = "${free}"/></p>
                        <p> Total price: <c:out value = "${price}"/> RON</p>
                        <h4>Please check everything before moving one!</h4>
                        <a href="historyB.jsp"><button>Back</button></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="payment.jsp"><button>Next</button></a>
                            
                    </div>
                    <div class="col-lg-4">
                        <progress value="1" max="3">
                        </progress>
                    </div>
                </div>
            </div>
        </section>

        <br><br><br><br><br><br><br>

        <footer>
            <%@include file="/WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>

