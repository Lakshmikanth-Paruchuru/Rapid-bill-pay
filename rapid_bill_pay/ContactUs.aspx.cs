using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Collections.Specialized;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Signup.aspx", true); ;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx", true); ;
    }
    protected void sendMail(object sender, EventArgs e)
    {
        string msgTo = TextBox3.Text;
        string msgSubject = "We have received your Message ! ";
        string msgBody = "Dear user " + msgTo +",<br /> "+
            " You have received this email because you contacted us with a comment, question(s) and/or concerns.<br /><br />" +
            "" +
            " Our support staff will respond within next 48 hours.<br />" +
            "Thank You.<br />" +
            "Lakshmikanth Paruchuru";

        MailMessage mailObj = new MailMessage();
        mailObj.Body = msgBody;
        mailObj.From = new MailAddress("lakshmikanthparuchuru@gmail.com", "Admin Rapid Bill Pay");
        mailObj.To.Add(new MailAddress(msgTo));
        mailObj.Subject = msgSubject;
        mailObj.IsBodyHtml = true;

        SmtpClient smtpClient = new System.Net.Mail.SmtpClient("smtp.gmail.com", 587);
        smtpClient.UseDefaultCredentials = false;
        smtpClient.Credentials = new System.Net.NetworkCredential("lakshmikanthparuchuru@gmail.com", "pilliGR0");
        smtpClient.EnableSsl = true;

        try
        {
            //smtpClient.Send("motelgroup3@gmail.com",msgTo,"thanks subject",msgBody);
            smtpClient.Send(mailObj);
        }

        catch (Exception ex)
        {
            label1.Text = ex.ToString();
        }
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Thank you for your comments. An email has been send to the address you entered. Please feel free to contact us anytime in the future, so we will address your concerns');", true);

        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        


    }
}