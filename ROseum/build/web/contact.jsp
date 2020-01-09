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
        <title>Contact us!</title>
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
                    <div class="col-lg-4 registerLeft">
                        <h3>We'd love to hear from you!</h3>
                        <p>Whether you have an issue or a question about our pricing,
                            system, features or anything else, the team is ready to ask 
                            all your questions!</p>
                    </div>
                    <div class="col-lg-2 registerMiddle">

                    </div>
                    <div class="col-lg-6 registerRight">
                        <h3>Contact us:</h3>
                        <form method="POST" action="https://formsubmit.co/886c96a14ff5bf25f20623122006a40d">
                            <input type="email" id="email" name="email" placeholder="Email*" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"><br><br>
                                <input type="text" id="subject" name="subject" placeholder="Subject*" required><br><br>
                                <textarea name="message" id="message" placeholder="Your message..."></textarea><br><br>
                                <input type="submit" name="submit" value="Contact us!" id="contact"><br><br>
                                <p>All * fields are required!</p>
                        </form>
                    </div>
                </div>
            </div>
        </section>

        <footer>
            <%@include file="/WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>
