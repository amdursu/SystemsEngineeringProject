<%-- 
    Document   : map
    Created on : Apr 20, 2019, 7:14:50 PM
    Author     : iadin
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                    <div class="col-lg-12 registerLeft">
                        <h3>Thank you!</h3>
                        <p>Your request has been accepted and we will answer it shortly!</p>
                    </div>
                </div>
            </div>
        </section>

        <footer>
            <%@include file="/WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>
