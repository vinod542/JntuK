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

public partial class details1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection("Data source=CPLAB-60\\SQLEXPRESS;database=PLACEMENT;integrated security=true");
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select *from tbl_StreamDetails  ",con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            DropDownList1.DataSource = ds.Tables[0];
            DropDownList1.DataValueField = "Stream_Id";
            DropDownList1.DataTextField = "Stream_Name";
            DropDownList1.DataBind();
        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        FileUpload1.SaveAs(Server.MapPath("~//Files//"+FileUpload1.FileName));
         string filename=Server.MapPath("~//Files//"+FileUpload1.FileName);

      OleDbConnection  OleDbcon = new OleDbConnection("Provider= Microsoft.ACE.OLEDB.12.0;Data Source=" + filename + ";Extended Properties = Excel 12.0;");

                DataSet ds = new DataSet();
               
                OleDbDataAdapter da = new OleDbDataAdapter("select * from [" + DropDownList2.SelectedItem.Text + "$]", OleDbcon);
                da.Fill(ds);
                foreach (DataRow dr in ds.Tables[0].Rows)
                {

                    int Branch_Id = Convert.ToInt32(DropDownList3.SelectedValue);
                    int AcademicYear_Id =Convert.ToInt32(DropDownList3.SelectedValue); 
                    string Student_RollNumber = dr[0].ToString();
                    string Student_Name = dr[1].ToString();
                    string Gender = dr[2].ToString();
                    string DateOfBirth = dr[3].ToString();
                    string PhoneNo = dr[4].ToString();
                    string FatherName = dr[5].ToString();
                    string Father_PhoneNo = dr[6].ToString();
                    string Address = dr[7].ToString();
                    string Email_Id = dr[8].ToString();
                    string str = "True";
                    SqlConnection con = new SqlConnection("Data source=CPLAB-60\\SQLEXPRESS;database=PLACEMENT;integrated security=true");
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into tbl_StudentDetails values('" + Student_RollNumber + "','" + Student_Name + "','" + Gender + "','"+DropDownList2.SelectedValue+"','"+DropDownList3.SelectedValue+"','" + DateOfBirth + "','" + PhoneNo + "','" + FatherName + "','" + Father_PhoneNo + "','" + Address + "','" + Email_Id + "','"+str+"')",con);

                     cmd.ExecuteNonQuery();
                    
                }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

      
            SqlConnection con = new SqlConnection("Data source=CPLAB-60\\SQLEXPRESS;database=PLACEMENT;integrated security=true");
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select * from tbl_BranchDetails where Stream_Id='"+DropDownList1.SelectedValue+"'",con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            DropDownList2.DataSource = ds.Tables[0];
            DropDownList2.DataValueField = "Branch_Id";
            DropDownList2.DataTextField = "Branch_Name";
            DropDownList2.DataBind();
            acamicyear();       
    }

    public void acamicyear()
    {
        SqlConnection con = new SqlConnection("Data source=CPLAB-60\\SQLEXPRESS;database=PLACEMENT;integrated security=true");
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select * from tbl_AcademicYear where Stream_Id='" + DropDownList1.SelectedValue + "'", con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        DropDownList3.DataSource = ds.Tables[0];
        DropDownList3.DataValueField = "AcademicYear_Id";
        DropDownList3.DataTextField = "AcademicYear";
        DropDownList3.DataBind();
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
