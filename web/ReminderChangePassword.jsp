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
            text-align: center;
        }
        .row {
            /*display: flex;*/
            width: 100%;
            margin: 0.2rem;
        }
        .child {
            /*float: left;*/
            width: 100%;
            margin: 3px;
        }
    </style>
    <body>
        <h1>Reminder</h1>
        <div class="receipt">
            <div class="row">
                <div class="child"><p>Your password has expired please change it.</p></div>
            </div>
                <div class="child"><p><a href="ChangePassword.jsp">Click To change password</p></div>
        </div>
    </body>
</html>