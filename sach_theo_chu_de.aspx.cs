using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class sach_theo_chu_de : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string mcd = Request.QueryString["type"];
            sach_theo_chude(mcd);
        }
    }


    public void sach_theo_chude(string mcd)
    {
        string Strcnn = @"Data Source=KELVIN\SQLEXPRESS;Initial Catalog=QLBS;Integrated Security=True";
        SqlConnection Cnn = new SqlConnection(Strcnn);
        try
        {
            Cnn.Open();
            string strSql = "select * from Sach where Mcd="+ mcd;
            SqlDataAdapter da = new SqlDataAdapter(strSql, Strcnn);

            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                Label2.Text = "khong co du lieu";
            }

        }

        catch (Exception e)
        {
            Label2.Text = "Loi: " + e.Message.ToString();
        }
        finally
        {
            Cnn.Close();
        }

    }
}