using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GeneDiseaseDatabase
{
    public partial class Register : System.Web.UI.Page
    {

        DatabaseDataContext datacon = new DatabaseDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitBotton_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(UsernameBox.Text) || string.IsNullOrWhiteSpace(PasswordBox.Text))
            {
               
                string display = "Please fill the form.";
                ClientScript.RegisterStartupScript(this.GetType(), "yourMessage", "alert('" + display + "');", true);
            }
            else
            {
                try
                {

                    UserLogin newuser = new UserLogin();
                    newuser.FullName = fullnameBox.Text;
                    newuser.LoginName = UsernameBox.Text;
                    newuser.Password = PasswordBox.Text;
                    newuser.Email = emailBox.Text;
                    newuser.IsActive = true;
                    newuser.CreateDate = DateTime.Now;


                    datacon.UserLogins.InsertOnSubmit(newuser);
                    datacon.SubmitChanges();

                    

                    Response.Redirect("Default.aspx");
                }
                catch
                {
               
                    string display = "Registration error.Please Try Again  !";
                    ClientScript.RegisterStartupScript(this.GetType(), "yourMessage", "alert('" + display + "');", true);
                }

            }
        }

        protected void LoginBotton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}