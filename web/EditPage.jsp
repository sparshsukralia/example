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
            align-items: center;
            /*min-height: 100vh;*/
            /*position: absolute;*/
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
            margin-top: 10px;
            transform: translate(-50%, -50%);
            position: absolute;
            /*margin:1% auto;*/
            /*margin-right: auto; margin-left: auto; width: 21%;*/ 
            /*padding-top: 11px;*/
        }
        
        h1 {
            font-size: 40px;
            text-align: center;
            text-transform: uppercase;
            margin-bottom: 10px;
            margin-top: 50px;
        }
        
        .createForm p {
            font-size: 20px;
            margin: 15px 0;
            text-align: left;
        }
        
        .createForm input, select {
            font-size: 12px;
            width: 100%;
            padding: 15px 10px;
            border: 0;
            outline: none;
            border-radius: 5px;
            justify-content: center;
            align-items: center;
        }
        
        .createForm button {
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
        <h1>EditPage</h1>    
        <div class="createForm">
        <form action="EditPageDBMS.jsp" method="post">
            <div class="formBlock">
                <div class="child"><select name="choice">
                    <option value="name">Name</option>
                    <option value="gender">Gender</option>
                    <option value="dob">Date of Birth</option>
                    <option value="address">Address</option>
                    <option value="mob">Mobile Number</option>
                    <option value="sques">Secret Question</option>
                    <option value="sans">Secret Answer</option>
                </select></div> 
                <div class="child"><input type="text" name="txt1"></div>
            </div>
            <div class="formBlock">
                <button type="submit" name="b1" value="Edit">Edit</button>
            </div>
        </form>
        </div>
    </body>
</html>