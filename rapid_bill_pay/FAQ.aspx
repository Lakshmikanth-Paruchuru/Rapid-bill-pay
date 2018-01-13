<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FAQ.aspx.cs" Inherits="FAQ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet"/>
    <title></title>
    <link href="StyleSheet2.css" rel=" stylesheet" type="text/css" />
    
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
    <br/>
    <a href="faq1.aspx"> View FAQ as PDF</a>
    <br/>
    <br/>
    <div id="FAQdiv" style="margin-left:4px;">
        <p style="font-size:1.2em; color:red"> Q.What is Rapid Bill Pay? </p>
        <p style="font-size:1.2em;color:blue">A.Rapid Bill Pay is the premier provider for online bill payment systems. We make it easy for organizations to offer online bill payment, and we make it easy for customers to pay their bills online. </p>
        <br/>
        <p style="font-size:1.2em; color:red"> Q. Does it cost anything to sign up for online bill payment? </p>
        <p style="font-size:1.2em;color:blue">A. No. It's free to sign up for online bill payment and to use the Rapid Bill Pay service. However, some billing organizations charge a transaction convenience fee.</p>
        <br />
        <p style="font-size:1.2em; color:red"> Q. How do I create a log in? </p>
        <p style="font-size:1.2em;color:blue">A.Follow these steps </p>
        <p style="margin-right:20px;font-size:1.2em;color:blue">1.	From the Rapid Bill Pay home page, simply click the "Sign Up" button, enter your email, and create a password.</p>
        <p style="margin-right:20px;font-size:1.2em;color:blue">2.	You will be sent an email to verify your email address. In that email, you will need to click "Verify Email" to return to Rapid Bill Pay. In that email, you will need to click "Verify Email" to return to Rapid Bill Pay.</p>
        <p style="margin-right:20px;font-size:1.2em;color:blue">3.	Finally, you will need to provide your contact information, agree to terms and conditions, and then click "Next." Once your Rapid Bill Pay account has been created, you can begin managing your bills.</p>
        <br />
        <p style="font-size:1.2em; color:red"> Q. Do I need a separate Rapid Bill Pay login for each billing account?</p>
        <p style="font-size:1.2em;color:blue">A. No. You can manage all your merchant and service provider billing accounts from a single Rapid Bill Pay login.</p>
        <br />
        <p style="font-size:1.2em; color:red"> Q. What payment choices do I have?</p>
        <p style="font-size:1.2em;color:blue">A. You can pay your bills with a credit card, debit card, or you can transfer funds directly from your banking account using electronic funds transfer (EFT). The types of payment accepted are determined by the billing organization and not Rapid Bill Pay. If you do have questions about payment methods, please contact the billing organization directly.</p>
        <br />
        <p style="font-size:1.2em; color:red"> Q. Can I set up automatic payments?</p>
        <p style="font-size:1.2em;color:blue">A. Yes. When you set up your account you can choose whether you want automatic bill payment, so you can set it and forget it. Payments will be automatically deducted from a credit card or banking account on the frequency you choose.</p>
        <br />
        <p style="font-size:1.2em; color:red"> Q. What will my bill look like online?</p>
        <p style="font-size:1.2em;color:blue">A. Your online bill will have an easy to read format with all of the necessary information to understand your bill.</p>
        <br />
        <p style="font-size:1.2em; color:red"> Q. What other information is available?</p>
        <p style="font-size:1.2em;color:blue">A. You can view up to a year's history of your account online, so you can print and compare your current bill to previous bills.</p>
        <br />
        <p style="font-size:1.2em; color:red"> Q. How do I update my customer information, such as email address or phone number?</p>
        <p style="font-size:1.2em;color:blue">A. First log in to your account. In the upper right corner of the screen, you will see the profile icon along with the name associated with your account. Click the dropdown arrow and select "Account Settings." You can then update your contact or login information by clicking “Edit” and then click “Save Edits.”</p>
        <br />

        

    </div>
    </form>
</body>
</html>
