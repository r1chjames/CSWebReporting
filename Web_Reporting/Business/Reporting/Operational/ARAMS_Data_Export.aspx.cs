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

    public partial class ARAMS_Data_Export : System.Web.UI.Page
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
        protected void btnDownload_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection("Data Source=WMM0772MANUAP01;Initial Catalog=Web_Reporting;Integrated Security=True; max pool size=3");

            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter ad;
            DataTable tempData;

            cmd.Connection = conn;
            cmd.CommandText = "Bus_Rep_ARAMS_Batch_Ln";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@var_date", txtDate.Text);
            ad = new SqlDataAdapter(cmd);
            ad.Fill(tempData = new DataTable());
            cmd.Dispose();
            ad.Dispose();

            HttpContext context = HttpContext.Current;
            context.Response.Clear();
            context.Response.ContentType = "text/csv";
            context.Response.AddHeader("Content-Disposition", "attachment; filename=ARAMS_Tag_Data_" + DateTime.Now.ToShortDateString() + ".csv");

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
        protected void btnDownload2_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection("Data Source=WMM0772MANUAP01;Initial Catalog=Web_Reporting;Integrated Security=True; max pool size=3");

            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter ad;
            DataTable tempData;

            cmd.Connection = conn;
            cmd.CommandText = "Bus_Rep_ARAMS_Batch_Hd";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@var_date", txtDate.Text);
            ad = new SqlDataAdapter(cmd);
            ad.Fill(tempData = new DataTable());
            cmd.Dispose();
            ad.Dispose();

            HttpContext context = HttpContext.Current;
            context.Response.Clear();
            context.Response.ContentType = "text/csv";
            context.Response.AddHeader("Content-Disposition", "attachment; filename=ARAMS_Page_Data_" + DateTime.Now.ToShortDateString() + ".csv");

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
        protected void init_GridView1(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();

            using (SqlConnection con = new SqlConnection("SERVER=WMM0772MANUAP01;Trusted_Connection=Yes;DATABASE=Web_Reporting"))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "Bus_Rep_ARAMS_Batch_Hd";
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@var_date", txtDate.Text);
                    cmd.Connection = con;

                    SqlDataAdapter adapter = new SqlDataAdapter();
                    adapter.SelectCommand = cmd;
                    adapter.Fill(ds);

                }
                con.Close();
            }
            GridView1.DataBind();
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            init_GridView1(null, null);
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
}

