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
        <h1>Fund Transfer</h1>
        <%
//            String accountfrom = request.getParameter("accountfrom");
            String accountfrom = (String)session.getAttribute("accountno");
            String accountto = request.getParameter("accountto");
            String date = request.getParameter("date");
//            String transid = request.getParameter("transID");
            String amount = request.getParameter("amount");
            
            CurrencyWords obj = new CurrencyWords();
            
            try {
                
                String viewquery = "select * from " + accountfrom;
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
                
                String depositquery = "insert into " + accountfrom + " values(?,?,?,?,?,?,?);";
                PreparedStatement pst = con.prepareStatement(depositquery);
                
                pst.setString(1, accountfrom);
                pst.setString(2, accountto);
                pst.setString(3, date);
                pst.setString(4, tid);
                pst.setInt(5, 0);
                pst.setInt(6, Integer.parseInt(amount));
                pst.setInt(7, lastbal - Integer.parseInt(amount));
                
                pst.executeUpdate();
                
                //-------------------------------------------------------------------
                
                String viewquery1 = "select * from " + accountto;
                Statement st1 = con.createStatement();
                ResultSet rs1 = st1.executeQuery(viewquery1);
                
                int lastbal1 = 0;
                while(rs1.next()) {
                    lastbal1 = rs1.getInt(7);
                }
                
                String depositquery1 = "insert into " + accountto + " values(?,?,?,?,?,?,?);";
                PreparedStatement pst1 = con.prepareStatement(depositquery1);
                
                pst1.setString(1, accountfrom);
                pst1.setString(2, accountto);
                pst1.setString(3, date);
                pst1.setString(4, Integer.toString(randomValue));
                pst1.setInt(5, Integer.parseInt(amount));
                pst1.setInt(6, 0);
                pst1.setInt(7, lastbal1 + Integer.parseInt(amount));
                
                pst1.executeUpdate();
                
                String amountfinal = obj.convert(Integer.parseInt(amount)) + " Rupees only";
        %>
          <div class="receipt">
            <div class="row">
                <div class="child"><p>Transferred from account:</p></div>
                <div class="child"><p><%=accountfrom%></p></div>
            </div>
            <div class="row">
                <div class="child"><p>Transferred to account:</p></div>
                <div class="child"><p><%=accountto%></p></div>
            </div>
            <div class="row">
                <div class="child"><p>Date of Transaction:</p></div>
                <div class="child"><p><%=date%></p></div>
            </div>
            <div class="row">
                <div class="child"><p>Amount Transferred:</p></div>
                <div class="child"><p><%=amountfinal%></p></div>
            </div>
        </div>
        <%
            } catch(Exception e) {
                
                out.println("Fund transfer failed.");
            }
        %>
    </body>
</html>
