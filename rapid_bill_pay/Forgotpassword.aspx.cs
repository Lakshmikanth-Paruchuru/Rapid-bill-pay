using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Forgotpassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx", true); ;
    }
  /*  protected void Button2_Click(object sender, EventArgs e)
    {

        if (RequiredFieldValidatorEmail.IsValid && RegularExpressionValidatorEmail.IsValid)
        {
            Response.Redirect("Forgotpassword.aspx", true); ;
        }
        else
        {
            Button2.Text = "Validation failed";
        }
    } */

    protected void mailPassword(object sender, EventArgs e) //got code from login.aspx
    {

        string username = TextBox1.Text;
        string pass = "";

        MySql.Data.MySqlClient.MySqlConnection co;
        string connection = System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnectionString"].ToString();

        try
        {
            using (co = new MySql.Data.MySqlClient.MySqlConnection(connection))
            {
                co.Open();
                MySql.Data.MySqlClient.MySqlCommand command = new MySql.Data.MySqlClient.MySqlCommand("select emailAddress,password from paruchurul_WADfl17_UserInfo where emailAddress='" + username + "'", co);

                MySql.Data.MySqlClient.MySqlDataReader sqlReader = command.ExecuteReader();
                if (sqlReader.HasRows == true)
                {
                    while (sqlReader.Read())
                    {
                        //  string email = ((string)sqlReader["emailAddress"]);
                        //   if (email == username)
                        // {
                        pass = ((string)sqlReader["Password"]);
                        sendMail(sender, e, pass);
                        //}
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Sorry we cannot find a matching email. Please Sign Up');", true);

                }
            }
        }
        catch { }


        /* string username = TextBox1.Text;
        int countUsers = 0;
        string pass = "";
        foreach (UserInfo kk in ((List<UserInfo>)Application["AllUsersList"]))
        {
            countUsers++;


            if (kk.EmailAddress == username)
            {
                int ind = ((List<UserInfo>)Application["AllUsersList"]).IndexOf(kk);
                Session["currentuser"] = kk;
                Session["username"] = kk.FirstName + kk.LastName;
                pass = kk.Password;
                sendMail(sender, e, pass);
                //send mail ()
                //Response.Redirect("myStudents.aspx?index=" + ind);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('It appears this user is not in our database. Please go to the Sign Up page');", true);

            } */
    
    }

    protected void sendMail(object sender, EventArgs e, string pwd)
    {
        string msgTo = TextBox1.Text;
        string msgSubject = "We have received your Message ! ";
        string msgBody = "Dear user " + msgTo + ",<br /> "+ "Your current password is: " + pwd +
            "<br /> You have received this email because you requested to recover your password.<br /><br />" +
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
        



    }
}