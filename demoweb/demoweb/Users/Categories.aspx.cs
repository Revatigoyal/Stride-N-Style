using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Users_Categories : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            LoadCategory();
            if(Request.QueryString["id"]!=null)
            {
                hdfCatID.Value = Request.QueryString["id"].ToString();
                LoadProducts();
            }
            
        }

    }
    private void LoadCategory()
    {
        try
        {
            string strcmd ="select CategoryID ,CategoryName from Categories order by CategoryName";
            DataTable dt = new DataTable();
            dt = SqlHelper.FillData(strcmd);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
        catch (Exception)
        {

            throw;
        }
    }

    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        
        if(e.CommandName=="Cart")
        {
            Label lbl = (Label)e.Item.FindControl("Label4");
            Label lbl1 = (Label)e.Item.FindControl("Label5");
            Label lbl2= (Label)e.Item.FindControl("Label6");
            string strcmd = "insert into CartT(ProductID,SizeID,Dated,ProductPrice,Quantity,UserID) values(" + lbl.Text + "," + lbl2.Text + ",'" + DateTime.Now.ToString("yyyy-MM-dd") + "'," + lbl1.Text + ",1," + Session["UserID"].ToString() + ")";
                             
            SqlHelper.ExecuteNonQuery(strcmd);
            Response.Redirect("~/Users/Categories.aspx");

        }
    }
    private void LoadProducts()
    {
        try
        {
            string strcmd = "select ProductT.ProductID,ProductT.ProductName,ProductT.SizeID,.SizeT.SizeName," +
                              " ProductT.ProductPrice,ProductT.ProductImg"+
                              " from ProductT inner join SizeT on SizeT.SizeID = ProductT.SizeID"+
                              " where ProductT.CategoryID= " + hdfCatID.Value;
            DataTable dt = new DataTable();
            dt = SqlHelper.FillData(strcmd);
            DataList2.DataSource = dt;
            DataList2.DataBind();

        }
        catch (Exception ex)
        {

            throw ex;
        }
    }
    

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "CategoryName")
        {
            Label lbl = (Label)e.Item.FindControl("Label3");
            //bind product
            Response.Redirect("~/Users/Categories.aspx?id="+ lbl.Text);
        }
    }


    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}