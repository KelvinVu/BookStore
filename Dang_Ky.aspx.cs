using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Dang_Ky : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string Strcnn = @"Data Source=KELVIN\SQLEXPRESS;Initial Catalog=QLBS;Integrated Security=True";
        SqlConnection _cn = new SqlConnection(Strcnn);
        _cn.Open();
        Random rd = new Random();
        int numrd = rd.Next(50, 1000);
        string sql = @"INSERT INTO Khach_Hang(Gioi_tinh,Mkh,Ten_dang_nhap,Mat_khau,Ho_ten,dia_chi,email,IDQ) VALUES('" + 1 + "','" + numrd + "','" + txt_tdn.Text + "','" + txt_mk.Text + "','" + txt_ten.Text + "','" + txt_diachi.Text + "','" + txt_email.Text + "','" + 1 + "') ";

        try
        {
            if (txt_tdn.Text == ""||txt_ten.Text==""||txt_mk.Text==""||txt_email.Text==""||txt_diachi.Text=="")
            {
                Label1.Text = "chua dien thong tin";
            }
            else
            {
                SqlCommand cmd = new SqlCommand(sql, _cn);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
                Label1.Text = "dang nhap thanh cong";
            }
        }
        catch (Exception a)
        {
            Label1.Text = "Loi: " + a.Message.ToString();
        }
        finally
        {
            _cn.Close();
            
        }

    }
}