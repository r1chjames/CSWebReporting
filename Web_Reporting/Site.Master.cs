using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Web_Reporting
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page_Audit(null, null);
            Anncmnt_Load(null, null);
        }

        private void Page_Audit(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();

            string connectionString = null;
            SqlConnection connection;
            SqlCommand command = new SqlCommand();
            connectionString = "Data Source=WMM0772MANUAP01;Initial Catalog=Web_Reporting;Integrated Security=True";
            connection = new SqlConnection(connectionString);
            command.Connection = connection;
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "Page_Audit";

            SqlParameter param1 = new SqlParameter();
            param1.ParameterName = "@PageName";
            param1.SqlDbType = SqlDbType.NVarChar;
            param1.Direction = ParameterDirection.Input;
            param1.Value = Request.Url.AbsolutePath;
            command.Parameters.Add(param1);

            SqlParameter param2 = new SqlParameter();
            param2.ParameterName = "@User";
            param2.SqlDbType = SqlDbType.NVarChar;
            param2.Direction = ParameterDirection.Input;
            param2.Value = HttpContext.Current.User.Identity.Name;
            command.Parameters.Add(param2);

            SqlParameter param3 = new SqlParameter();
            param3.ParameterName = "@client";
            param3.SqlDbType = SqlDbType.NVarChar;
            param3.Direction = ParameterDirection.Input;
            param3.Value = Dns.GetHostEntry(Request.ServerVariables["remote_addr"]).HostName;
            command.Parameters.Add(param3);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    Console.WriteLine("{0}: {1:C}", reader[0], reader[1]);
                }
            }
            else
            {
                Console.WriteLine("No rows found.");
            }
            reader.Close();
            connection.Close();
        }

        public void Anncmnt_Load(object sender, EventArgs e)
        {
            string connectionString = null;
            SqlConnection connection;
            SqlCommand command = new SqlCommand();
            DataSet ds = new DataSet();
            connectionString = "Data Source=WMM0772MANUAP01;Initial Catalog=Web_Reporting;Integrated Security=True";
            connection = new SqlConnection(connectionString);
            command.CommandText = "select data from site_config where application = 'Web_Reporting' and area = 'general' and item = 'announcement_banner'";
            command.CommandType = CommandType.Text;
            command.Connection = connection;
            SqlDataAdapter adapter1 = new SqlDataAdapter();
            adapter1.SelectCommand = command;
            adapter1.Fill(ds);
            command.Connection.Open();

            Label mpLabel = (Label)FindControl("LblAnn");
            mpLabel.Text = command.ExecuteScalar().ToString();

            command.Connection.Close();
        }
            
    }
}