using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SalonComplex.LinqSQL;
using SalonComplex.SalonBusiness;
using System.Data.SqlClient;




namespace SalonComplex.Account
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection con = new SqlConnection("Data Source=MARCOMACK-PC; Initial Catalog=Salondb; Integrated Security=TRUE");
                con.Open();

                string cmdstr = "Select count (*) from client where client_username='" + UserName.Text + "'";
                SqlCommand userExist = new SqlCommand(cmdstr, con);
                int temp = Convert.ToInt32(userExist.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    LabelStatus.Text = ("User Name Already Exist.....<br />Please Chooose Another User Name.");
                }
            }

        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                admin test = new admin();
                client valuesClient = new client();

                valuesClient.client_username = UserName.Text.Trim();
                valuesClient.client_password = Password.Text.Trim();
                valuesClient.client_fname = FnameText.Text.Trim();
                valuesClient.client_lname = LnameText.Text.Trim();
                string strGender;
                if (RadioButtonGender.Checked) { strGender = "M"; }
                else { strGender = "F"; }
                valuesClient.client_gender = strGender;
                valuesClient.client_street = StreetText.Text.Trim();
                valuesClient.client_city = CityText.Text.Trim();
                valuesClient.client_parish = Parish.SelectedItem.ToString();
                valuesClient.client_profession = Profession.SelectedItem.ToString();
                valuesClient.client_phone = PhoneTextBox.Text.Trim();
                valuesClient.client_email = EmailText.Text.Trim();




                int Result = test.Call_InsertClient(valuesClient);

                if (Result == 1)

                    
                    {

                        LabelStatus.Text = "The Client " + valuesClient.client_fname + " " +
                                            valuesClient.client_lname + "was added successfully";


                        UserName.Text = "";
                        Password.Text = "";
                        FnameText.Text = "";
                        LnameText.Text = "";
                        EmailText.Text = "";
                        PhoneTextBox.Text = "";
                        StreetText.Text = "";
                        CityText.Text = "";
                        Parish.ClearSelection();
                        Profession.ClearSelection();
                       

                    }

                else
                    {
                        LabelStatus.Text = "<b>Information was not successfully added....Please Try Again. </b>";
                    }
                
                }

            }
        }
    }
