<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signupwindow.aspx.cs"  UnobtrusiveValidationMode="None" Inherits="Signupwindow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 163px;
        }
        .auto-style2 {
            height: 532px;
            margin-left: 131px;
            width: 916px;
            margin-right: 143px;
        }
        .auto-style4 {
            margin-left: 6px;
        }
        .auto-style6 {
            margin-left: 2px;
        }
        .auto-style7 {
            margin-left: 5px;
        }
        .auto-style8 {
            margin-left: 3px;
        }
        .auto-style10 {
            margin-left: 86px;
        }
        .auto-style11 {
            margin-left: 34px;
        }
        .auto-style12 {
            margin-left: 76px;
        }
        .auto-style13 {
            margin-left: 85px;
        }
        .auto-style14 {
            margin-left: 84px;
        }
        .auto-style15 {
            margin-left: 82px;
        }
        .auto-style16 {
            margin-left: 4px;
        }
        .auto-style17 {
            margin-left: 81px;
        }
        .auto-style18 {
            margin-left: 80px;
        }
        .auto-style19 {
            margin-left: 8px;
        }
    </style>
</head>
<body style="background-image:url(background.jpg)">
    <form id="text" class="auto-style1" style="font-family:'Comic Sans MS'; color:white;text-align:center">
        <p>Pay your Bills, Real Quick!</p> 
        <p>With one Click!!</p> 
        <h2>Rapid Bill Pay</h2> 
        <p>A complete online payment solution</p><br />
    </form>
    <form id="form1" runat="server" style="background-color:darkgrey;color:green;">
        <div class="auto-style2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SIGN UP<br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Complete your full mailing address<br />
&nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" title="United States postal abbreviations for states" CssClass="auto-style12" ImageUrl="~/icons8-globe.png" />
            <asp:DropDownList ID="DropDownList1" title="United States postal abbreviations for states" runat="server" DataTextField="Select state/province" CssClass="auto-style19" Height="23px" Width="261px">
                <asp:ListItem Value="-1">Select State/Province</asp:ListItem>
                <asp:ListItem>AL</asp:ListItem>
                <asp:ListItem>AK</asp:ListItem>
                <asp:ListItem>AZ</asp:ListItem>
                <asp:ListItem>AR</asp:ListItem>
                <asp:ListItem>CA</asp:ListItem>
                <asp:ListItem>CO</asp:ListItem>
                <asp:ListItem>CT</asp:ListItem>
                <asp:ListItem>DE</asp:ListItem>
                <asp:ListItem>FL</asp:ListItem>
                <asp:ListItem>GA</asp:ListItem>
                <asp:ListItem>HI</asp:ListItem>
                <asp:ListItem>ID</asp:ListItem>
                <asp:ListItem>IL</asp:ListItem>
                <asp:ListItem>IN</asp:ListItem>
                <asp:ListItem>IA</asp:ListItem>
                <asp:ListItem>KS</asp:ListItem>
                <asp:ListItem>KY</asp:ListItem>
                <asp:ListItem>LA</asp:ListItem>
                <asp:ListItem>ME</asp:ListItem>
                <asp:ListItem>MD</asp:ListItem>
                <asp:ListItem>MA</asp:ListItem>
                <asp:ListItem>MI</asp:ListItem>
                <asp:ListItem>MN</asp:ListItem>
                <asp:ListItem>MS</asp:ListItem>
                <asp:ListItem>MO</asp:ListItem>
                <asp:ListItem>MT</asp:ListItem>
                <asp:ListItem>NE</asp:ListItem>
                <asp:ListItem>NV</asp:ListItem>
                <asp:ListItem>NH</asp:ListItem>
                <asp:ListItem>NJ</asp:ListItem>
                <asp:ListItem>NM</asp:ListItem>
                <asp:ListItem>NY</asp:ListItem>
                <asp:ListItem>NC</asp:ListItem>
                <asp:ListItem>ND</asp:ListItem>
                <asp:ListItem>OH</asp:ListItem>
                <asp:ListItem>OK</asp:ListItem>
                <asp:ListItem>OR</asp:ListItem>
                <asp:ListItem>PA</asp:ListItem>
                <asp:ListItem>RI</asp:ListItem>
                <asp:ListItem>SC</asp:ListItem>
                <asp:ListItem>SD</asp:ListItem>
                <asp:ListItem>TN</asp:ListItem>
                <asp:ListItem>TX</asp:ListItem>
                <asp:ListItem>UT</asp:ListItem>
                <asp:ListItem>VT</asp:ListItem>
                <asp:ListItem>VA</asp:ListItem>
                <asp:ListItem>WA</asp:ListItem>
                <asp:ListItem>WV</asp:ListItem>
                <asp:ListItem>WI</asp:ListItem>
                <asp:ListItem>WY</asp:ListItem>
                <asp:ListItem>DC</asp:ListItem>
                <asp:ListItem>AS</asp:ListItem>
                <asp:ListItem>GU</asp:ListItem>
                <asp:ListItem>MP</asp:ListItem>
                <asp:ListItem>PR</asp:ListItem>
                <asp:ListItem>UM</asp:ListItem>
                <asp:ListItem>VI</asp:ListItem>
            </asp:DropDownList>
             <asp:RequiredFieldValidator ID="RequiredFieldValidatorState" runat="server" ForeColor="Red" InitialValue="-1" ErrorMessage="Please select a state." Display="Dynamic"  ControlToValidate="DropDownList1"></asp:RequiredFieldValidator> 
            <br />
            <asp:ImageButton ID="ImageButton2" runat="server" title="Customer mailing address" CssClass="auto-style13" ImageUrl="~/icons8-globe-earth.png" />
            <asp:TextBox ID="TextBox2" runat="server" title="Customer mailing street address" placeholder="Street address" CssClass="auto-style4"></asp:TextBox><class id="req" style="color:red">*</class>
             <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ForeColor="Red" ErrorMessage="Please enter street address." Display="Dynamic"  ControlToValidate="TextBox2"></asp:RequiredFieldValidator> 
&nbsp;
            <asp:TextBox ID="TextBox3" title="Customer mailing zipcode" placeholder="Zip code" runat="server" Width="136px"></asp:TextBox><class id="req1" style="color:red">*</class>
             <asp:RequiredFieldValidator ID="RequiredFieldValidatorZipcode" runat="server" ForeColor="Red" ErrorMessage="Please enter Zip Code." Display="Dynamic"  ControlToValidate="TextBox3"></asp:RequiredFieldValidator> 
             <asp:RegularExpressionValidator ID="RegularExpressionValidatorZip" runat="server" ErrorMessage="Zip code not in proper format." ForeColor="Red"  Display="Dynamic" ControlToValidate="TextBox3" ValidationExpression="^(\d{5}-\d{4}|\d{5}|\d{9})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$"></asp:RegularExpressionValidator>
            <br />
            <asp:ImageButton ID="ImageButton3" runat="server" title="Customer name"  CssClass="auto-style14" ImageUrl="~/man.png" />
            <asp:TextBox ID="TextBox4" placeholder="First Name" title="Customer first name" runat="server" CssClass="auto-style4"></asp:TextBox><class id="req2" style="color:red">*</class>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorFname" runat="server" ForeColor="Red" ErrorMessage="Please enter First Name." Display="Dynamic"  ControlToValidate="TextBox4"></asp:RequiredFieldValidator> 
&nbsp;
            <asp:TextBox ID="TextBox5" placeholder="Last Name" title="Customer last name"  runat="server" Width="138px"></asp:TextBox><class id="req3" style="color:red">*</class>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorLname" runat="server" ForeColor="Red" ErrorMessage="Please enter Last Name." Display="Dynamic"  ControlToValidate="TextBox5"></asp:RequiredFieldValidator> 
            <br />
            <asp:ImageButton ID="ImageButton4" runat="server" title="Customer phone" CssClass="auto-style14" ImageUrl="~/icons8-phone.png" />
            <asp:TextBox ID="TextBox6" runat="server" placeholder="Home Phone" title="Customer Home phone" CssClass="auto-style6"></asp:TextBox><class id="req4" style="color:red">*</class>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorHphone" runat="server" ForeColor="Red" ErrorMessage="Please enter Home Phone Number." Display="Dynamic"  ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidatorHPhone" runat="server" ErrorMessage="Phone number format error." ForeColor="Red"  Display="Dynamic" ControlToValidate="TextBox6" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
            
&nbsp;
            <asp:TextBox ID="TextBox7" placeholder="Cell Phone" runat="server" title="Customer cell phone" Width="141px"></asp:TextBox><class id="req5" style="color:red">*</class>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCPhone" runat="server" ForeColor="Red" ErrorMessage="Please enter Cell Phone Number." Display="Dynamic"  ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorCPhone" runat="server" ErrorMessage="Phone number format error." ForeColor="Red"  Display="Dynamic" ControlToValidate="TextBox7" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
            <br />
            Note: your email address will be your username<br />
            <asp:ImageButton ID="ImageButton5" runat="server" title="A valid email address" CssClass="auto-style15" ImageUrl="~/icons8-email.png" />
            <asp:TextBox ID="TextBox8" placeholder="Email Address" OnTextChanged="emailAddressCheck2" title="A valid email address" runat="server" CssClass="auto-style7"></asp:TextBox><class id="req6" style="color:red">*</class>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ForeColor="Red" ErrorMessage="Please enter email." Display="Dynamic"  ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Phone number format error." ForeColor="Red"  Display="Dynamic" ControlToValidate="TextBox8" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>
&nbsp;
            <asp:TextBox ID="TextBox9" placeholder="Re-Type Email Address" title="Re-Type the email address" runat ="server" Width="141px"></asp:TextBox><class id="req7" style="color:red">*</class>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorReTypeEmail" runat="server" ForeColor="Red" ErrorMessage="Please Re-Type your Email." Display="Dynamic"  ControlToValidate="TextBox9"></asp:RequiredFieldValidator> 
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorReEmail" runat="server" ErrorMessage="Email format error." ForeColor="Red"  Display="Dynamic" ControlToValidate="TextBox9" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>
            <asp:CompareValidator ID="CompareValidatorEmail" runat="server" ForeColor="red" ErrorMessage="Email does not match" ControlToValidate="TextBox9" ControlToCompare="TextBox8" Operator="Equal" Type="String"></asp:CompareValidator>
            <br />
            <asp:ImageButton ID="ImageButton6" runat="server"  title="Password must be between 8 and 10 characters, contain at least one digit and one alphabetic character, and must not
            contain special character"  CssClass="auto-style17" ImageUrl="~/icons8-key.png" />
            <asp:TextBox ID="TextBox10" placeholder="Password" title="Password must be between 8 and 10 characters, contain at least one digit and one alphabetic character, and must not
            contain special character" runat="server" TextMode="Password" CssClass="auto-style16"></asp:TextBox><class id="req8" style="color:red">*</class>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" ForeColor="Red" ErrorMessage="Please enter Password." Display="Dynamic"  ControlToValidate="TextBox10"></asp:RequiredFieldValidator> 
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorPass" runat="server" ErrorMessage="Validate a strong password. It must be between 8 and 10 characters, contain at least one digit and one 
                                alphabetic character, and must not contain special characters
" ForeColor="Red"  Display="Dynamic" ControlToValidate="TextBox10" ValidationExpression="^(?=.*\d)(?=.*[a-z | A-Z]).{8,10}$"></asp:RegularExpressionValidator>
&nbsp;
            <asp:TextBox ID="TextBox11" placeholder="Reset Password" title="Re-Type password"  TextMode="Password" runat="server" Width="142px"></asp:TextBox><class id="req9" style="color:red">*</class>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorRePass" runat="server" ForeColor="Red" ErrorMessage="Please Re-Type password." Display="Dynamic"  ControlToValidate="TextBox11"></asp:RequiredFieldValidator> 
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorRePass" runat="server" ErrorMessage="Validate a strong password. It must be between 8 and 10 characters, contain at least one digit and one 
                                alphabetic character, and must not contain special characters
." ForeColor="Red"  Display="Dynamic" ControlToValidate="TextBox11" ValidationExpression="^(?=.*\d)(?=.*[a-z | A-Z]).{8,10}$"></asp:RegularExpressionValidator>
            <asp:CompareValidator ID="CompareValidatorPassword" runat="server" ForeColor="red" ErrorMessage="Password doesnot match" ControlToValidate="TextBox11" ControlToCompare="TextBox10" Operator="Equal" Type="String"></asp:CompareValidator>
            <br />
            Select a security question<br />
            <asp:ImageButton ID="ImageButton7" runat="server" title="Enter an answer to the
security question" CssClass="auto-style17" Width="28px" Height="28px" ImageUrl="~/icons8-question-mark.png" />
            <asp:DropDownList ID="DropDownList2" runat="server" title="“Select a
security question" CssClass="auto-style8" Height="19px" Width="258px">
                                         <asp:ListItem Value="qa"> What was your childhood nickname?</asp:ListItem>
                                        <asp:ListItem Value="qb">What is the name of your favorite childhood friend?</asp:ListItem>
                                        <asp:ListItem Value="qc">What is your favorite sport team?</asp:ListItem>
                                        <asp:ListItem Value="qd">What was the make and model of your first car?</asp:ListItem>
                                        <asp:ListItem Value="qe">What school did you attend for sixth grade?</asp:ListItem>
                                        <asp:ListItem Value="qf">What was the last name of your third grade teacher?</asp:ListItem>
                                        <asp:ListItem Value="qg">In what town was your first job?</asp:ListItem>
                                        <asp:ListItem Value="qh">What is your favorite movie?</asp:ListItem>
                                        <asp:ListItem Value="qi">Who is your childhood sports hero?</asp:ListItem>
                                        <asp:ListItem Value="qj">In what year was your father born?</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:ImageButton ID="ImageButton8" runat="server" CssClass="auto-style18" Height="28px" Width="28px" title="Enter an answer to the
security question" ImageUrl="~/icons8-question-mark.png" />
            <asp:TextBox ID="TextBox13"  title="Enter an answer to the
security question" runat="server" CssClass="auto-style8" placeholder="Type answer to the security Question" Width="246px"></asp:TextBox><class id="req10" style="color:red">*</class>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorAnswer" runat="server" ForeColor="Red" ErrorMessage="Please answer the security question." Display="Dynamic"  ControlToValidate="TextBox13"></asp:RequiredFieldValidator> 
            <br />
            <br />
            <asp:LinkButton ID="LinkButton1" href="Privacypolicy.aspx" runat="server" OnClick="LinkButton1_Click">Privacy Policy</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="CheckBox1" Text="I have read and agreed to the terms and conditions in the Privacy policy" runat="server" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"  CausesValidation="false" CssClass="auto-style10" Text="CANCEL" Width="118px" />
            <asp:Button ID="Button2" runat="server" CssClass="auto-style11"   OnClick="addUser" Text="CREATE ACCOUNT" />
            <asp:Label runat="server" ID="label1"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
