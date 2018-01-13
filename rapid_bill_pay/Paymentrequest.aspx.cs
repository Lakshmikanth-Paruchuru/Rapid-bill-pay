using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class Paymentrequest : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            List<BillPayEntry> MyBillpayEntry = new List<BillPayEntry>();
            Session["billPayList"] = MyBillpayEntry;
            List<UserInfo> allUsersList = Application["AllUserList"] as List<UserInfo>;

        }

        if (Session["currentuser"] == null)
        {
            Response.Redirect("index.aspx");
        }

        else
        {
            UserInfo populate = (UserInfo)Session["currentuser"];
            string emailid = populate.EmailAddress;
            MySql.Data.MySqlClient.MySqlConnection co;
            string connection = System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnectionString"].ToString();
            try
            {
                using (co = new MySql.Data.MySqlClient.MySqlConnection(connection))
                {
                    co.Open();
                    MySql.Data.MySqlClient.MySqlCommand command = new MySql.Data.MySqlClient.MySqlCommand
                        ("select * from paruchurul_wadfl17_billpayentry where EmailAddress='" + emailid + "'", co);


                    MySql.Data.MySqlClient.MySqlDataReader sqlReader = command.ExecuteReader();

                    if (sqlReader.HasRows == true)
                    {
                        while (sqlReader.Read())
                        {
                            
                            BillPayEntry bill = new BillPayEntry();
                            bill.EmailAddress = ((string)sqlReader["emailAddress"]);
                            bill.PaymentTransactionDate = ((string)sqlReader["paymentTransactionDate"]);
                            bill.RecipientBusinessName = ((string)sqlReader["recipientBusinessName"]);
                            bill.RecipientBusinessAddress = ((string)sqlReader["recipientBusinessAddress"]);
                            bill.AmountPaid = ((string)sqlReader["amountPaid"]);
                            bill.PaymentDetails = ((string)sqlReader["paymentDetails"]);
                            bill.Status = ((int)sqlReader["status"]);


                            string stat = "In Progress";
                            if (bill.Status == 1)
                            { stat = "Completed"; }

                            TableRow row = new TableRow
                            {
                                Cells =
                                          {
                                             new TableCell { Text = bill.PaymentTransactionDate },
                                             new TableCell { Text = bill.RecipientBusinessName },
                                             new TableCell { Text = bill.RecipientBusinessAddress  },
                                             new TableCell { Text = bill.AmountPaid },
                                             new TableCell { Text = stat },
                                          }
                            };
                            
                            paymentTable.Rows.AddAt(1, row);
                        }       
                    } 

                    else
                    {
                        TableRow tRow = new TableRow();
                        TableCell tCell = new TableCell();
                        tCell.Text = "No records found";
                        tRow.Cells.Add(tCell);
                        paymentTable.Rows.AddAt(1, tRow);

                    }


                } 
            } 
            catch { }
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        DateTime dob = DateTime.Parse(Request.Form[TextBox1.UniqueID]);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        BillPayEntry si = new BillPayEntry();

        si.PaymentTransactionDate = TextBox1.Text;
        si.RecipientBusinessName = TextBox2.Text;
        si.RecipientBusinessAddress = TextBox3.Text;
        si.AmountPaid = TextBox5.Text;
        si.PaymentDetails = TextBox4.Text;
        si.Status = 0; 

        UserInfo temp = (UserInfo)Session["currentuser"];
        si.EmailAddress = temp.EmailAddress; 

        if (temp.MyBillPayments == null)
        {
            List<BillPayEntry> newBill = new List<BillPayEntry>();
            newBill.Add(si);
            temp.MyBillPayments = newBill;
            sendMail(sender, e);
            

        }

        else
        {
            temp.MyBillPayments.Add(si);
            sendMail(sender, e);
           
        }
        string stat = "null";
        if (si.Status == 0)
        { stat = "In Progress"; }
        TableRow row = new TableRow
        {
            Cells =
                  {
                       new TableCell { Text = si.PaymentTransactionDate },
                       new TableCell { Text = si.RecipientBusinessName },
                       new TableCell { Text = si.RecipientBusinessAddress },
                       new TableCell { Text = si.AmountPaid },
                       new TableCell {Text =stat }
                  }
        };
        MySql.Data.MySqlClient.MySqlConnection co;
        string connection = System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnectionString"].ToString();
        co = new MySql.Data.MySqlClient.MySqlConnection(connection);
        co.Open();

        string query = "INSERT INTO `c432017fa02paruchurul`.`paruchurul_wadfl17_billpayentry`(`emailAddress`, `paymentTransactionDate`, `recipientBusinessName`, `recipientBusinessAddress`, `amountPaid`, `paymentDetails`, `status`) VALUES ('" + si.EmailAddress + "','" + si.PaymentTransactionDate + "','" + si.RecipientBusinessName + "','" + si.RecipientBusinessAddress + "','" + si.AmountPaid + "','" + si.PaymentDetails + "'," + si.Status + ") ";


        MySql.Data.MySqlClient.MySqlCommand command = new MySql.Data.MySqlClient.MySqlCommand(query, co);

        command.ExecuteNonQuery();
        co.Close();

        paymentTable.Rows.AddAt(1, row);
        Response.Redirect("~/Paymentrequest.aspx");
        

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        ClientScriptManager CSM = Page.ClientScript;
        if (!ReturnValue())
        {
            string strconfirm = "<script>if(window.confirm('Are you sure you want to cancel the transaction?')){window.location.href='Paymentrequest.aspx'}</script>";
            CSM.RegisterClientScriptBlock(this.GetType(), "Confirm", strconfirm, false);
        }
        bool ReturnValue()
        {
            return false;
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        UserInfo temp = (UserInfo)Session["currentUser"];
        BillPayEntry bpstatus = new BillPayEntry();
        if (temp.MyBillPayments == null)
        {

        }
        else
        {
           
            MySql.Data.MySqlClient.MySqlConnection co;
            string connection = System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnectionString"].ToString();
            co = new MySql.Data.MySqlClient.MySqlConnection(connection);
            co.Open();
            try
            {

                string query = $"UPDATE `c432017fa02paruchurul`.`paruchurul_WADfl17_billpayentry` SET `status` = 1 WHERE `emailAddress` = '{temp.EmailAddress}'; ";
                MySql.Data.MySqlClient.MySqlCommand command = new MySql.Data.MySqlClient.MySqlCommand(query, co);

                int rows = command.ExecuteNonQuery();
                co.Close();
            }
            catch (Exception ex)
            {

                Console.WriteLine("session abandon: " + ex.Message);
            }
        }
        Session.Abandon();
        Response.Redirect("~/index.aspx");
        

    }
    protected void sendMail(object sender, EventArgs e)
    {
        BillPayEntry si = new BillPayEntry();
        UserInfo temp = (UserInfo)Session["currentuser"];
        si.EmailAddress = temp.EmailAddress;
        string msgTo = temp.EmailAddress;
        string date = TextBox1.Text;
        string msgSubject = "New Transaction Scheduling Notification ";
        string msgBody = "Dear user " + msgTo + ",<br /> " +
            "You have scheduled a transaction in Rapid Bill Pay on "+ date+ "<br></br><br></br>" +
            " You can now check the status of the transaction by visiting " + "<a href=\"http://dcm.uhcl.edu/c432017fa02paruchurul/Paymentrequest.aspx \">Your Payments</a>" + "<br /><br />" +
            "" +
            " Thank you for using Rapid Bill Pay.<a href=\"http://dcm.uhcl.edu/c432017fa02paruchurul/index.aspx \" > Rapid Bill Pay</a> .<br />" +
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
            //smtpClient.Send("motelgroup3@gmail.com",msgTo,"thanks subject",msgBody);
            smtpClient.Send(mailObj);
        }

        catch (Exception ex)
        {
            label1.Text = ex.ToString();
        }
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Thank you for your comments. An email has been send to the address you entered. Please feel free to contact us anytime in the future, so we will address your concerns');", true);




    }
}


