<html>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: sans-serif;
            background: #9fa8da ;
        }
        form {
            text-align: center;
        }
        .loginForm {
            /*background-color: rgb(105, 105, 231);*/
/*            min-height: 100vh;
            display: flex;
            justify-content: center;*/
            /*align-items: center;*/
            width: 350px;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            position: absolute;
        }
        
        .loginForm h1 {
            font-size: 40px;
            text-align: center;
            text-transform: uppercase;
            margin: 40px 0;
        }
        
        .loginForm p {
            font-size: 20px;
            margin: 15px 0;
            text-align: left;
        }
        
        .loginForm input, select {
            font-size: 16px;
            width: 100%;
            padding: 15px 10px;
            border: 0;
            outline: none;
            border-radius: 5px;
        }
        
        .loginForm button {
            font-size: 18px;
            font-weight: bold;
            margin: 20px 0;
            padding: 10px 15px;
            width: 50%;
            border-radius: 5px;
            border: 0;
            cursor: pointer;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
    </style>
    <body>
        <div class="loginForm">
            <h1>Login</h1>
            <form action="Check.jsp" method="post">
                <p>Select Role</p><select name="role">
                  <option>Admin</option>
                  <option>Customer</option>
                </select><br>
                <p>Enter Account number</p><input type="text" name="accountno"><br>
                <p>Enter Password</p> <input type="text" name="password"><br>
                <div>
                    <button type="submit" name="b1" value="Login">Login</button>
                    <button type="Reset" name="b2" value="Reset">Reset</button>
                </div>
                
                <a href="ForgetPassword.jsp">Forgot Password?</a>
            </form>
        </div>
    </body>
</html>
