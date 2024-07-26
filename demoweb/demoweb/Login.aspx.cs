using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

    protected void btnLogin_Click1(object sender, EventArgs e)
    {
        try
        {

            string strcmd = "select UserID, RoleID,UPassword,FullName,Active from UsersT where Username = '"+TxtUname.Text+"'";
            DataTable dt = new DataTable();     
            dt = SqlHelper.FillData(strcmd);
            if (dt.Rows.Count > 0)
            {
                bool Active = Convert.ToBoolean(dt.Rows[0]["Active"]);
                if(Active==true)
                {
                    string strPassword = dt.Rows[0]["UPassword"].ToString();
                    if(txtPass.Text==strPassword)
                    {
                        Session["UserID"] = dt.Rows[0]["UserID"].ToString();
                        Session["RoleID"] = dt.Rows[0]["RoleID"].ToString();
                        Session["FullName"] = dt.Rows[0]["FullName"].ToString();
                        if(Session["RoleID"].ToString()=="1")
                        {
                            Response.Redirect("~/Admin/Default.aspx");
                        }
                        if (Session["RoleID"].ToString() == "2")
                        {
                            Response.Redirect("~/Users/Home.aspx");
                        }
                    }
                    else
                    {
                        Label1.Text = "Invalid Password";
                    }
                }
                else
                {
                    Label1.Text = "Account is suspended";
                }
               
            }
            else
            {
                Label1.Text = " Invalid Username";
            }

        }


        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }
}