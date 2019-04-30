using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.OleDb;
using System.Data.SqlClient;

public partial class details2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection("Data source=CPLAB-60\\SQLEXPRESS;database=PLACEMENT;integrated security=true");
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select *from tbl_StreamDetails  ", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            DropDownList1.DataSource = ds.Tables[0];
            DropDownList1.DataValueField = "Stream_Id";
            DropDownList1.DataTextField = "Stream_Name";
            DropDownList1.DataBind();
        }


    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("~//Files//" + FileUpload1.FileName));
        string filename = Server.MapPath("~//Files//" + FileUpload1.FileName);

        OleDbConnection OleDbcon = new OleDbConnection("Provider= Microsoft.ACE.OLEDB.12.0;Data Source=" + filename + ";Extended Properties = Excel 12.0;");

        DataSet ds = new DataSet();

        OleDbDataAdapter da = new OleDbDataAdapter("select * from [" + DropDownList2.SelectedItem.Text + "$]", OleDbcon);
        da.Fill(ds);
        foreach (DataRow dr in ds.Tables[0].Rows)
        {

            int Student_Id = Convert.ToInt32(DropDownList2.SelectedValue);
            int Year_Id = Convert.ToInt32(DropDownList2.SelectedValue);
            string StudentAcedemicDetails_Id = dr[0].ToString();
            string Percentage = dr[1].ToString();
            string YearofPassing = dr[2].ToString();

            SqlConnection con1 = new SqlConnection("Data source=CPLAB-60\\SQLEXPRESS;database=PLACEMENT;integrated security=true");
            con1.Open();
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from tbl_StudentDetails where Student_RollNumber='" + StudentAcedemicDetails_Id + "'",con1);

            DataSet ds1 = new DataSet();
            sda1.Fill(ds1);
            string sid = ds1.Tables[0].Rows[0]["Student_Id"].ToString();
            SqlConnection con = new SqlConnection("Data source=CPLAB-60\\SQLEXPRESS;database=PLACEMENT;integrated security=true");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tbl_StudentPercentageDetails values('" + Convert.ToInt32(sid) + "','" + DropDownList2.SelectedValue + "','" + Percentage + "','" + YearofPassing + "')", con);

            cmd.ExecuteNonQuery();

        }

       
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data source=CPLAB-60\\SQLEXPRESS;database=PLACEMENT;integrated security=true");
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select * from tbl_YearDetails where Stream_Id='" + DropDownList1.SelectedValue + "'", con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        DropDownList2.DataSource = ds.Tables[0];
        DropDownList2.DataValueField = "Year_Id";
        DropDownList2.DataTextField = "Year";
        DropDownList2.DataBind();
          
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
