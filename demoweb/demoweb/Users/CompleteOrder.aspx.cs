using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Users_CompleteOrder : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    public void BindPriceData()
    {
        
    }

    private void BindPriceData2()
    {
        
    }

    protected void btnPaytm_Click(object sender, EventArgs e)
    {
        
    }


    public void BindCartNumber()
    {
       
    }

    private void genAutoNum()
    {
        
    }

    private void BindOrderProducts()
    {
        
    }

    protected void btnCart2_ServerClick(object sender, EventArgs e)
    {
        Response.Redirect("Cart.aspx");
    }

    protected void BtnPlaceNPay_Click(object sender, EventArgs e)
    {
        
       
    }

    private void InsertOrderProducts()
    {
        
    }

    private void EmptyCart()
    {
        
    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            string id = Guid.NewGuid().ToString();
            string strcmd = "insert into OrderParent(CustName,CustAddress,PinCode,UserID,Dated,Id,Status) values('" + txtCustName.Text + "','" +
                txtDelAdd.Text+ "','" + txtPinCode.Text + "','" + Session["UserID"].ToString() + "','" +
                DateTime.Now.ToString("yyyy-MM-dd") + "','" + id + "','Pending')";
            SqlHelper.ExecuteNonQuery(strcmd);

            //move cart data to order child
            strcmd = "select ProductID,ProductPrice,SizeID,Quantity from CartT where UserID=" + Session["UserID"].ToString();
            DataTable dt = new DataTable();
            dt = SqlHelper.FillData(strcmd);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                strcmd = "insert into OrderChild(Id,ProductID,SizeID,Price,Qty) values('" + id + "'," +
                    dt.Rows[i]["ProductID"].ToString() + "," +
                    dt.Rows[i]["SizeID"].ToString() + "," +
                    dt.Rows[i]["ProductPrice"].ToString() + "," +
                    dt.Rows[i]["Quantity"].ToString() + ")";
                SqlHelper.ExecuteNonQuery(strcmd);
            }
            //remove data from cart
            strcmd = "delete from CartT where UserID=" + Session["UserID"].ToString();
            SqlHelper.ExecuteNonQuery(strcmd);
            lblMsg.Text = "Order Placed Successfully";
        }
        catch (Exception ex)
        {

            throw ex;
        }
    }
}