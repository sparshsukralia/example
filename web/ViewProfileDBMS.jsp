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
            background: #dadef1 ;
        }
        h1 {
            font-size: 40px;
            text-align: center;
            text-transform: uppercase;
            margin-bottom: 40px;
            margin-top: 30px;
        }
        .receipt {
            background-color: #9fa8da;
            justify-content: space-around;
            align-items: center;
            width: 500px;
            top: 50%;
            left: 50%;
            margin-top: 150px;
            margin-bottom: 100px;
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
        button {
            font-size: 18px;
            font-weight: bold;
            margin: 10px 0;
            padding: 10px 15px;
            width: 100%;
            border-radius: 5px;
            border: 0;
            cursor: pointer;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
    </style>
    <body>
        <h1>Your Profile</h1>
        <%  
            try {
                
                String viewquery = "select * from account where accno = '" + session.getAttribute("accountno") + "'";
                
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(viewquery);
                
                while(rs.next())
                {
        %>
        <div class="receipt">
            <div class="row">
                <div class="child"><p>Account number:</p></div>
                <div class="child"><p><%=rs.getString(1)%></p></div>
            </div>
            <div class="row">
                <div class="child"><p>Name:</p></div>
                <div class="child"><p><%=rs.getString(2)%></p></div>
            </div>
            <div class="row">
                <div class="child"><p>Gender:</p></div>
                <div class="child"><p><%=rs.getString(3)%></p></div>
            </div>
            <div class="row">
                <div class="child"><p>Date of Birth:</p></div>
                <div class="child"><p><%=rs.getString(4)%></p></div>
            </div>
            <div class="row">
                <div class="child"><p>Address:</p></div>
                <div class="child"><p><%=rs.getString(5)%></p></div>
            </div>
            <div class="row">
                <div class="child"><p>Mobile Number:</p></div>
                <div class="child"><p><%=rs.getString(6)%></p></div>
            </div>
            <div class="row">
                <div class="child"><p>Role:</p></div>
                <div class="child"><p><%=rs.getString(7)%></p></div>
            </div>
            <div class="row">
                <div class="child"><p>Password:</p></div>
                <div class="child"><p><%=rs.getString(8)%></p></div>
            </div>
            <div class="row">
                <div class="child"><p>Security Question:</p></div>
                <div class="child"><p><%=rs.getString(9)%></p></div>
            </div>
            <div class="row">
                <div class="child"><p>Security Answer:</p></div>
                <div class="child"><p><%=rs.getString(10)%></p></div>
            </div>
            <div><button onClick="document.location='EditPage.jsp'">Edit</button><br></div>
        </div>
        
        <%
                }
            } catch(Exception e) {
                out.println("Invalid Input");
            }
            
        %>
    </body>
</html>
