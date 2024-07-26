using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_ProcessLogout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["UserID"] = "";
        Session["RoleID"] = "";
        Session["FullName"] = "";
        Response.Redirect("~/Login.aspx");
    }
}