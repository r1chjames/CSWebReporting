using System;
using System.Data;
using System.Data.SqlClient;

public partial class Unsent_Transaction_History : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection("SERVER=WS-ES12R2;Trusted_Connection=Yes;DATABASE=Web_Reporting"))
        {
            //Code to load data for Chart1
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "MTL_Send_Rate";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = con;
                con.Open();
                con.Close();
            }
            }
        }

    protected void Chart1_Load(object sender, EventArgs e)
    {

    }
    }
