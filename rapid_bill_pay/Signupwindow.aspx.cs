using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Signupwindow : System.Web.UI.Page
{
 
    int countofuser = 0;
    bool flag = true;
    UserInfo aUser = new UserInfo();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            //Response.Write("page loaded first time");
        }

        else
        {
            //int countofuser = 0;
            //bool flag = true;
            //UserInfor aUser = new UserInfor();
            foreach (UserInfo kk in ((List<UserInfo>)Application["AllUsersList"]))
            {

                countofuser++;
                aUser.EmailAddress = TextBox8.Text;
                if (aUser.EmailAddress == kk.EmailAddress)
                {
                    flag = false; //person already present,dont add
                    break;
                }
                else
                {
                    flag = true; //person not present
                }
            }
            if (!flag)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('User " + aUser.EmailAddress + " already exists. Please Login');", true);

            }
        }

    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Privacypolicy.aspx", true);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ClientScriptManager CSM = Page.ClientScript;
        if (!ReturnValue())
        {
            string strconfirm = "<script>if(window.confirm('Are you sure that you want to cancel the signup details?')){window.location.href='Signupwindow.aspx'}</script>";
            CSM.RegisterClientScriptBlock(this.GetType(), "Confirm", strconfirm, false);
        }
        bool ReturnValue()
        {
            return false;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked)
        {
            Response.Write("<script>alert('Work in progress')</script>");
        }
        else
            Response.Write("<script>alert('Please check the checkbox')</script>");

    }

  
    public void addUser(object sender, EventArgs e)
    {
        if (CheckBox1.Checked)
        {
            aUser.EmailAddress = TextBox8.Text;
            aUser.FirstName = TextBox4.Text;
            aUser.LastName = TextBox5.Text;
            aUser.Password = TextBox10.Text;
            aUser.CellPhone = TextBox6.Text;
            aUser.HomePhone = TextBox7.Text;
            aUser.StreetAddress = TextBox2.Text;
            aUser.ZipCode = TextBox3.Text;
            aUser.SecurityQuestion = DropDownList2.SelectedValue;
            aUser.SecurityQuestionAnswer = TextBox13.Text;
            aUser.StateOrProvince = DropDownList1.SelectedValue;

            ((List<UserInfo>)Application["AllUsersList"]).Add(aUser);
            string msgTo = TextBox8.Text;
            string msgSubject = "New Signing Up Notification";
            string msgBody = "Dear User " + msgTo + ",<br /><br />" +
                      "Thank you for signing up with us. <br/> <br />" +
                      "You can now access your Rapid Bill Pay account at <a href='http://dcm.uhcl.edu/c432017fa02paruchurul/index.aspx'>Rapid Bill Pay </a> " +
                       "<br /><br />" +
                       "Thank you again for your Signing Up. If you have any questions, please contact us at" +
                       "<a href='http://dcm.uhcl.edu/c432017fa02paruchurul/ContactUs.aspx'>Contact Us </a> " +
                       "<br /><br />" +
                       "With Best Wishes, <br />" +
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
                smtpClient.Send(mailObj);
            }

            catch (Exception ex)
            {

            }

            


            MySql.Data.MySqlClient.MySqlConnection co;
            string connection = System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnectionString"].ToString();
            co = new MySql.Data.MySqlClient.MySqlConnection(connection);
            co.Open();

            string query = "INSERT INTO `c432017fa02paruchurul`.`paruchurul_WADfl17_UserInfo`(`EmailAddress`,`Password`,`FirstName`,`LastName`,`HomePhone`,`CellPhone`,`SecurityQuestion`,`SecurityQuestionAns`,`StreetAddress`,`ZipCode`) VALUES ('" + aUser.EmailAddress + "','" + aUser.Password + "','" + aUser.FirstName + "','" + aUser.LastName + "','" + aUser.HomePhone + "','" + aUser.CellPhone + "','" + aUser.SecurityQuestion + "','" + aUser.SecurityQuestionAnswer + "','" + aUser.StreetAddress + "','" + aUser.ZipCode + "') ";


            MySql.Data.MySqlClient.MySqlCommand command = new MySql.Data.MySqlClient.MySqlCommand(query, co);

            command.ExecuteNonQuery();
            co.Close();




            string strconfirm = "<script>if(window.confirm('Thanks your for signing up. You can now login using the Log in option. An email has also been sent to email address you provided during sign up')){window.location.href='index.aspx'}</script>";
            ClientScript.RegisterStartupScript(this.GetType(), "Confirm", strconfirm, false);

        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Accept Terms And Conditions')", true);
        }

    }
    protected void sendMail(object sender, EventArgs e)
    {
        string msgTo = TextBox8.Text;
        string msgSubject = "New Signing Up Notification ";
        string msgBody = "Dear user " + msgTo + ",<br /> " +
            "Thank you for signing up with us. <br></br><br></br>" +
            " You can now access Rapid Bill Pay account at " + "<a href=\"http://dcm.uhcl.edu/c432017fa02paruchurul/index.aspx \">Rapid Bill Pay</a>" + "<br /><br />" +
            "" +
            " Thank you again for your singning up. If you have any questions, please contact us at <a href=\"http://dcm.uhcl.edu/c432017fa02paruchurul/ContactUs.aspx \" >Contact Us</a> .<br />" +
            "With Best wishes.<br />" +
            "Lakshmikanth Paruchuru.";


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
            
            smtpClient.Send(mailObj);
        }

        catch (Exception ex)
        {
            label1.Text = ex.ToString();
        }
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Thank you for your comments. An email has been send to the address you entered. Please feel free to contact us anytime in the future, so we will address your concerns');", true);




    }
    protected void emailAddressCheck2(object sender, EventArgs e)
    {
        foreach (UserInfo ui in ((List<UserInfo>)Application["AllUsersList"]))
        {
            countofuser++;
            aUser.EmailAddress = TextBox8.Text;
            if (aUser.EmailAddress == ui.EmailAddress)
            {
                flag = false;
                break;
            }
            else
            {
                flag = true;
            }
        }
        if (!flag)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('User " + aUser.EmailAddress + " already exists. Please Login');", true);
            // Response.Redirect("default.aspx");
        }
    }
}
