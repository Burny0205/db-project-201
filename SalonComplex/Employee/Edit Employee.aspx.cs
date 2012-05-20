using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SalonComplex.SalonBusiness;
using SalonComplex.LinqSQL;

namespace SalonComplex.Employee
{
    public partial class Edit_Employee : System.Web.UI.Page

    {
        private int _isesEmpId;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                EmpEditLabelStatus.Text = "Please Select a employee";
            }
            else
            {   // update the gridview
                GrdViewEmpValUpdate.DataBind();
            }

        }

        protected void UpdateLectButtonClick(object sender, EventArgs e)
        {
            // first check if gridView1 was selected
            if (GrdViewEmpValUpdate.SelectedIndex == -1)
            {
                EmpEditLabelStatus.Text = "Please Select a employee";
                return;
            }

            // take data from row selected 
            admin test = new admin();
            GridViewRow row = GrdViewEmpValUpdate.SelectedRow;

                        
            int.TryParse(row.Cells[1].Text, out _isesEmpId);
            employee updateEmployeeValues = new employee
                                                {
                                                    employee_id = _isesEmpId,
                                                    employee_type = DropdownListEmpTypeEdit.SelectedItem.Text.Trim(),
                                                    employee_fname = EmpEditTextBoxFname.Text.Trim(),
                                                    employee_gender = EmpRadioButtonMale.Checked ? "M" : "F",
                                                    employee_street = EmpEditTextBoxStreetAdd.Text.Trim(),
                                                    employee_parish = DropdownListEditEmpParish.SelectedItem.Text.Trim(),
                                                    employee_city = EmpEditTextBoxCityAdd.Text.Trim(),
                                                    employee_phone = EmpEditTextBoxPhone.Text.Trim(),
                                                    employee_email = EmpEditTextBoxEmail.Text.Trim()
                                                };

            float empEditYoeAdd = 0;
            float.TryParse(EmpEditYoeTxtBox.Text.Trim(), out empEditYoeAdd);
            updateEmployeeValues.employee_yoe = (int) empEditYoeAdd;


            int result = test.Call_UpdateEmployee(updateEmployeeValues);

            if (result == 1)
            {

                EmpEditLabelStatus.Text = "The employee" + " " + row.Cells[3].Text + " " + "was successfully updated";
            }
            else
            {
                EmpEditLabelStatus.Text = "Fail: The employee details was not updated";
            }
            DropdownListEmpTypeEdit.ClearSelection();
            EmpEditTextBoxFname.Text = " ";
            EmpEditTextBoxStreetAdd.Text = " ";
            EmpEditTextBoxCityAdd.Text = " ";
            DropdownListEditEmpParish.ClearSelection();
            EmpEditTextBoxPhone.Text = " ";
            EmpEditYoeTxtBox.Text = "";
            EmpEditTextBoxEmail.Text = " ";

            //update gridview1
            GrdViewEmpValUpdate.DataBind();

            //no selected item
            GrdViewEmpValUpdate.SelectedIndex = -1;

            //
            UpdateLect_Button.Visible = true;
            EmpDeleteButton.Visible = true;
            EmpConfirmButton.Visible = false;
            EmpCancelButton.Visible = false;
            
        }

      

      

        protected void LectDeleteButtonClick(object sender, EventArgs e)
        {
            if (GrdViewEmpValUpdate.SelectedIndex == -1)
            {
                EmpEditLabelStatus.Text = "Please Select a Employee";
                return;
            }
            
            
            GridViewRow selectedRow = GrdViewEmpValUpdate.SelectedRow;
            
            int.TryParse(selectedRow.Cells[1].Text, out _isesEmpId);

          

            EmpDeleteButton.Visible = false;
            EmpConfirmButton.Visible = true;
            EmpCancelButton.Visible = true;
            
            Session["sesEmpid"] = _isesEmpId.ToString();
            //get Name of employee
            Session["sesEmpFirstName"] = selectedRow.Cells[3].Text;
            EmpLabelMsgDeleteOrCancel.Visible = true;
                       
        }

        protected void ButtonLectConfirmClick(object sender, EventArgs e)
        {
            if (GrdViewEmpValUpdate.SelectedIndex == -1)
            {                
               
                
                EmpEditLabelStatus.Text = "Please Select a Course";
                return;

            }
                                 
            GridViewRow selectedRow = GrdViewEmpValUpdate.SelectedRow;
            int.TryParse(Session["sesEmpid"].ToString(), out _isesEmpId);

            admin test = new admin();
            int result = test.Call_DeleteEmployee(_isesEmpId);
           
                       
            if (result == 1)
            {
               
                EmpEditLabelStatus.Text = "The employee " + Session["sesEmpFirstName"].ToString() +" " + "was removed";
            }
            else
            {
                EmpEditLabelStatus.Text = " Fail to Remove Employee " + Session["sesEmpFirstName"].ToString();
            }

            DropdownListEmpTypeEdit.ClearSelection();
            EmpEditTextBoxFname.Text = " ";
            EmpEditTextBoxStreetAdd.Text = " ";
            EmpEditTextBoxCityAdd.Text = " ";
            DropdownListEditEmpParish.ClearSelection();
            EmpEditTextBoxPhone.Text = " ";
            EmpEditYoeTxtBox.Text = "";
            EmpEditTextBoxEmail.Text = " ";


            //update gridview1
            GrdViewEmpValUpdate.DataBind();

            //no selected item
            GrdViewEmpValUpdate.SelectedIndex = -1;


            UpdateLect_Button.Visible = true;
            EmpDeleteButton.Visible = true;
            EmpConfirmButton.Visible = false;
            EmpCancelButton.Visible = false;
            EmpLabelMsgDeleteOrCancel.Visible = false;

        }

        protected void ButtonLectCancelClick(object sender, EventArgs e)
        {
            // back original state Buttons
            UpdateLect_Button.Visible = true;
            EmpDeleteButton.Visible = true;
            EmpConfirmButton.Visible = false;
            EmpCancelButton.Visible = false;
            EmpLabelMsgDeleteOrCancel.Visible = false;
        }

      

      
        protected void GrdViewEmpValUpdateSelectedIndexChanged(object sender, EventArgs e)
        {
            //get selected row 

                GridViewRow selectedRow = GrdViewEmpValUpdate.SelectedRow;
                EmpEditLabelStatus.Text = "You selected" + " " + selectedRow.Cells[3].Text;


                Session["sesEmpid"] = selectedRow.Cells[1].Text;
                DropdownListEmpTypeEdit.SelectedItem.Text = selectedRow.Cells[2].Text;
                EmpEditTextBoxFname.Text = selectedRow.Cells[3].Text;
                string strGender = selectedRow.Cells[4].Text;
                if (strGender == "M")
                {
                    EmpRadioButtonMale.Checked = true;
                    EmpRadioButtonFemale.Checked = false;
                }
                else
                {
                    EmpRadioButtonMale.Checked = false;
                    EmpRadioButtonFemale.Checked = true;
                }
                EmpEditTextBoxStreetAdd.Text = selectedRow.Cells[5].Text;
                EmpEditTextBoxCityAdd.Text = selectedRow.Cells[6].Text;
                DropdownListEditEmpParish.SelectedItem.Text = selectedRow.Cells[7].Text;
                EmpEditTextBoxPhone.Text = selectedRow.Cells[8].Text;
                EmpEditYoeTxtBox.Text = selectedRow.Cells[9].Text;
                EmpEditTextBoxEmail.Text = selectedRow.Cells[10].Text;

               
        }

        

       

       
    }
}