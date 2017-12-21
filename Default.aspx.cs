using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GeneDiseaseDatabase
{
    public partial class Default : System.Web.UI.Page
    {

        DatabaseDataContext datacon = new DatabaseDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
               
        }

        protected void Login_Click(object sender, EventArgs e)
        {

            if (string.IsNullOrWhiteSpace(LoginTextBox.Text) || string.IsNullOrWhiteSpace(PasswordBox.Text))
            {
              
                string display = "Please fill the form.";
                ClientScript.RegisterStartupScript(this.GetType(), "yourMessage", "alert('" + display + "');", true);
            }
            else
            {
                try
                {

                    var query = from s in datacon.UserLogins
                                where (s.LoginName.Equals(LoginTextBox.Text) &&
                                s.Password.Equals(PasswordBox.Text))
                                select s;


                    if (query.Any())
                    {
                        Response.Redirect("MainMenu.aspx");

                    }
                    else
                    {
                       
                        string display = "Credential is Incorrect. Please Try Again !";
                        ClientScript.RegisterStartupScript(this.GetType(), "yourMessage", "alert('" + display + "');", true);
                    }
                }
                catch
                {
                    string display = "Exception Login Error. Please Try Again !";
                    ClientScript.RegisterStartupScript(this.GetType(), "yourMessage", "alert('" + display + "');", true);
                }

            }



        }

        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}