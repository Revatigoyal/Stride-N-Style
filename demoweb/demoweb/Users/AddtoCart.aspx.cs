using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Users_AddtoCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            LoadCart();
        }
    }

    private void LoadCart()
    {
        try
        {
            string strcmd = "select CartT.ProductID,ProductT.ProductName,SizeT.SizeName,ProductT.ProductPrice,sum(CartT.Quantity) as Quantity," +
                           "ProductT.ProductImg,(ProductT.ProductPrice * sum(CartT.Quantity)) as Amount from CartT inner join ProductT on CartT.ProductID = ProductT.ProductID inner join SizeT on CartT.SizeID = SizeT.SizeID " +
                             " where UserID=" + Session["UserID"].ToString() +
                            " group by CartT.ProductID,ProductT.ProductName,SizeT.SizeName,ProductT.ProductPrice,CartT.Quantity,(ProductT.ProductPrice*CartT.Quantity),ProductT.ProductImg";
            DataTable dt = new DataTable();
            dt = SqlHelper.FillData(strcmd);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            float Total = 0.0F;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                Total += Convert.ToSingle(dt.Rows[i]["Amount"].ToString());

            }
            lblTotalAmount.Text = Total.ToString("#,###.00");


        }
        catch (Exception ex)
        {

            throw ex;
        }
    }
    protected void btnComplete_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Users/CompleteOrder.aspx");
    }


    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        int index = 0;
        if (e.CommandName == "del")
        {
            index = Convert.ToInt32(e.CommandArgument);
            string strID = GridView1.Rows[index].Cells[0].Text; ;
            try
            {
                string strcmd = "delete from CartT where CartT.ProductID=" + strID;
                SqlHelper.ExecuteNonQuery(strcmd);
                lblmsg.Text = "Item Deleted";
                LoadCart();
            }
            catch (Exception ex)
            {
                lblmsg.Text = ex.Message;

            }
        }
    }

}