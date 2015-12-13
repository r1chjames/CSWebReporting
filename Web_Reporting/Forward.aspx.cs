using System;

    public partial class Forward : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Forward_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://WS-ES12R2/Web_Reporting");
        }

    }


