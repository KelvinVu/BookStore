using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class control_UC_navigation_menu : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["name"]!="")
        {
            Lb_ngdung.Text = "chào <b>"+Session["name"] + "</b>";
            hl_thoat.Visible = true;
        }
        else
        {
            Lb_ngdung.Text = "";
            hl_thoat.Visible = false;
        }
    }
}