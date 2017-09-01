using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class control_UC_ChuDe_menu : System.Web.UI.UserControl
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
            chu_de();

    }
    public void chu_de()
    {
        string Strcnn = @"Data Source=KELVIN\SQLEXPRESS;Initial Catalog=QLBS;Integrated Security=True";
        SqlConnection Cnn = new SqlConnection(Strcnn);
        try
        {
            Cnn.Open();
            string strSql = "select * from CHU_DE";
            SqlDataAdapter da = new SqlDataAdapter(strSql,Strcnn);

            DataTable dt = new DataTable();
            da.Fill(dt);
             if (dt.Rows.Count > 0)
            {
                GV_Chude.DataSource = dt;
                GV_Chude.DataBind();
            }
            else
            {
                lb_loi.Text = "khong co du lieu";
            }

        }
        
        catch (Exception e) 
        {
            lb_loi.Text ="Loi:" +e.Message.ToString();
        }
        finally
        {
            Cnn.Close();
        }
      
    }
    protected void GV_Chude_SelectedIndexChanged(object sender, EventArgs e)
    {
    }
}