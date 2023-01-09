using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_6
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

          
        }
        protected void Button1_onclick(object sender, EventArgs e)
        {
            //string path = Server.MapPath("/img/");
            //string image1 = Path.GetFileName(FileUpload1.FileName);

            string con = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(con);
            SqlCommand com = new SqlCommand($"insert into Campaigns values('{TextBox1.Text}' ,'{TextArea1.Value}', 'Img/{Path.GetFileName(FileUpload1.FileName)}', '{TextBox2.Text}')", conn);
            conn.Open();
            com.ExecuteNonQuery();
            conn.Close();

        }

       
    }
}