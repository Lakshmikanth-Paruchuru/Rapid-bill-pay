using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Signup : System.Web.UI.Page
{
    int countofuser = 0;
    bool flag = true;
    UserInfo aUser = new UserInfo();
    protected void Page_Load(object sender, EventArgs e)
    {

      
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx", true);
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx", true);
    }
    protected void Button3_Click(object sender, EventArgs e)
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
                aUser.EmailAddress = TextBox1.Text;
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
            else
            {
                Response.Redirect("Signupwindow.aspx", true);
            }
        }

    }  
}
