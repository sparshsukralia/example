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
        h1 {
            font-size: 40px;
            text-align: center;
            text-transform: uppercase;
            margin-top: 30px;
            margin-bottom: 60px;
        }
        form {
            /*background-color: rgb(105, 105, 231);*/
            /*min-height: 100vh;*/
            /*display: flex;*/
            justify-content: space-around;
            align-items: center;
            width: 500px;
            left: 50%;
            transform: translate(-50%, -50%);
            position: absolute;
            /*margin:1% auto;*/
            /*margin-right: auto; margin-left: auto; width: 21%;*/ 
            /*padding-top: 11px;*/
        }
        .container {
            alignment-adjust: central;
            margin-top: 10rem;
            width: 100%;
        }
        input, select {
            font-size: 18px;
            width: 100%;
            padding: 10px 10px;
            margin: 5px;
            border: 0;
            outline: none;
            border-radius: 5px;
            justify-content: center;
            align-items: center;
        }
        .child {
            display: flex;
            margin: 5px;
        }
        button {
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
    </style>
    <body>
        <h1>View Customer Details</h1>
        <form action="ViewCustomerDBMS.jsp" method="post">
            <div class="container">
                <div class="child">
                    <select name="choice">
                        <option value="All">All</option>
                        <option value="Accountno">Account Number</option>
                    </select>
                    <input type="text" name="txt1">
                </div>
                <div class="child">
                    <button type="submit" name="b1" value="View">View</button> 
                </div>
            </div>
        </form>
    </body>
</html>
