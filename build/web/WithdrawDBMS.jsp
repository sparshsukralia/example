<%@include file="DBCON.jsp" %>
<%@page import="java.util.Random" %>
<%@page import="com.CurrencyWords" %>
<html>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: sans-serif;
            background: #dadef1 ;
        }
        h1 {
            font-size: 40px;
            text-align: center;
            text-transform: uppercase;
            margin-bottom: 10px;
            margin-top: 40px;
        }
        .receipt {
            background-color: #9fa8da;
            justify-content: space-around;
            align-items: center;
            width: 500px;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            position: absolute;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
        .receipt p {
            font-size: 20px;
            margin: 15px 0;
            text-align: left;
        }
        .row {
            display: flex;
            width: 100%;
            margin: 0.2rem;
        }
        .child {
            float: left;
            width: 50%;
            margin: 3px;
        }
    </style>
    <body>
        <h1>Transaction Reciept</h1>
        <%
            String accountno = request.getParameter("accountno");
            String reference = request.getParameter("ref");
            String date = request.getParameter("date");
            String amount = request.getParameter("amount");
            
            /*
            out.println(accountno);
            out.println(reference);
            out.println(date);
            out.println(transid);
            out.println(amount);
            */
            
            try {
                
                String viewquery = "select * from transactionbank";
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(viewquery);
                int temp = 0;
                String tid = "";
                
                int lastbal = 0;
                while(rs.next()) {
                    temp = Integer.parseInt(rs.getString(4).substring(1));
                    lastbal = rs.getInt(7);
                }
                temp += 1;
                tid = "T" + temp;
                
                Random random = new Random();
                int randomValue = random.nextInt();
                
                String depositquery = "insert into transactionbank values(?,?,?,?,?,?,?);";
                PreparedStatement pst = con.prepareStatement(depositquery);
                
                pst.setString(1, accountno);
                pst.setString(2, reference);
                pst.setString(3, date);
                pst.setString(4, tid);
                pst.setInt(5, 0);
                pst.setInt(6, Integer.parseInt(amount));
                pst.setInt(7, lastbal - Integer.parseInt(amount));
                
                pst.executeUpdate();
                
                
                //-------------------------------------------
                
                String viewquerycustomer = "select * from " + accountno;
                Statement st1 = con.createStatement();
                ResultSet rs1 = st1.executeQuery(viewquerycustomer);
                
                int lastbalcust = 0;
                while(rs1.next()) {
                    lastbalcust = rs1.getInt(7);
                }
                
                String depositquerycust = "insert into " + accountno + " values(?,?,?,?,?,?,?);";
                PreparedStatement pst1 = con.prepareStatement(depositquerycust);
                
                pst1.setString(1, accountno);
                pst1.setString(2, reference);
                pst1.setString(3, date);
                pst1.setString(4, tid);
                pst1.setInt(5, 0);
                pst1.setInt(6, Integer.parseInt(amount));
                pst1.setInt(7, lastbalcust - Integer.parseInt(amount));
                
                pst1.executeUpdate();
                String amountfinal = CurrencyWords.convert(Integer.parseInt(amount)) + " Rupees only";
        %>
        <div class="receipt">
            <div class="row">
                <div class="child"><p>Withdrawn from account:</p></div>
                <div class="child"><p><%=accountno%></p></div>
            </div>
            <div class="row">
                <div class="child"><p>Transaction Reference:</p></div>
                <div class="child"><p><%=reference%></p></div>
            </div>
            <div class="row">
                <div class="child"><p>Date of Transaction:</p></div>
                <div class="child"><p><%=date%></p></div>
            </div>
            <div class="row">
                <div class="child"><p>Amount Withdrawn:</p></div>
                <div class="child"><p><%=amountfinal%></p></div>
            </div>
        </div>
        <%
            } catch(Exception e) {
                
                out.println("Transaction failed. " + e);
            }
        %>
    </body>
</html>
