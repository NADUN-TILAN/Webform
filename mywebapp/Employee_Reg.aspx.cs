using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.NetworkInformation;
using System.Net;
using System.Xml.Linq;

namespace mywebapp
{
    public partial class Employee_Reg : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           if(!IsPostBack)
            {
                GetEmpList_Tab();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=Employee_Reg;Integrated Security=True");
            // Get the values from the form
            int empid = int.Parse(txtempid.Text);
            string fname = firstName.Text, Surname = lastName.Text, dob = dateOfBirth.Text, address = Add.Text, empstatus = employmentStatus.SelectedValue;
            con.Open();
            SqlCommand co = new SqlCommand("exec EmpReg_Tab '" + empid + "','" + fname + "','" + Surname + "','" + dob + "','" + address + "','" + empstatus + "'", con);
            co.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted.');", true);
            GetEmpList_Tab();
        }
        void GetEmpList_Tab()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=Employee_Reg;Integrated Security=True");
            con.Open();
            SqlCommand co = new SqlCommand("EXEC [dbo].[EmpList_Tab]", con);
            SqlDataAdapter sd = new SqlDataAdapter(co);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtempid.Text = "";
            firstName.Text = "";
            lastName.Text = "";
            dateOfBirth.Text = "";
            Add.Text = "";
            employmentStatus.SelectedValue = "";

        }
    }
}