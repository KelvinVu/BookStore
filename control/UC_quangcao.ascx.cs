using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class control_UC_quangcao : System.Web.UI.UserControl
{
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        quangcao();
    }
    public void quangcao()
    {
        string strCnn = @"Data Source=KELVIN\SQLEXPRESS;Initial Catalog=QLBS;Integrated Security=True";
        string strSql = "select * from QUANG_CAO";
        SqlConnection Cnn = new SqlConnection(strCnn);
        try
        {
            Cnn.Open();
            SqlDataAdapter da = new SqlDataAdapter(strSql, strCnn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GV_QC.DataSource = dt;
                GV_QC.DataBind();
            }
            else
            {
                Label1.Text = "khong co du lieu";
            }

        }
        catch (Exception e)
        {
            Label1.Text = "Loi:" + e.Message.ToString();
        }
        finally
        {
            Cnn.Close();
        }
    }
}