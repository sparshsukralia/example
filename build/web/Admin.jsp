<html>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: sans-serif;
            background: #c5cae9 ;
        }
        h1 {
            font-size: 30px;
            text-align: center;
            text-transform: uppercase;
            margin: 40px 0;
        }
        .container {
            width: 350px;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            position: absolute;
        }
        button {
            font-size: 18px;
            font-weight: bold;
            margin: 20px 0;
            padding: 10px 15px;
            width: 100%;
            border-radius: 5px;
            border: 0;
            cursor: pointer;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
    </style>
    <body>
        
        <%
            String accountnumber = (String)session.getAttribute("accountno");
            String loginname = (String)session.getAttribute("loginname");
            
            out.println("<h1>Welcome " + loginname + " ( " + accountnumber + " )</h1>");
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            if(session.getAttribute("loginname") == null) {
                response.sendRedirect("Login.jsp");
            }
        %>
        <div class="container">
            <button onClick="document.location='CreateAccount.jsp'">New Account</button>
            <button onClick="document.location='ViewCustomer.jsp'">View Customers</button>
            <button onClick="document.location='Deposit.jsp'">Deposit</button>
            <button onClick="document.location='Withdraw.jsp'">Withdraw</button>
            <button onClick="document.location='Transaction.jsp'">View Transaction</button>
            <button onClick="document.location='Logout.jsp'">Logout</button><br>
        </div>
    </body>
</html>
