<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" UnobtrusiveValidationMode="None" Inherits="ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title></title>
    <link href="XMLFile.xml" rel="stylesheet" type="text/xml" />
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet"/>
    <link href="StyleSheet2.css" rel=" stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="navigationBar">
        <h1><a href="index.aspx" style="color:darkgreen; opacity:1;"> Rapid bill pay </a></h1>
        <ul>
           <li><a href ="Signup.aspx"><asp:Button ID="Button1" OnClick="Button1_Click" runat="server" CausesValidation="false" class="signup" Text="Sign Up"/></a></li>
            <li><a href="index.aspx"><asp:Button ID="Button2" OnClick="Button2_Click" runat="server" CausesValidation="false" class="userlogin" Text ="User Login"/></a></li>
            <li><a href="FAQ.aspx" style="color:darkgreen;"> FAQ </a></li>
            <li><a href="ContactUs.aspx" style="color:darkgreen;"> Contact Us </a></li>
            <li><a href="Security.aspx" style="color:darkgreen;"> Security </a></li>
            <li><a href="AboutUs.aspx" style="color:darkgreen;"> About Us </a></li>
        </ul>
    </div>
        
    <style type="text/css">
 
        .right {
            height: 435px;
            width: 60%;
            float: right;
            background: #ff7733;
            margin-top:-435px;
            background-position:right;
        }

        .left {
            height: 435px;
            width: 40%;
            float: left;
            background: #ff7733;
        }

      
        .text {
            position: absolute;
            left: 44%;
            top: 9%;
        }

        .pdftext {
            width: 100%;
        }

            .pdftext qq {
                font-size: 23px;
                width:100%;
            }

        .ltext {
            position: absolute;
            left: 108px;
            margin-top:-15px;
            font-size: 1.2em;
        }

            .ltext ll {
                font-size: 23px;
            }
            .contact{
                margin-top: 455px;
                margin-right:300px;
            }
        .firstname {
            width: 300px;
            height: 50px;
            color: slategray;
            margin-left:3px;
            border-color:darkslategrey;
        }
        .lastname {
            width: 300px;
            height: 50px;
            color: slategray;
            margin-left: 30px;
            border-color: darkslategrey;
        }
        .email {
            width: 300px;
            height: 50px;
            color: slategray;
            margin-left: 40px;
            border-color: darkslategrey;
        }
        .type_text {
            width: 1200px;
            height: 100px;
            color: slategray;
            margin-left: 3px;
            border-color: darkslategrey;
        }
        .submit_staff {
            margin-left: 450px;
            font-family: Arial;
            display: inline-block;
            padding: 3px;
            text-align: center;
            text-decoration-color: #926969;
            font-size: 25px;
            background-color: silver;
        }
        .text_area{
            margin-right:2px;
            background-color:#ff7733;
        }
</style>
    <div class="left">
        <div class="ltext">
            <br />
             Toll Free Phone Number
            <br /><br />Direct Phone Number
            <br /><br />Fax
            <br /><br />E-mail
            <br /><br />Address Line 1
            <br /><br />Address Line 2
            <br /><br />City
            <br /><br />State
            <br /><br />Zip
        </div>

    </div>
    <div class="right" >
        <div class="pdftext">
            <p id="demo"></p>

            <script>

                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function () {
                    if (this.readyState == 4 && this.status == 200) {
                        myFunction(this);
                    }
                };
                xhttp.open("GET", "XMLFile.xml", true);
                xhttp.send();

                function myFunction(xml) {
                    var txt = "";
                    var xmlDoc = xml.responseXML;
                    var x = xmlDoc.getElementsByTagName('info');
                    txt += "<uu>" + "<qq>" + x[0].getAttribute('toll_free_phone') + "</qq>" + "</uu>" + "<br />" + "<br />";
                    txt += "<uu>" + "<qq>" + x[0].getAttribute('direct_phone') + "</qq>" + "</uu>" + "<br />" + "<br />";
                    txt += "<uu>" + "<qq>" + x[0].getAttribute('fax') + "</qq>" + "	</uu>" + "<br />" + "<br />";
                    txt += "<qq>" + x[0].getAttribute('email') + "</qq>" + "<br />" + "<br />";
                    txt += "<qq>" + x[0].getAttribute('address_line1') + "</qq>" + "<br />" + "<br />";
                    txt += "<qq>" + x[0].getAttribute('address_line2') + "</qq>" + "<br />" + "<br />";
                    txt += "<qq>" + x[0].getAttribute('city') + "</qq>" + "<br />" + "<br />";
                    txt += "<qq>" + x[0].getAttribute('state') + "</qq>" + "<br />" + "<br />";
                    txt += "<qq>" + x[0].getAttribute('zip') + "</qq>" + "<br />" + "<br />";


                    document.getElementById("demo").innerHTML = txt;
                }
                function myFunc() {
                    alert("Work In Progress");
                }
            </script>
        </div>
    </div>
    <div class="contact">
    <h1>Contact Rapid Bill pay Support staff:</h1>
        <br/>
     </div>
    <div id="text_area">
        
           
          <asp:TextBox id="TextBox1" placeholder="First Name" runat="server" class="firstname" />
         <asp:RequiredFieldValidator ID="RequiredFieldValidatorFname" runat="server" ForeColor="Red" ErrorMessage="First Name Required" Display="Dynamic"  ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
        <asp:TextBox id="TextBox2" placeholder="Last Name" runat="server" class="lastname" />
         <asp:RequiredFieldValidator ID="RequiredFieldValidatorLname" runat="server" ForeColor="Red" ErrorMessage="Last Name Required" Display="Dynamic"  ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        <asp:TextBox id="TextBox3" placeholder="Email address" runat="server" class="email" />
         <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ForeColor="Red" ErrorMessage="Email required" Display="Dynamic"  ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
               
    <br/><br/><br/>
  
            
             <asp:TextBox id="TextBox4" Text="Type your text here" runat="server" class="type_text" />
                <br/><br />
               <asp:Button ID="Button3" runat="server" class="submit_staff" OnClick="sendMail" Text ="Submit your message to support staff"/>
         
               <asp:Label ID="label1" runat="server" ></asp:Label>
                        

    </div>
    </form>
</body>
</html>
