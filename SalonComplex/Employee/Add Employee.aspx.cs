using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SalonComplex.SalonBusiness;
using SalonComplex.LinqSQL;
using System.Globalization;
using System.Data;
using System.Data.SqlTypes;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Text;

namespace SalonComplex.Employee
{
    public partial class Add_Employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                admin test = new admin();
                employee valuesEmployee = new employee();

                valuesEmployee.employee_type = DropdownListEmpType.SelectedItem.ToString();
                valuesEmployee.employee_fname = EmpFnameText.Text.Trim();
                string strGender = RadioButtonGender.Checked ? "M" : "F";
                valuesEmployee.employee_gender = strGender;
                valuesEmployee.employee_street = EmpStreetText.Text.Trim();
                valuesEmployee.employee_city = EmpCityText.Text.Trim();
                valuesEmployee.employee_parish = DropdownListEmpParish.SelectedItem.ToString();
                valuesEmployee.employee_phone = EmpPhoneTextBox.Text.Trim();
                float yoeAddd = 0;
                float.TryParse(YoeTxtBox.Text.Trim(), out yoeAddd);
                valuesEmployee.employee_yoe = (int)yoeAddd;
                valuesEmployee.employee_email = EmpEmailTextBox.Text.Trim();



                int result = test.Call_InsertEmployee(valuesEmployee);

                if (result == 1)
                {

                    EmpLabelStatus.Text = "Employee " + " " + valuesEmployee.employee_fname + " " +
                                        "was added successfully.";

                    DropdownListEmpType.ClearSelection();
                    EmpFnameText.Text = "";
                    EmpEmailTextBox.Text = "";
                    RadioButtonGender.Text = "";
                    EmpPhoneTextBox.Text = "";
                    EmpStreetText.Text = "";
                    EmpCityText.Text = "";
                    YoeTxtBox.Text = "";
                    DropdownListEmpParish.ClearSelection();
                    RadioButtonGender.GroupName = "";

                }

                else
                {
                    EmpLabelStatus.Text = "Information was not successfully added";
                }


            }
        }

    }
}