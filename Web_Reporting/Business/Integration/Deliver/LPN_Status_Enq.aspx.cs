using System;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

    public partial class LPN_Status_Enq : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
        DataSet ds = new DataSet();

        using (SqlConnection con = new SqlConnection("SERVER=WMM0772MANUAP01;Trusted_Connection=Yes;DATABASE=Web_Reporting"))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "Bus_Rep_LPN_Trace_Enq";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@var_LPN", txtLPN.Text);
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


