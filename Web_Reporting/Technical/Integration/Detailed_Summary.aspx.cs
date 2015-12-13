using System;
using System.Web.UI.WebControls;


    public partial class Detailed_Summary : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }



        protected void errorsGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (int.Parse(e.Row.Cells[2].Text) != 0)
                {
                    e.Row.Cells[2].ForeColor = System.Drawing.Color.Red;
                    e.Row.Cells[2].Font.Bold = true;
                }                
                if (int.Parse(e.Row.Cells[3].Text) != 0)
                {
                    e.Row.Cells[3].ForeColor = System.Drawing.Color.Red;
                    e.Row.Cells[3].Font.Bold = true;
                }
                if (int.Parse(e.Row.Cells[4].Text) != 0)
                {
                    e.Row.Cells[4].ForeColor = System.Drawing.Color.Red;
                    e.Row.Cells[4].Font.Bold = true;
                }
                if (int.Parse(e.Row.Cells[5].Text) != 0)
                {
                    e.Row.Cells[5].ForeColor = System.Drawing.Color.Red;
                    e.Row.Cells[5].Font.Bold = true;
                }
                if (int.Parse(e.Row.Cells[6].Text) != 0)
                {
                    e.Row.Cells[6].ForeColor = System.Drawing.Color.Red;
                    e.Row.Cells[6].Font.Bold = true;
                }
                if (int.Parse(e.Row.Cells[7].Text) != 0)
                {
                    e.Row.Cells[7].ForeColor = System.Drawing.Color.Red;
                    e.Row.Cells[7].Font.Bold = true;
                }
                if (int.Parse(e.Row.Cells[8].Text) != 0)
                {
                    e.Row.Cells[8].ForeColor = System.Drawing.Color.Red;
                    e.Row.Cells[8].Font.Bold = true;
                }

            }
        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
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
        protected void GridView5_RowDataBound(object sender, GridViewRowEventArgs e)
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
        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
}
