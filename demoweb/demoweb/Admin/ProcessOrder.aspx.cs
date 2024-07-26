using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ProcessOrderaspx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnFinish_Click(object sender, EventArgs e)
    {
        try
        {
            string strcmd = "update OrderParent set Status = 'Completed' where id='" + DropDownList1.SelectedValue + "'";
            SqlHelper.ExecuteNonQuery(strcmd);
            Response.Redirect("~/Admin/ProcessOrder.aspx");
            lblMsg.Text = "Order Dispatched";
            
        }
        catch (Exception ex)
        {

            throw ex;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string strcmd = "update OrderParent set Status = 'Rejected' where id='" + DropDownList1.SelectedValue + "'";
        SqlHelper.ExecuteNonQuery(strcmd);
        Response.Redirect("~/Admin/ProcessOrder.aspx");
        lblMsg.Text = "Order Rejected";

    }
}