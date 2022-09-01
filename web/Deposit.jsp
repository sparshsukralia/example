<%@include file="TransID.jsp" %>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.1/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script src="http://code.jquery.com/ui/1.9.1/jquery-ui.js"></script>
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
        .depositForm p {
            font-size: 20px;
            margin: 15px 0;
            text-align: left;
        }
        .depositForm input {
            font-size: 12px;
            width: 100%;
            padding: 15px 10px;
            border: 0;
            outline: none;
            border-radius: 5px;
            justify-content: center;
            align-items: center;
        }
        .depositForm button {
            font-size: 18px;
            font-weight: bold;
            margin: 20px 5px;
            padding: 10px 10px;
            width: 50%;
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
    <script type="text/javascript">
        $(function() {
        var date = new Date();
        var currentMonth = date.getMonth();
        var currentDate = date.getDate();
        var currentYear = date.getFullYear();
        $('#datepicker').datepicker({
        maxDate: new Date(currentYear, currentMonth, currentDate)
        });
        });
    </script>
    <body>
        <h1>Deposit</h1>
        <div class="depositForm">
        <form action="DepositDBMS.jsp" method="post">
            <div class="formBlock">
                <div class="child"><p>Account Number</p></div>
                <div class="child"><input type="text" name="accountno"></div>
            </div>
            <div class="formBlock">
                <div class="child"><p>Reference</p></div>
                <div class="child"><input type="text" name="ref"></div>
            </div>
            <div class="formBlock">
                <div class="child"><p>Date of Transaction</p></div>
                <div class="child"><input type="text" name="date" id="datepicker"></div>
            </div>
            <div class="formBlock">
                <div class="child"><p>Deposit Amount</p></div>
                <div class="child"><input type="text" name="amount"></div>
            </div>
            <div class="formBlock">
                <button type="submit" name="b1">Deposit</button>
                <button type="submit" name="b2">Reset</button>
            </div>
        </form>
        </div>
    </body>
</html>
