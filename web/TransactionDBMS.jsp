<%@include file="DBCON.jsp" %>
<%@include file="Transaction.jsp" %>
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
            width: 1000px;
            transform: translate(-50%, 0);
            position: absolute;
            margin-top: 250px;
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
        <table class="content-table">
            <tr class="header">
                <td>
                    <p>Account Number</p>
                </td>
                <td>
                    <p>Reference</p>
                </td>
                <td>
                    <p>Date of Transaction</p>
                </td>
                <td>
                    <p>Transaction ID</p>
                </td>
                <td>
                    <p>Deposited Amount</p>
                </td>
                <td>
                    <p>Withdrawn Amount</p>
                </td>
                <td>
                    <p>Net Balance</p>
                </td>
            </tr>
        <%
            String choice = request.getParameter("choice");
            
            try {
                
                String viewquery = "";
                String ac = request.getParameter("txt1");
                if(choice.equalsIgnoreCase("accountno")) {
                    viewquery = "select * from transactionbank where accountno='" + ac + "'";
                } else if(choice.equalsIgnoreCase("date")) {

                    viewquery = "select * from transactionbank where dotrans='" + ac + "'";
                } else if(choice.equalsIgnoreCase("amount")) {
                    viewquery = "select * from transactionbank where netbal='" + ac + "'";
                } else {
                    viewquery = "select * from transactionbank";
                }
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(viewquery);
                
                while(rs.next()) {
                    String accountno = rs.getString(1);
                    String reference = rs.getString(2);
                    String dotrans = rs.getString(3);
                    String transid = rs.getString(4);
                    String depamount = rs.getString(5);
                    String withamount = rs.getString(6);
                    String netbal = rs.getString(7);
        %>
        <tr>
            <td>
                <p><%=accountno%></p>
            </td>
            <td>
                <p><%=reference%></p>
            </td>
            <td>
                <p><%=dotrans%></p>
            </td>
            <td>
                <p><%=transid%></p>
            </td>
            <td>
                <p><%=depamount%></p>
            </td>
            <td>
                <p><%=withamount%></p>
            </td>
            <td>
                <p><%=netbal%></p>
            </td>
        </tr>
        <%
                }
                
            } catch(Exception e) {
                out.println("Invalid input");
            }
        %>
        </table>
    </body>
</html>
