<%@page import="java.util.Random" %>
<html>
    <body>
        <%
            Random random = new Random();
            session.setAttribute("transID", random.nextInt());
        %>
    </body>
</html>
