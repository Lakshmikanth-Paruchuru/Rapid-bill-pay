<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" UnobtrusiveValidationMode="None" Inherits="index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet"/>
    <link href="StyleSheet.css" rel=" stylesheet" type="text/css" />
    <meta charset="utf-8" />
    <title>  Online Bill Pay</title>
</head>
<body style="overflow:hidden">
    <form id="form1" runat="server">
       <div id="navigationBar">
        <h1><a href="index.aspx" style="color:darkgreen; opacity:1;"> Rapid bill pay </a></h1>
        <ul>
            <li><a href ="Signup.aspx"><asp:Button ID="Button1" OnClick="Button1_Click" CausesValidation="false" runat="server" class="signup" Text="Sign Up"/></a></li>
            <li><a href="index.aspx"><asp:Button ID="Button2" runat="server" class="userlogin" Text ="User Login"/></a></li>
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
       
    <div id="nav2" class="tabbar">
        <table>
            <tr style="padding-bottom:1em;">
                 <th style="font-size:1.1em;text-align:left; font-family:'Times New Roman'">Login to Pay your Bills Online</th>
                
            </tr>
            <tr>
                <td style="font-size:0.9em; font-family:'Times New Roman'">EMAIL ADDRESS<class id="req" style="color:red">*</class></td>
            </tr>
            <tr>
                <td> <asp:TextBox id="TextBox1" placeholder="Enter email address" runat="server" class="mytext" /></td>
                
            </tr>
            <tr>
            <td style="font-size:0.9em; font-family:'Times New Roman'">PASSWORD<class id="req1" style="color:red">*</class></td> 
               
            </tr>
            <tr>
                <td> <asp:TextBox id="TextBox2" placeholder="Enter password" TextMode="password"  runat="server" class="mytext" /></td>
               
            </tr>
            
            <tr>
                
              
             <td><asp:LinkButton runat="server" id="LinkButton1"  href="Forgotpassword.aspx" OnClick="LinkButton1_Click" Font-Size="0.9em" style="color:darkgreen;" >Forgot password</asp:LinkButton></td>
           
           
         
            </tr>
            <tr>
                 <td rowspan="1"><asp:LinkButton runat="server" id="LinkButton3" Onclick="LinkButton3_Click" Font-Size="0.9em" style="color:darkgreen;" href="Signup.aspx">Create a New Account</asp:LinkButton></td>
               <td><a href="Paymentrequest.aspx"><asp:Button ID="Button3" runat="server" OnClick="Button3_Click" class="userlogin" Text ="User Login"/></a></td>
               
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
            <div id="billpayadds" style="margin-top:20%">
            <asp:AdRotator CssClass="add"  ID="AdRotator1" runat="server" AdvertisementFile="~/Advertisements.xml" Target="_blank" />
            <asp:AdRotator CssClass="add" ID="AdRotator2" runat="server" AdvertisementFile="~/Advertisements.xml" Target="_blank" />
            <asp:AdRotator CssClass="add" ID="AdRotator3" runat="server" AdvertisementFile="~/Advertisements.xml" Target="_blank" />

        </div>
    </form>
</body>
</html>
