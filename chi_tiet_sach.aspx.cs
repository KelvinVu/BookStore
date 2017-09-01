using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class chi_tiet_sach : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string ms = Request.QueryString["type"];
            chi_tiet_sach1(ms);
        }
    }
    public void chi_tiet_sach1(string ms)
    {
        string Strcnn = @"Data Source=KELVIN\SQLEXPRESS;Initial Catalog=QLBS;Integrated Security=True";
        SqlConnection Cnn = new SqlConnection(Strcnn);

        try
        {
            Cnn.Open();
            string strSql = "select s.*,Ten_tac_gia,Ten_chu_de,Ten_nha_xuat_ban from (((SACH s inner join CHU_DE c on s.Mcd= c.Mcd) inner join NHA_XUAT_BAN n on s.Mnxb=n.Mnxb) inner join THAM_GIA t on s.Ms=t.Ms) inner join TAC_GIA g on t.Mtg=g.Mtg where s.Ms="+ ms;
            SqlCommand cmd = new SqlCommand(strSql,Cnn);
            cmd.CommandType = CommandType.Text;
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Image1.ImageUrl = "images/" + dr["hinh_minh_hoa"]+".jpg";
                lb_ten_sach.Text =(string)dr["ten_sach"];
                hl_tac_gia.Text = (string)dr["ten_tac_gia"];
                hl_theloai.Text = (string)dr["ten_chu_de"];
                hl_nha_xuat_ban.Text = (string)dr["ten_nha_xuat_ban"];
                lb_don_gia.Text = dr["don_gia"] +" / "+ (string)dr["don_vi_tinh"];
                lb_mo_ta.Text = (string)dr["mo_ta"];
            }
                
        }

        catch (Exception e)
        {
            lb_mo_ta.Text = "Loi: " + e.Message.ToString();
        }
        finally
        {
            Cnn.Close();
        }

    }
}