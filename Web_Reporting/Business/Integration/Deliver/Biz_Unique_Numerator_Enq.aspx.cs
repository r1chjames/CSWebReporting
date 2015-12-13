using System;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

    public partial class Biz_Unique_Numerator_Enq : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
        DataSet ds = new DataSet();

        using (SqlConnection con = new SqlConnection("SERVER=WS-ES12R2;Trusted_Connection=Yes;Connection Timeout=300;DATABASE=Web_Reporting"))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandTimeout = 300;
                cmd.CommandText = "*DEV_OCM";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@var_site", RadioButtonListSite.SelectedValue);
                cmd.Parameters.AddWithValue("@var_devid", txtDevID.Text);
                cmd.Connection = con;

                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmd;
                adapter.Fill(ds);

            }
            con.Close();
        }
        GridView.DataBind();

    }

        }


