<%@include file="DBCON.jsp" %>
<html>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        html { 
            overflow-y: scroll; 
        }
        body {
            font-family: sans-serif;
            background: #9fa8da ;
        }
        h1 {
            font-size: 40px;
            text-align: center;
            text-transform: uppercase;
            margin-bottom: 10px;
            margin-top: 40px;
        }
    </style>
    <body>
        <%
            String accountnumber = (String)session.getAttribute("accountno");
            String loginname = (String)session.getAttribute("loginname");
            out.println("<h1>Welcome " + loginname + " ( " + accountnumber + " )</h1>");
        %>
        <%
            String s1oldpassword = request.getParameter("oldpassword");
            String s1newpassword = request.getParameter("newpassword");
            String s1confirmpassword = request.getParameter("confirmpassword");
            
//            out.println(s1oldpassword);
//            out.println(s1newpassword);
//            out.println(s1confirmpassword);
            
            try {
                if(s1newpassword.equals(s1confirmpassword)) {
                    if(session.getAttribute("loginpassword").equals(s1oldpassword)) {
                        
                        try {
                            
                            String updatequery = "update account set password='"+ s1newpassword +"' where accno='"+ session.getAttribute("accountno") +"'";
                            PreparedStatement pst = con.prepareStatement(updatequery);
                            pst.executeUpdate();
                            out.println("<h1>Dear " + session.getAttribute("loginname") + " password is changed.<br><h1>");
                            
                            session.invalidate();
                            
                            response.setHeader("Cache-Control", "no-store");
                            response.setHeader("Pragma", "no-cache");
                            response.setHeader("Expires", "0");
                            
                            out.println("<a href='Login.jsp>'Login Again</a>");
                        } catch(Exception e) {
                            out.println("<h1><br>Password is not changed " + e + "</h1>");
                        }
                    } else {
                        out.println("<h1><br> Old password does not match</h1>");
                    }
                    
                } else {
                    out.println("<h1><br> New Password & confirm password do not match</h1>");
                }
            } catch(Exception e) {
                out.println(e);
            }
        %>
    </body>
</html>
