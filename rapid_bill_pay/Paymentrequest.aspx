<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Paymentrequest.aspx.cs" UnobtrusiveValidationMode="None" Inherits="Paymentrequest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-top: 38px;
            margin-left: 7px;
        }
        .auto-style2 {
            margin-left: 40px;
        }
        .auto-style4 {
            margin-left: 171px;
            margin-top: 0px;
        }
        .auto-style6 {
            margin-left: 171px;
        }
        .auto-style9 {
            margin-left: 171px;
            margin-top: 0px;
        }
        .auto-style11 {
            margin-left: 222px;
        }
        .auto-style12 {
            margin-left: 55px;
        }
        .auto-style13 {
            margin-left: 194px;
        }
        .auto-style14 {
            margin-left: 141px;
        }
        .auto-style16 {
            width: 27px;
            height: 27px;
            margin-left: 7px;
        }
        .auto-style17 {
            width: 919px;
            height: 454px;
            margin-left: 150px;
            margin-top: 0px;
            margin-bottom: 1px;
            margin-right: 147px;
        }
        .auto-style18 {
            width: 646px;
            height: 0px;
            margin-left: 45px;
            margin-right: 0px;
            margin-top: 54px;
            margin-bottom: 0px;
        }
        .auto-style20 {
            margin-left: 171px;
        }
        .auto-style21 {
            margin-left: 14px;
        }
        .auto-style22 {
            margin-left: 14px;
        }
        .auto-style23 {
            height: 173px;
            font-family:'Comic Sans MS';
            font-size:1em;
            text-align:center;
            color:white
        }
        .auto-style24 {
            margin-top: 0px;
        }
    </style>
   <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="Scripts/jquery.dynDateTime.min.js" type="text/javascript"></script>
<script src="Scripts/calendar-en.min.js" type="text/javascript"></script>
<link href="Styles/calendar-blue.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    $(document).ready(function () {
        $("#<%=TextBox1.ClientID %>").dynDateTime({
            showsTime: true,
            ifFormat: "%m/%d/%Y",
            daFormat: "%l;%M %p, %e %m, %Y",
            align: "BR",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });
    });
</script>
</head>
<body style="background-image:url(background.jpg)">
    <form id="form2" class="auto-style23">
        <p>Pay your Bills, Real Quick!</p> 
        <p>With one Click!!</p> 
        <h2>Rapid Bill Pay</h2> 
        <p>A complete online payment solution</p>

    </form>
    <form id="form1" runat="server" style="color:green; background-color:darkgrey;" class="auto-style17">
        <div class="auto-style18">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Compose a Payment Request</div>
        &nbsp;
        <asp:ImageButton ID="ImageButton3" runat="server" title="Select the date of transaction" CssClass="auto-style20" Height="23px" Width="35px" ImageUrl="~/icons8-planner.png" />
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Select Payment/Transaction Date" CssClass="auto-style1" title="Select the date of transaction" Width="268px"></asp:TextBox>
        <img src="calender.png.png" runat ="server" class="auto-style16" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorSelect" runat="server" ForeColor="Red" ErrorMessage="Please select a date." Display="Dynamic"  ControlToValidate="TextBox1"></asp:RequiredFieldValidator> 
       <asp:RegularExpressionValidator ID="RegularExpressionValidatorDateofTrans" runat="server" ErrorMessage="Date format error." ForeColor="Red"  Display="Dynamic" ControlToValidate="TextBox1" ValidationExpression="^([0]?[1-9]|[1][0-2])[./-]([0]?[1-9]|[1|2][0-9]|[3][0|1])[./-]([0-9]{4}|[0-9]{2})$"></asp:RegularExpressionValidator>
        <p>
            <asp:ImageButton ID="ImageButton2" runat="server" title="Funds receiving business name" CssClass="auto-style4" Height="23px" Width="35px" ImageUrl="~/icons8-user (1).png" />
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Receipient/Business Name" title="Funds receiving business name" CssClass="auto-style21" Width="305px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorBname" runat="server" ForeColor="Red" ErrorMessage="Please enter a Receipient." Display="Dynamic"  ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:ImageButton ID="ImageButton1" runat="server" title="Funds receiving Business's mailing address" CssClass="auto-style6" Height="23px" Width="35px" ImageUrl="~/icons8-add-tag.png" />
            <asp:TextBox ID="TextBox3" runat="server" placeholder="Receipient/Business Street Address" title="Funds receiving Business's mailing address" CssClass="auto-style22" Width="306px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorBadd" runat="server" ForeColor="Red" ErrorMessage="Please enter address." Display="Dynamic"  ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorBadd1" runat="server" ErrorMessage="Address format: 123 Main street." ForeColor="Red"  Display="Dynamic" ControlToValidate="TextBox3" ValidationExpression="[0-9]{1,} [a-zA-Z]{1,}( [a-zA-Z]{1,}){1,}"></asp:RegularExpressionValidator>
        </p>
        <p>
            <asp:ImageButton ID="ImageButton4" runat="server" title="Payment About in $$" CssClass="auto-style9" Height="23px" Width="35px" ImageUrl="~/icons8-money-bag.png" />
            <asp:TextBox ID="TextBox5" runat="server" placeholder="Amount in $$.cc" title="Payment About in $$" CssClass="auto-style21" Width="121px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorAmount" runat="server" ForeColor="Red" ErrorMessage="Please enter Amount." Display="Dynamic"  ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Example: 38.00." ForeColor="Red"  Display="Dynamic" ControlToValidate="TextBox5" ValidationExpression="^[+-]?[0-9]{1,3}(?:,?[0-9]{3})*\.[0-9]{2}$"></asp:RegularExpressionValidator>
            <asp:TextBox ID="TextBox4" runat="server" placeholder="Describe your payment" title="Description of the payment Eg. Car Payment" CssClass="auto-style2" Width="140px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDescribe" runat="server" ForeColor="Red" ErrorMessage="Description required." Display="Dynamic"  ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Onclick="Button1_Click" CausesValidation="false" Text="CANCEL TRANSACTION" Width="166px" />
            <asp:Button ID="Button2" runat="server" CssClass="auto-style12" OnClick="Button2_Click" Text="SCHEDULE TRANSACTION" Width="186px" />
        </p>
        <h3 class="auto-style13">
            <a href="#" style="text-decoration:none;">My Previous Transactions</a> </h3>
               <%--<asp:GridView ID="GridView1" runat="server"></asp:GridView>--%>
        <asp:Table ID="paymentTable" runat="server" BorderStyle="Dashed" CssClass="auto-style24" Width="801px" >
                    <asp:TableHeaderRow runat="server">
                        <asp:TableCell runat="server" Style="text-align: left; vertical-align: Middle; font-weight: bold;">
                           Transaction Date
                        </asp:TableCell>
                        <asp:TableCell runat="server" Style="text-align: left; vertical-align: Middle; font-weight: bold;">
                           Receipient Name
                        </asp:TableCell>
                        <asp:TableCell runat="server" Style="text-align: left; vertical-align: Middle; font-weight: bold;">
                           Receipient Address
                        </asp:TableCell>
                        <asp:TableCell runat="server" Style="text-align: left; vertical-align: Middle; font-weight: bold;">
                           Amount
                        </asp:TableCell>
                        <asp:TableCell runat="server" Style="text-align: left; vertical-align: Middle; font-weight: bold;">
                           Status
                        </asp:TableCell>
                    </asp:TableHeaderRow>
                </asp:Table>
        <p class="auto-style13">
            <asp:Button ID="Button3" runat="server" CausesValidation="false"  OnClientClick="return confirm('Are you sure you want to cancel the transaction?');return false"  OnClick="Button3_Click" CssClass="auto-style14" Text="OK" />
               <asp:Label runat="server" ID="label1"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
    </form>
    
        <br />

   
    </body>
</html>
