using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_6
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                money.Visible=false;
                clothes.Visible=false;

                DropDownCity.DataSource = SqlDataSource2;

                DropDownCity.DataTextField = "City_name";
                DropDownCity.DataValueField = "Id_city";

                DropDownCity.DataBind();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextName.Text == "" || TextPhone.Text == "" || DropDownCity.Text == "" || TextStreet.Text == "" || TextDate.Text == "" || TextQuant.Text == "" || TextArea.Text == "")
            {
                Label1.Visible = true;
            }

            else
            {


                SqlDataSource1.InsertParameters["Full_name"].DefaultValue = TextName.Text;
                SqlDataSource1.InsertParameters["Phone"].DefaultValue = TextPhone.Text;
                SqlDataSource1.InsertParameters["City"].DefaultValue = DropDownCity.Text;
                SqlDataSource1.InsertParameters["Street"].DefaultValue = TextStreet.Text;
                SqlDataSource1.InsertParameters["Donation_date"].DefaultValue = TextDate.Text;
                SqlDataSource1.InsertParameters["Quantity"].DefaultValue = TextQuant.Text;

                SqlDataSource1.InsertParameters["Details"].DefaultValue = TextArea.Text;

                SqlDataSource1.Insert();
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert",
                  "swal('Good job!', 'The Request Was Sent Successfully, Thank You')", true);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            clothes.Visible = true;
            money.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            money.Visible = true;
            clothes.Visible = false;
        }
    }
}