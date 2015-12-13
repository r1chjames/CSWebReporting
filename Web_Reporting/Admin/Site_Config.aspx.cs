using System;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Site_Config : System.Web.UI.Page
    {
    protected void Page_Load(object sender, EventArgs e)
    {
        Load_Anncmnt(null, null);
    }

    protected void Load_Anncmnt(object sender, EventArgs e)
    {
        string connectionString = null;
        SqlConnection connection;
        SqlCommand command = new SqlCommand();
        DataSet ds = new DataSet();
        connectionString = "Data Source=WS-ES12R2;Initial Catalog=Web_Reporting;Integrated Security=True";
        connection = new SqlConnection(connectionString);
        command.CommandText = "SELECT data FROM site_config WHERE application = 'Web_Reporting' AND area = 'general' AND item = 'announcement_banner'";
        command.CommandType = CommandType.Text;
        command.Connection = connection;
        SqlDataAdapter adapter1 = new SqlDataAdapter();
        adapter1.SelectCommand = command;
        adapter1.Fill(ds);
        command.Connection.Open();

        Label mpLabel = lblAnncmnt;
        mpLabel.Text = command.ExecuteScalar().ToString();
        command.Connection.Close();
    }
    
    protected void UpdateAnnouncement(object sender, EventArgs e)
        {
            string connectionString = null;
            string newAnncmnt = txtAnncmnt.Text;
            SqlConnection connection;
            SqlCommand command = new SqlCommand();
            connectionString = "Data Source=WS-ES12R2;Initial Catalog=Web_Reporting;Integrated Security=True";
            connection = new SqlConnection(connectionString);
            command.CommandText = "UPDATE site_config SET data = '" + newAnncmnt + "' WHERE application = 'Web_Reporting' AND area = 'general' AND item = 'announcement_banner'";
            command.CommandType = CommandType.Text;
            command.Connection = connection;
            SqlDataAdapter adapter1 = new SqlDataAdapter();
            adapter1.SelectCommand = command;
            command.Connection.Open();
            command.ExecuteNonQuery();
            command.Connection.Close();

            Page_Load(null,null);

        }
    }


