using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EduStart.Functions;
using EduStart.LinqSQL;
using System.Globalization;
using System.Data;
using System.Data.SqlTypes;
using System.Windows.Forms;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Text;





namespace EduStart.Student
{
    public partial class WebForm1 : System.Web.UI.Page
       {

        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                edufunctions test = new edufunctions();
                student valuesStudent = new student();

                valuesStudent.student_fname = FnameText.Text.Trim();
                valuesStudent.student_lname = LnameText.Text.Trim();
                valuesStudent.student_DOB = DateTime.Parse(DobText.Text);
                string strGender;
                if (RadioButtonGender.Checked) {strGender = "M"; }
                else { strGender = "F"; }
                valuesStudent.Gender = strGender;
                valuesStudent.student_address1 = StreetText.Text.Trim();
                valuesStudent.student_address2 = CityText.Text.Trim();
                valuesStudent.student_address3 = ParishText.Text.Trim();
                valuesStudent.student_phone = StuPhoneTextBox.Text.Trim();
                valuesStudent.student_email = EmailText.Text.Trim();
                              
                
               
            


                int Result = test.Call_InserStudent(valuesStudent);

                if (Result == 1)
                {

                    LabelStatus.Text = "The Student " + " "+ valuesStudent.student_fname + " " + 
                                        valuesStudent.student_lname+ "was added successfully";
                    FnameText.Text = "";
                    LnameText.Text = "";
                    EmailText.Text= "";
                    RadioButtonGender.Text = "";
                    DobText.Text = "";
                    StuPhoneTextBox.Text= "";
                    StreetText.Text= "";
                    CityText.Text= "";
                    ParishText.Text= "";
                                       
                }

                else
                {
                    LabelStatus.Text = "Information was not successfully added";
                }


            }
        }

       
      }

    
}
