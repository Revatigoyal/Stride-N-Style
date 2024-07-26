using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Category : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadCategory();
        if (Page.IsPostBack)
        {
            LoadCategory();
        }
    }
    private void LoadCategory()
    {
        try
        {
            string strcmd = "Select CategoryID,CategoryName from Categories order by CategoryID";
            DataTable dt = new DataTable();
            dt = SqlHelper.FillData(strcmd);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }
    private void Clears()
    { 
        hdfID.Value = "";
        txtCategoryName.Text = "";
        btnSave.Enabled = true;
        btnUpdate.Enabled = false;
        txtCategoryName.Focus();
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            string strcmd ="Select CategoryID from Categories where CategoryName='"+ SqlHelper.sf(txtCategoryName.Text) +"'";
            DataTable dt = new DataTable();
            dt = SqlHelper.FillData(strcmd);
            if (dt.Rows.Count > 0)
            {
                lblmsg.Text = "Category name already exist !!!";
                txtCategoryName.Focus();
            }
            else
            {
                strcmd="insert into Categories(CategoryName) values('" + SqlHelper.sf(txtCategoryName.Text) +"')";
                SqlHelper.ExecuteNonQuery(strcmd);
                lblmsg.Text = "Category saved successfully";
                LoadCategory();
                Clears();
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        Clears();
    }



    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = 0;
        if (e.CommandName == "Ed")
        {
            index = Convert.ToInt32(e.CommandArgument);
            hdfID.Value = GridView1.Rows[index].Cells[0].Text;
            txtCategoryName.Text = GridView1.Rows[index].Cells[1].Text;
            btnSave.Enabled = false;
            btnUpdate.Enabled = true;
        }
        if (e.CommandName == "Del")
        {
            index = Convert.ToInt32(e.CommandArgument);
            string strID= GridView1.Rows[index].Cells[0].Text; ;
            try
            {
                string strcmd = "delete from Categories where CategoryID=" + strID;
                SqlHelper.ExecuteNonQuery(strcmd);
                lblmsg.Text = "Category deleted successfully";
                LoadCategory();
            }
            catch (Exception ex)
            {
                lblmsg.Text = ex.Message;

            }
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            string strcmd = "Select CategoryID from Categories where CategoryName='" + SqlHelper.sf(txtCategoryName.Text) + 
                "' and CategoryID<>"+hdfID.Value;
            DataTable dt = new DataTable();
            dt = SqlHelper.FillData(strcmd);
            if (dt.Rows.Count > 0)
            {
                lblmsg.Text = "Category name already exist !!!";
                txtCategoryName.Focus();
            }
            else
            {
                strcmd = "update Categories set CategoryName='" + SqlHelper.sf(txtCategoryName.Text) +"' where CategoryID="+
                    hdfID.Value;
                SqlHelper.ExecuteNonQuery(strcmd);
                lblmsg.Text = "Category Updated successfully";
                LoadCategory();
                Clears();
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }
}