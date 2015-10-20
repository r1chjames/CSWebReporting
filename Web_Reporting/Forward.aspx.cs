using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

    public partial class Forward : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Forward_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://wmm0772manuap01/Web_Reporting");
        }

    }


