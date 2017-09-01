using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class control_UC_SachMoi : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
            sachmoi();
    }
    public void sachmoi()
    {
        string Strcnn = WebConfigurationManager.ConnectionStrings["QLBSConnectionString3"].ToString();
        SqlConnection Cnn = new SqlConnection(Strcnn);
        try
        {
            Cnn.Open();
            string strSql = "select Ms,Ten_sach,Don_gia,Don_vi_tinh,Hinh_minh_hoa from Sach where Ngay_cap_nhat >= (getdate()-10)";
            SqlDataAdapter da = new SqlDataAdapter(strSql, Strcnn);

            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                dl_sachmoi.DataSource = dt;
                dl_sachmoi.DataBind();
            }
            else
            {
                lb_loi.Text = "khong co du lieu";
            }

        }

        catch (Exception e)
        {
            lb_loi.Text = "Loi:" + e.Message.ToString();
        }
        finally
        {
            Cnn.Close();
        }

    }
}