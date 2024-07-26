using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_ProductDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        LoadProduct();

        if (Page.IsPostBack)
        {
            LoadProduct();
        }
    }
    private void LoadProduct() {
        try
        {
            string strcmd = "SELECT ProductT.ProductID, Categories.CategoryName, ProductT.ProductName, ProductT.ProductImg, SizeT.SizeName, ProductT.ProductPrice FROM Categories INNER JOIN ProductT ON Categories.CategoryID = ProductT.CategoryID INNER JOIN SizeT ON ProductT.SizeID = SizeT.SizeID";
            DataTable dt = new DataTable();
            dt = SqlHelper.FillData(strcmd);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
        catch (Exception ex)
        {
            
        }

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
                string strcmd = "delete from ProductT where ProductT.ProductID=" + strID;
                SqlHelper.ExecuteNonQuery(strcmd);
                LoadProduct();
            }
            catch (Exception ex)
            {
              

            }
        }
    }

    
}