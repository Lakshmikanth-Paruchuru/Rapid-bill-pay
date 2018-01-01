<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" UnobtrusiveValidationMode="None" Inherits="Signup" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet"/>
    <link href="StyleSheet.css" rel=" stylesheet" type="text/css" />
    <meta charset="utf-8" />
    <title>  Online Bill Pay</title>
    <style type="text/css">
        .auto-style1 {
            width: 315px;
        }
        .auto-style2 {
            width: 315px;
            height: 53px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div id="navigationBar">
        <h1><a href="index.aspx" style="color:darkgreen; opacity:1;"> Rapid bill pay </a></h1>
        <ul>
            <li><asp:Button ID="Button1" runat="server"  class="signup" Text="Sign Up"/></li>
            
            <li><a href="index.aspx"><asp:Button ID="Button2" Onclick="Button2_Click" runat="server" CausesValidation="false"  class="userlogin" Text ="User Login"/></a></li>
            <li><a href="FAQ.aspx" style="color:darkgreen;"> FAQ </a></li>
            <li><a href="ContactUs.aspx" style="color:darkgreen;"> Contact Us </a></li>
            <li><a href="Security.aspx" style="color:darkgreen;"> Security </a></li>
            <li><a href="AboutUs.aspx" style="color:darkgreen;"> About Us </a></li>
        </ul>
    </div>

    <div id="nav1">
        
            <br/>
            Pay your bills real quick..<br/>
                <div id="nav11"> With One Click!!
 
                    <br /><br/>
            <div id="nav22" style="font-style:oblique; font-family:sans-serif;"> A Complete Solution for a Quick Pay   </div>

        </div>
    </div>
    <div id="nav2">
        <table style="height:px; width:30%; font-size:1.0em; background-color:darkgrey;">
            <tr>
                <td style="font-family:'Times New Roman';font-size: 1.1em;text-align:center" class="auto-style1"> New to Rapid Bill Pay ?</td>
            </tr>
            <tr style="padding-bottom:1em;">
            <th style="font-size:1.2em;text-align:left; font-family:'Times New Roman'" colspan="2" class="auto-style2">Create An account to Pay your Bills Online</th>
            </tr>
            <tr>
                <td style="font-size:0.9em; font-family:'Times New Roman'" class="auto-style1">EMAIL ADDRESS<class id="req2" style="color:red">*</class></td>
            </tr>
            <tr>
                <td class="auto-style1"> <asp:TextBox id="TextBox1" placeholder="Enter email address" runat="server" class="mytext" /></td>
            </tr>
            <tr>
            <td style="font-size:0.9em; font-family:'Times New Roman'" class="auto-style1">PASSWORD<class id="req3" style="color:red">*</class></td> 
            </tr>
            <tr>
                <td class="auto-style1"> <asp:TextBox id="TextBox2" placeholder="Enter password" TextMode="password"  runat="server" class="mytext" /></td>
            </tr>
            <tr>
             <td class="auto-style1"><asp:LinkButton runat="server" id="LinkButton1"  href="#" Font-Size="0.9em" style="color:darkgreen;" >Already a member</asp:LinkButton></td>
           
           
         
            </tr>
            <tr>
                 <td rowspan="1" class="auto-style1"><asp:LinkButton runat="server" id="LinkButton3" OnClick="LinkButton3_Click" Font-Size="0.9em" style="color:darkgreen;" href="index.aspx">Login</asp:LinkButton></td>
               <td style="background-color:darkgrey"><a href="Signupwindow.aspx"><asp:Button ID="Button3" runat="server" OnClick="Button3_Click" class="userlogin" Text ="NEXT"/></a></td>
               
            </tr>
            <tr>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ForeColor="Red" ErrorMessage="Email required." Display="Dynamic"  ControlToValidate="TextBox1"></asp:RequiredFieldValidator> 
               <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Email not a in proper format." ForeColor="Red"  Display="Dynamic" ControlToValidate="TextBox1" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>
              <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ForeColor="Red" ErrorMessage="Password required." Display="Dynamic"  ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorPassword" runat="server"  Display="Dynamic"  ErrorMessage="Password must be between 8 and 10 characters, contain at least one digit and one 
                                alphabetic character, and must not contain special characters." ForeColor="red"  ControlToValidate="TextBox2" ValidationExpression="^(?=.*\d)(?=.*[a-z | A-Z]).{8,10}$"></asp:RegularExpressionValidator> 
            </tr>
        </table>
    </div> 
    </form>
</body>
</html>