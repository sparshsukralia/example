<html>
    <body>
        <%
            out.println("<a href='Login.jsp>'Login Again</a>");
            session.invalidate();
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Expires", "0");
            response.sendRedirect("Login.jsp");
        %>
    </body>
</html>
