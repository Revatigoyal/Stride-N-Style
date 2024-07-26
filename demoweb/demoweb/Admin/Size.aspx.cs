using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Size : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadSize();
        if (Page.IsPostBack)
        {
            LoadSize();
        }
    }
    private void LoadSize()
    {
        try
        {
            string strcmd = "Select SizeID,SizeName from SizeT order by SizeID";
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
        txtSizeName.Text = "";
        btnSave.Enabled = true;
        btnUpdate.Enabled = false;
        txtSizeName.Focus();
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            string strcmd = "Select SizeID from SizeT where SizeName='" + SqlHelper.sf(txtSizeName.Text) + "'";
            DataTable dt = new DataTable();
            dt = SqlHelper.FillData(strcmd);
            if (dt.Rows.Count > 0)
            {
                lblmsg.Text = "Size name already exist !!!";
                txtSizeName.Focus();
            }
            else
            {
                strcmd = "insert into SizeT(SizeName) values('" + SqlHelper.sf(txtSizeName.Text) + "')";
                SqlHelper.ExecuteNonQuery(strcmd);
                lblmsg.Text = "Size saved successfully";
                LoadSize();
                Clears();
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = 0;
        if (e.CommandName == "Ed")
        {
            index = Convert.ToInt32(e.CommandArgument);
            hdfID.Value = GridView1.Rows[index].Cells[0].Text;
            txtSizeName.Text = GridView1.Rows[index].Cells[1].Text;
            btnSave.Enabled = false;
            btnUpdate.Enabled = true;
        }
        if (e.CommandName == "Del")
        {
            index = Convert.ToInt32(e.CommandArgument);
            string strID = GridView1.Rows[index].Cells[0].Text; ;
            try
            {
                string strcmd = "delete from SizeT where SizeID=" + strID;
                SqlHelper.ExecuteNonQuery(strcmd);
                lblmsg.Text = "Size deleted successfully";
                LoadSize();
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
            string strcmd = "Select SizeID from SizeT where SizeName='" + SqlHelper.sf(txtSizeName.Text) +
                "' and SizeID<>" + hdfID.Value;
            DataTable dt = new DataTable();
            dt = SqlHelper.FillData(strcmd);
            if (dt.Rows.Count > 0)
            {
                lblmsg.Text = "Size already exist !!!";
                txtSizeName.Focus();
            }
            else
            {
                strcmd = "update SizeT set SizeName='" + SqlHelper.sf(txtSizeName.Text) + "' where SizeID=" +
                    hdfID.Value;
                SqlHelper.ExecuteNonQuery(strcmd);
                lblmsg.Text = "Size Updated successfully";
                LoadSize();
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
}