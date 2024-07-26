using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;


public partial class Admin_AddProducts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            LoadCategory();
            LoadSize();
        }

    }
    private void LoadCategory()
    {
        try
        {
            string strcmd = "Select CategoryId,CategoryName from Categories order by CategoryId";
            DataTable dt = new DataTable();
            dt = SqlHelper.FillData(strcmd);
            DdlCategory.DataSource = dt;
            DdlCategory.DataTextField = "CategoryName";
            DdlCategory.DataValueField = "CategoryId";
            DdlCategory.DataBind();
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }
    private void LoadSize()
    {
        try
        {
            string strcmd = "Select SizeId,SizeName from SizeT order by SizeId";
            DataTable dt = new DataTable();
            dt = SqlHelper.FillData(strcmd);
            DdlSize.DataSource = dt;
            DdlSize.DataTextField = "SizeName";
            DdlSize.DataValueField = "SizeId";
            DdlSize.DataBind();
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {

        try
        {
            if (FileUpload1.HasFile)
            {
                string Ext = Path.GetExtension(FileUpload1.FileName);
                string[] strExt = { ".jpg", ".jpeg", ".png", ".bmp" };
                if (strExt.Contains(Ext.ToLower()))
                {
                    string strPath = Server.MapPath("~//products//");
                    string subDir = Guid.NewGuid().ToString();
                    Directory.CreateDirectory(strPath + subDir);
                    string strFilePath = "~/products/" + subDir + "/" + FileUpload1.FileName;
                    FileUpload1.SaveAs(strPath + "/" + subDir + "/" + FileUpload1.FileName);
                    //save to table
                    string strcmd = "insert into ProductT(CategoryId,SizeID,ProductName,ProductImg,ProductPrice) values(" +
                        DdlCategory.SelectedValue + ","+DdlSize.SelectedValue+",'" + SqlHelper.sf(txtProName.Text) + "','" + strFilePath + "'," + txtProductPrice.Text + ")";
                    SqlHelper.ExecuteNonQuery(strcmd);
                    txtProName.Text = "";
                    txtProductPrice.Text = "";
                    lblMsg.Text = "Product Added Successfully!!";
                }
                else
                {
                    lblMsg.Text = "Upload only Image file";
                }
            }
            else
            {
                lblMsg.Text = "Upload image file";
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }
}
