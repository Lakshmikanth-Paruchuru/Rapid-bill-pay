<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forgotpassword.aspx.cs" UnobtrusiveValidationMode="None" Inherits="Forgotpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet"/>
    <link href="StyleSheet.css" rel=" stylesheet" type="text/css" />
    <meta charset="utf-8" />
    <title>  Online Bill Pay</title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 8px;
            margin-top: 0px;
            
        }
        .auto-style2 {
            margin-left: 126px;
            margin-top: 0px;
        }
        .auto-style3 {
            margin-left: 83px;
        }
        .auto-style4 {
            margin-left: 176px;
            margin-top: 0px;
        }
        .auto-style5 {
            height: 36px;
            width: 393px;
            margin-left: 190px;
            margin-top: 144px;

        }
        .auto-style6 {
            height: 478px;
            width: 655px;
            margin-left: 173px;
        }
    </style>
</head>
<body style="background-image:url('background.jpg'); margin-left: 7px;">
    <form id="form1" runat="server" class="auto-style6">
        
         <div id="nav1">
        
            <br/>
            Pay your bills real quick..<br/>
                <div id="nav11"> With One Click!!
 
                    <br /><br/>
            <div id="nav22" style="font-style:oblique; font-family:sans-serif;"> A Complete Solution for a Quick Pay   </div>

        </div>
        <div id ="thebody" style="background-color:darkgrey">
        <div class="auto-style5" style="color:white; font-size:0.7em;" >
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         RECOVER PASSWORD<br />
        </div>
        <p>
            <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style2" title ="A valid email address" Height="29px" ImageUrl="~/download.png" OnClick="ImageButton1_Click" Width="47px" />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1" placeholder="Email" title ="Enter a valid email address" Height="29px" Width="404px"></asp:TextBox>
              
        </p>
       <a href="index.aspx"> <asp:Button ID="Button1" runat="server" CssClass="auto-style4" CausesValidation="false" OnClick="Button1_Click" Text="CANCEL AND GO BACK" Width="172px" Height="29px" /></a>
       <asp:Button ID="Button2" runat="server" CssClass="auto-style3"  OnClick="mailPassword" Height="29px" Text="RECOVER PASSWORD" Width="161px" />
       <asp:Label runat="server" ID="label1"></asp:Label>
         <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ForeColor="Red" ErrorMessage="Email required." Display="Dynamic"  ControlToValidate="TextBox1"></asp:RequiredFieldValidator> 
               <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Email not a in proper format." ForeColor="Red"  Display="Dynamic" ControlToValidate="TextBox1" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>   
   </div>
     </form>
</body>
</html>
