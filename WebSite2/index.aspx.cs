using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
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
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Forgotpassword.aspx", true); ;
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Signup.aspx", true); ;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string username = TextBox1.Text;
            string pass = TextBox2.Text;
            int countUsers = 0;

            foreach (UserInfo kk in ((List<UserInfo>)Application["AllUsersList"]))
            {
                countUsers++;


                if (kk.EmailAddress == username && kk.Password == pass)
                {
                    int ind = ((List<UserInfo>)Application["AllUsersList"]).IndexOf(kk);
                    Session["currentuser"] = kk;
                    Session["username"] = kk.FirstName + kk.LastName;
                    Response.Redirect("Paymentrequest.aspx?index=" + ind);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('It appears this user is not in our database. Or a wrong password has been given. Please go to the Sign Up page');", true);

                }
            }
            if (countUsers == 0)
            {
                //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('It appears this user is not in our database. Please go to the Sign Up page');window.location.replace('Default.aspx');",true);
                //Response.Redirect("Default.aspx");

                string strconfirm = "<script>if(window.confirm('It appears this user is not in our database. Please go to the Sign Up page. Are you sure?')){window.location.href='Signup.aspx'}</script>";
                ClientScript.RegisterStartupScript(this.GetType(), "Confirm", strconfirm, false);

            }
        }

        
    
        else
        {
            Button3.Text = "validation failed";
            
        } 
       
    }
   
}
