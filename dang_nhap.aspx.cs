using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class dang_nhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    public bool dang_nhap1(string ten,string pwd1)
    {
        string Strcnn = @"Data Source=KELVIN\SQLEXPRESS;Initial Catalog=QLBS;Integrated Security=True";
        SqlConnection Cnn = new SqlConnection(Strcnn);
        try
        {
            Cnn.Open();
            string strSql = "select * from Khach_hang where Ten_dang_nhap='" + ten + "'and Mat_khau='"+pwd1+"'";

            SqlDataAdapter da = new SqlDataAdapter(strSql, Strcnn);

            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        catch (Exception e)
        {
            Label1.Text = "Loi: " + e.Message.ToString();
            return false;
        }
        finally
        {
            Cnn.Close();
        }

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if(dang_nhap1(txt_name.Text,txt_mk.Text))
            Response.Redirect("Default.aspx");
        else
            Label1.Text= "dang nhap khong thanh cong";
       
    }   
}