<%@include file="ViewProfileDBMS.jsp" %>
<html>
    <style>
        h1 {
            h1 {
            font-size: 40px;
            text-align: center;
            text-transform: uppercase;
            margin-bottom: 10px;
            margin-top: 0;
            left: 50%;
        }
        }
    </style>
    <body>
        <%
            String accountnumber1 = (String)session.getAttribute("accountno");
            String loginname1 = (String)session.getAttribute("loginname");
//            out.println("Welcome " + loginname1 + " ( " + accountnumber1 + " )");
            String choice = request.getParameter("choice");
            
            try
            {
                String updatequery = "";
                String ac = request.getParameter("txt1");
                if (choice.equalsIgnoreCase("name"))
                {
                    updatequery = "update account set cname = '"+ac+"' where accno = '"+session.getAttribute("accountno")+"'";
                }
                else if (choice.equalsIgnoreCase("gender"))
                {
                updatequery = "update account set gender = '"+ac+"' where accno = '"+session.getAttribute("accountno")+"'";
                }
                else if (choice.equalsIgnoreCase("dob"))
                {          
                    updatequery = "update account set dob = '"+ac+"' where accno = '"+session.getAttribute("accountno")+"'";          
                }
                else if (choice.equalsIgnoreCase("Address"))
                {          
                    updatequery = "update account set address = '"+ac+"' where accno = '"+session.getAttribute("accountno")+"'";          
                }
                else if (choice.equalsIgnoreCase("mob"))
                {
                    updatequery = "update account set mob = '"+ac+"' where accno = '"+session.getAttribute("accountno")+"'";
                }
                else if (choice.equalsIgnoreCase("sques"))
                {
                    response.sendRedirect("squesChange.jsp");
                }
                else if (choice.equalsIgnoreCase("sans"))
                {          
                    updatequery = "update account set ans = '"+ac+"' where accno = '"+session.getAttribute("accountno")+"'";      
                }      
                PreparedStatement ps = con.prepareStatement(updatequery);
                ps.executeUpdate();
                out.println("<h1>Update Done</h1>");
            }
            catch(Exception e)
            {
                out.println(e);      
            }  
        %>
    </body>
</html>