<%@include file="DBCON.jsp" %>
<html>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: sans-serif;
            background: #fff ;
        }
        h1 {
            font-size: 40px;
            text-align: center;
            text-transform: uppercase;
            margin-top: 30px;
            margin-bottom: 60px;
        }
        
/*        table {
            
            left: 50%;
            width: 1500px;
            transform: translate(-50%, -50%);
            position: absolute;
        }*/
        .content-table {
            left: 50%;
            width: 1200px;
            transform: translate(-50%, 0);
            position: absolute;
            margin-top: 30px;
            border-collapse: collapse;
            font-size: 1em;
            min-width: 400px;
        }
        .header {
            background-color: #009879;
            color: #ffffff;
            text-align: left;
            font-weight: bold;
        }
        .content-table td {
            padding: 12px 15px;
        }
        
        .content-table tr {
            border-bottom: 1px solid #ddd;
        }
        .content-table tr:nth-of-type(even) {
            background-color: #f3f3f3;
        }
    </style>
    <body>
        <h1>Customer Details</h1>
        <table class="content-table">
            <tr class="header">
                <td>
                    <p>Account Number</p>
                </td>
                <td>
                    <p>Customer Name</p>
                </td>
                <td>
                    <p>Gender</p>
                </td>
                <td>
                    <p>DOB</p>
                </td>
                <td>
                    <p>Address</p>
                </td>
                <td>
                    <p>Mobile Number</p>
                </td>
                <td>
                    <p>Role</p>
                </td>
                <td>
                    <p>Password</p>
                </td>
                <td>
                    <p>Security Ques</p>
                </td>
                <td>
                    <p>Security Ans</p>
                </td>
            </tr>
        <%
            String choice = request.getParameter("choice");
            try {
                
                String viewquery = "";
                
                if(choice.equalsIgnoreCase("accountno")) {
                    String ac = request.getParameter("txt1");
                    viewquery = "select * from account where accno='" + ac + "'";
                } else {
                    viewquery = "select * from account";
                }
                
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(viewquery);
                
                while(rs.next()) {
                    String accountno = rs.getString(1);
                    String customername = rs.getString(2);
                    String gender = rs.getString(3);
                    String dob = rs.getString(4);
                    String address = rs.getString(5);
                    String mobileno = rs.getString(6);
                    String role = rs.getString(7);
                    String password = rs.getString(8);
                    String sques = rs.getString(9);
                    String sans = rs.getString(10);
        %>
        <tr>
            <td>
                <p><%=accountno%></p>
            </td>
            <td>
                <p><%=customername%></p>
            </td>
            <td>
                <p><%=gender%></p>
            </td>
            <td>
                <p><%=dob%></p>
            </td>
            <td>
                <p><%=address%></p>
            </td>
            <td>
                <p><%=mobileno%></p>
            </td>
            <td>
                <p><%=role%></p>
            </td>
            <td>
                <p><%=password%></p>
            </td>
            <td>
                <p><%=sques%></p>
            </td>
            <td>
                <p><%=sans%></p>
            </td>
        </tr>
        
        <%
                }
                out.println("</table>");
            } catch(Exception e) {
                
                out.println("Invalid input");
            }
        %>
        
        </table>
    </body>
</html>
