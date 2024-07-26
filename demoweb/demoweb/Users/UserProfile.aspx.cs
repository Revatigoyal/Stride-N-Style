using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Users_UserProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {

            string strcmd = "select UserID from RegistrationT where FullName='" + txtFname.Text + "'";
            DataTable dt = new DataTable();
            dt = SqlHelper.FillData(strcmd);
            if (dt.Rows.Count > 0)
            {
                Label1.Text = "User is already exist";
            }
            else
            {
                strcmd = "insert into RegistrationT(FullName, ContactNo, EmailID,City,Landmark,Pincode,FullAddress) values('" + txtFname.Text + "', '" + txtConNo.Text + "', '" + txtEId.Text + "','" + txtCity.Text + "','" + txtLandmark.Text + "','" + txtPincode.Text + "','" + txtAddress.Text + "')";
                SqlHelper.ExecuteNonQuery(strcmd);
                Label1.Text = "Registered Succesfully";
                txtFname.Text = "";

                txtConNo.Text = "";
                txtEId.Text = "";
                txtCity.Text = "";
                txtLandmark.Text = "";
                txtPincode.Text = "";
                txtAddress.Text = "";
            }

        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session["UserID"] = "";
        Session["RoleID"] = "";
        Session["FullName"] = "";
        Response.Redirect("~/Login.aspx");
    }
}