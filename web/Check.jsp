<%@page import="java.time.Period"%>
<%@page import="java.time.LocalDate"%>
<%@include file="DBCON.jsp" %>
<html>
    <body>
        <h1>Check Page</h1><br>
        <%
            String role = request.getParameter("role");
            String accountnumber = request.getParameter("accountno");
            String password = request.getParameter("password");
            
            try {
                String viewquery = "select * from account";
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(viewquery);
                String loginname = "";
                int count = 0;
                
                while(rs.next()) {
                    if(role.equalsIgnoreCase(rs.getString(7)) && accountnumber.equalsIgnoreCase(rs.getString(1)) && password.equals(rs.getString(8))) {
                        
                        count++;
                        loginname = rs.getString(2);
                        break;
                    }     
                }  
                
                String TimeQuery = "Select logintime from logintable where accno = '"+accountnumber+"'";
                PreparedStatement pst2 = con.prepareStatement(TimeQuery);
                ResultSet rss = pst2.executeQuery();
                while(rss.next())
                {
                    
                    LocalDate date2 = rss.getDate(1).toLocalDate();
                    Period diff = Period.between(date2, LocalDate.now());
                    
                    if(diff.getDays() >= 15)
                    {
                        response.sendRedirect("ReminderChangePassword.jsp");
                    }
                    
                }
                
                if(count > 0) {
                    session.setAttribute("accountno", accountnumber);
                    session.setAttribute("loginname", loginname);
                    session.setAttribute("loginpassword", password);
                    if(role.equalsIgnoreCase("Admin")) {
                        
                        response.sendRedirect("Admin.jsp");
                    } else {
                        
                        response.sendRedirect("CustomerLogin.jsp");
                    }
//                    out.println("Login Success");
//                    response.sendRedirect("Success.jsp");
                } else {
//                    RequestDispatcher disp = request.getRequestDispatcher("Failed.jsp");
//                    disp.include(request, response);
                    out.println("Invalid login");
                }
                
            } catch(Exception e) {
                out.println(e);
            }
            
//            if(userid.equalsIgnoreCase("sparsh@soprasteria.com") && username.equalsIgnoreCase("sparsh") && password.equals("123")) {
//                response.sendRedirect("Success.jsp");
//            } else {
//                RequestDispatcher disp = request.getRequestDispatcher("Login.jsp");
//                disp.include(request, response);
//                out.println("<br>Invalid username or password");
//            }
        %>
    </body>
</html>
