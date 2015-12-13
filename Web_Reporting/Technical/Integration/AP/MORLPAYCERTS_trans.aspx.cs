using System;
using System.Web;
using System.Data;
using System.Data.SqlClient;



public partial class MORLPAYCERTS_trans : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }
        protected void LinkButtonDown_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }
        protected void LinkButtonUp_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();

            using (SqlConnection con = new SqlConnection("SERVER=WS-ES12R2;Trusted_Connection=Yes;DATABASE=Web_Reporting"))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "MORLPAYCERTS_trans";
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@var_site", RadioButtonListSite.SelectedValue);
                    cmd.Connection = con;

                    SqlDataAdapter adapter = new SqlDataAdapter();
                    adapter.SelectCommand = cmd;
                    adapter.Fill(ds);

                }
                con.Close();
            }
            GridView1.DataBind();

        }

        protected void btnDownload_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection("Data Source=WS-ES12R2;Initial Catalog=Web_Reporting;Integrated Security=True; max pool size=3");

            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter ad;
            DataTable tempData;

            cmd.Connection = conn;
            cmd.CommandText = "MORLPAYCERTS_trans";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@var_site", RadioButtonListSite.SelectedValue);
            ad = new SqlDataAdapter(cmd);
            ad.Fill(tempData = new DataTable());
            cmd.Dispose();
            ad.Dispose();

            HttpContext context = HttpContext.Current;
            context.Response.Clear();
            context.Response.ContentType = "text/csv";
            context.Response.AddHeader("Content-Disposition", "attachment; filename=MORLPAYCERTS_" + DateTime.Now.ToShortDateString() + ".csv");

            //now we want to write the columns headers of the table
            for (int i = 0; i <= tempData.Columns.Count - 1; i++)
            {
                if (i < 0)
                {
                    //adding comma in between columns...
                    context.Response.Write(",");
                }
                context.Response.Write('"' + tempData.Columns[i].ColumnName + '"' + ",");
            }
            context.Response.Write(Environment.NewLine);

            //Write data into context 
            foreach (DataRow row in tempData.Rows)
            {
                //  here we are again going into loop because we want "comma" in between columns 
                for (int i = 0; i <= tempData.Columns.Count - 1; i++)
                {
                    if (i < 0)
                    {
                        context.Response.Write(",");
                    }
                    object objcurrentrow = row[i];
                    string strcurrentrow = Convert.ToString(objcurrentrow);

                    context.Response.Write('"' + strcurrentrow + '"' + ",");
                }
                context.Response.Write(Environment.NewLine);
            }
            context.Response.End();
        }
    }

