using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Dashboard : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }    
    //protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    //{
    //    if (e.Row.RowType == DataControlRowType.DataRow)
    //    {
    //        if (int.Parse(e.Row.Cells[2].Text) != 0)
    //        {
    //            e.Row.Cells[2].ForeColor = System.Drawing.Color.Red;
    //            e.Row.Cells[2].Font.Bold = true;
    //        }
    //        if (int.Parse(e.Row.Cells[3].Text) != 0)
    //        {
    //            e.Row.Cells[3].ForeColor = System.Drawing.Color.Red;
    //            e.Row.Cells[3].Font.Bold = true;
    //        }
    //        if (int.Parse(e.Row.Cells[4].Text) != 0)
    //        {
    //            e.Row.Cells[4].ForeColor = System.Drawing.Color.Red;
    //            e.Row.Cells[4].Font.Bold = true;
    //        }
    //        if (int.Parse(e.Row.Cells[5].Text) != 0)
    //        {
    //            e.Row.Cells[5].ForeColor = System.Drawing.Color.Red;
    //            e.Row.Cells[5].Font.Bold = true;
    //        }
    //        if (int.Parse(e.Row.Cells[6].Text) != 0)
    //        {
    //            e.Row.Cells[6].ForeColor = System.Drawing.Color.Red;
    //            e.Row.Cells[6].Font.Bold = true;
    //        }
    //        if (int.Parse(e.Row.Cells[7].Text) != 0)
    //        {
    //            e.Row.Cells[7].ForeColor = System.Drawing.Color.Red;
    //            e.Row.Cells[7].Font.Bold = true;
    //        }
    //        if (int.Parse(e.Row.Cells[8].Text) != 0)
    //        {
    //            e.Row.Cells[8].ForeColor = System.Drawing.Color.Red;
    //            e.Row.Cells[8].Font.Bold = true;
    //        }

    //    }
    //}
    protected void GridView3_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if ((e.Row.Cells[3].Text.ToString() == "Failed") && (int.Parse(e.Row.Cells[4].Text) != 0))
            {
                e.Row.Font.Bold = true;
                e.Row.ForeColor = System.Drawing.Color.Red;
            }
            //if ((e.Row.Cells[3].Text.ToString() == "Not Sent") && (int.Parse(e.Row.Cells[4].Text) != 0))
            //{
            //    e.Row.ForeColor = System.Drawing.Color.DarkOrange;
            //}
            //if ((e.Row.Cells[3].Text.ToString() == "Negative Weight") && (int.Parse(e.Row.Cells[4].Text) != 0))
            //{
            //    e.Row.ForeColor = System.Drawing.Color.DarkOrange;
            //}
            //if ((e.Row.Cells[3].Text.ToString() == "Successful") && (int.Parse(e.Row.Cells[4].Text) != 0))
            //{
            //    e.Row.ForeColor = System.Drawing.Color.Green;
            //}
        }
    }
    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (e.Row.Cells[4].Text.ToString() == "Off")
            {
                e.Row.Font.Bold = true;
                e.Row.ForeColor = System.Drawing.Color.Red;
            }
            if (e.Row.Cells[4].Text.ToString() == "Off")
            {
                e.Row.Font.Bold = true;
                e.Row.ForeColor = System.Drawing.Color.Red;
            }
            if (e.Row.Cells[4].Text.ToString() == "Off")
            {
                e.Row.Font.Bold = true;
                e.Row.ForeColor = System.Drawing.Color.Red;
            }
            if (e.Row.Cells[4].Text.ToString() == "Off")
            {
                e.Row.Font.Bold = true;
                e.Row.ForeColor = System.Drawing.Color.Red;
            }
            if (e.Row.Cells[4].Text.ToString() == "Off")
            {
                e.Row.Font.Bold = true;
                e.Row.ForeColor = System.Drawing.Color.Red;
            }
        }
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (int.Parse(e.Row.Cells[4].Text) > 400)
            {
                e.Row.Font.Bold = true;
                e.Row.ForeColor = System.Drawing.Color.Red;
            }
        }
    }

    protected void LinkButtonRefresh1_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();

        using (SqlConnection con = new SqlConnection("SERVER=WMM0772MANUAP01;Trusted_Connection=Yes;DATABASE=Web_Reporting"))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "Summary_prodstage_count";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = con;

                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmd;
                adapter.Fill(ds);

            }
            con.Close();
        }
        GridView1.DataBind();

    }
    protected void LinkButtonRefresh2_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();

        using (SqlConnection con = new SqlConnection("SERVER=WMM0772MANUAP01;Trusted_Connection=Yes;DATABASE=Web_Reporting"))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "Summary_Integration_On_Off";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = con;

                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmd;
                adapter.Fill(ds);

            }
            con.Close();
        }
        GridView2.DataBind();

    }
    protected void LinkButtonRefresh3_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();

        using (SqlConnection con = new SqlConnection("SERVER=WMM0772MANUAP01;Trusted_Connection=Yes;DATABASE=Web_Reporting"))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "Summary_MORLSENDQ_CountTotal";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = con;

                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmd;
                adapter.Fill(ds);

            }
            con.Close();
        }
        GridView3.DataBind();

    }

}
