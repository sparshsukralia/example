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
        form {
            /*background-color: rgb(105, 105, 231);*/
            /*min-height: 100vh;*/
            /*display: flex;*/
            justify-content: space-around;
            align-items: center;
            width: 500px;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            position: absolute;
            /*margin:1% auto;*/
            /*margin-right: auto; margin-left: auto; width: 21%;*/ 
            /*padding-top: 11px;*/
        }
        .changeForm p {
            font-size: 20px;
            margin: 15px 0;
            text-align: left;
        }
        .changeForm input {
            font-size: 12px;
            width: 100%;
            padding: 15px 10px;
            border: 0;
            outline: none;
            border-radius: 5px;
            justify-content: center;
            align-items: center;
        }
        .changeForm button {
            font-size: 18px;
            font-weight: bold;
            margin: 20px 5px;
            padding: 10px 10px;
            width: 100%;
            border-radius: 5px;
            border: 0;
            cursor: pointer;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
        .formBlock {
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
        <h1>Change Password</h1>
        <div class="changeForm">
        <form action="ChangePasswordCheck.jsp" method="post">
            <div class="formBlock">
                <div class="child"><p>Enter old password</p></div>
                <div class="child"><input type="text" name="oldpassword"></div>
            </div>
            <div class="formBlock">
                <div class="child"><p>Enter new password</p></div>
                <div class="child"><input type="text" name="newpassword"></div>
            </div>
            <div class="formBlock">
                <div class="child"><p>Confirm new password</p></div>
                <div class="child"><input type="text" name="confirmpassword"></div>
            </div>
            <div class="formBlock">
                <button type="submit" name="b1" value="Change">Change</button>
            </div>
        </form>
        </div> 
    </body>
</html>
