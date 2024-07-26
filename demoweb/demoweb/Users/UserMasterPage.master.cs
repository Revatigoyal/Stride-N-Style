using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Users_UserMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["RoleID"].ToString() != "2")
        {
            Response.Redirect("~/Login.aspx");//
        }
        if(!Page.IsPostBack)
        {
            LoadCart();
        }
        if (!Page.IsPostBack)
        {
            lblUserName.Text = Session["FullName"].ToString();
        }
    }
    private void  LoadCart()
    {
        try
        {
            string strcmd = "select count(cartID) from CartT where UserID=" + Session["UserID"].ToString();
            DataTable dt = new DataTable();
            dt = SqlHelper.FillData(strcmd);
            if(dt.Rows.Count>0)
            {
                hlkCart.Text = "(" + dt.Rows[0][0].ToString() + ")";
            }
            else
            {
                hlkCart.Text = "(0)";
            }
                
        }
        catch (Exception)
        {

            throw;
        }
    }
}
