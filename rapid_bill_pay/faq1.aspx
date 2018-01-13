<%@ Page Language="C#" AutoEventWireup="true" CodeFile="faq1.aspx.cs" Inherits="faq1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title></title>
    <link href="StyleSheet2.css" rel=" stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet"/>
    
</head>
<body>
    <form id="form1" runat="server">
        <div id="navigationBar">
        <h1><a href="index.aspx" style="color:darkgreen; opacity:1;"> Rapid bill pay </a></h1>
        <ul>
            <li><a href ="Signup.aspx"><asp:Button ID="Button1" OnClick="Button1_Click" runat="server" class="signup" Text="Sign Up"/></a></li>
            <li><a href="index.aspx"><asp:Button ID="Button2" OnClick="Button2_Click" runat="server" class="userlogin" Text ="User Login"/></a></li>
            <li><a href="FAQ.aspx" style="color:darkgreen;"> FAQ </a></li>
            <li><a href="ContactUs.aspx" style="color:darkgreen;"> Contact Us </a></li>
            <li><a href="Security.aspx" style="color:darkgreen;"> Security </a></li>
            <li><a href="AboutUs.aspx" style="color:darkgreen;"> About Us </a></li>
        </ul>
    </div>
    <script>
        function myFunction() {
            alert("Work In Progress");
        }
    </script>
    <br/>
    <h1 style="color:red; background-color:yellow; margin-right:1px;font-family:Calibri;">FREQUENTLY ASKED QUESTIONS <i> Rapid Bill pay</i></h1>
    <object width="1350" height="800" data="faq2.pdf"></object>

    </form>
</body>
</html>
