using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void txtsignup_Click1(object sender, EventArgs e)
    {
        try
        {

            string strcmd = "select UserId from UsersT where Username='" + TxtUname.Text + "'";
            DataTable dt = new DataTable();
            dt = SqlHelper.FillData(strcmd);
            if (dt.Rows.Count > 0)
            {
                Label1.Text = "Username already taken";
            }
            else
            {
                strcmd = "insert into UsersT(Username,RoleID, UPassword, Fullname,SecQue,SecAns,Dated,Active) values('" + TxtUname.Text + "',2, '" + TxtPass.Text + "',  '" + (TxtFname.Text) + "','" + (txtSecQue.Text) + "','" + (txtSecAns.Text) + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "',1)";
                SqlHelper.ExecuteNonQuery(strcmd);

                Label1.Text = "Registered Succesfully";
                TxtUname.Text = "";
                TxtPass.Text = "";

                TxtFname.Text = "";
                txtSecQue.Text = "";
                txtSecAns.Text = "";
            }

        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }

    }
}


     

  