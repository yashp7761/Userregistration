using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Userregistration
{
    public partial class UserReg : System.Web.UI.Page
    {
        string connectionstring = @"Data Source= yashp ; Initial Catalog = userregistration; Integrated Security = True;";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                clear();
            }
        }

        protected void submit(object sender, EventArgs e)
        {
            if ( firstname.Text == "" || lastname.Text == "" || password.Text == "")
                errormessage.Text = "Please fill out mandatory details";
            else if (password.Text != cpassword.Text)
                errormessage.Text = "Password dont match";
            else
            {

                using (SqlConnection sqlconn = new SqlConnection(connectionstring))
                {
                    sqlconn.Open();
                    SqlCommand scmd = new SqlCommand("AddUser", sqlconn);
                    scmd.CommandType = CommandType.StoredProcedure;
                 
                    scmd.Parameters.AddWithValue("@firstname", firstname.Text);
                    scmd.Parameters.AddWithValue("@lastname", lastname.Text);
                    scmd.Parameters.AddWithValue("@gender", ddlgender.SelectedValue);
                    scmd.Parameters.AddWithValue("@contact", contact.Text);
                    scmd.Parameters.AddWithValue("@address", address.Text);
                    scmd.Parameters.AddWithValue("@passpword", password.Text);
                    scmd.ExecuteNonQuery();
                    clear();

                    successmessage.Text = "Submited successfully";

                   
                }
            }
        }

        void clear()
        {
            firstname.Text = lastname.Text  = gender.Text = contact.Text = address.Text = password.Text = cpassword.Text = "" ;
            successmessage.Text = errormessage.Text = "";

        }

     
    }
}