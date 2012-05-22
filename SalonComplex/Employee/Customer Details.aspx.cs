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
    public partial class CustomerDetails : System.Web.UI.Page
    {

        private int _isesClientId;
        private int _isesClientLoginId;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                EmpEditLabelStatus.Text = "Please select a client";
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


            int.TryParse(row.Cells[1].Text, out _isesClientId);
            int.TryParse(row.Cells[2].Text, out _isesClientLoginId);
            client updateClientValues = new client
                                            {
                                                client_id = _isesClientId,
                                                client_lname = EmpEditTextBoxFname.Text.Trim(),
                                                client_fname = EmpEditTextBoxFname0.Text.Trim(),
                                                client_street = EmpEditTextBoxStreetAdd.Text.Trim(),
                                                client_city = EmpEditTextBoxCityAdd.Text.Trim(),
                                                client_parish = DropdownListEditEmpParish.SelectedItem.Text.Trim(),
                                                client_profession = Profession.SelectedItem.Text.Trim(),
                                                client_gender = EmpRadioButtonMale.Checked ? "M" : "F",
                                                client_phone = EmpEditTextBoxPhone.Text.Trim()
                                            };

            updateClientValues.client_id = _isesClientId;


            int result = test.CallUpdateClient(updateClientValues);

            if (result == 1)
            {

                EmpEditLabelStatus.Text = "The employee" + " " + row.Cells[3].Text + " " + row.Cells[4].Text + " " +  "was successfully updated";
            }
            else
            {
                EmpEditLabelStatus.Text = "Fail: The employee details was not updated";
            }
            
            EmpEditTextBoxFname0.Text ="";
            EmpEditTextBoxFname.Text = "";
            EmpEditTextBoxStreetAdd.Text = "";
            EmpEditTextBoxCityAdd.Text = "";
            DropdownListEditEmpParish.ClearSelection();
            Profession.ClearSelection();
            EmpEditTextBoxPhone.Text = "";

                       
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
            {
                if (GrdViewEmpValUpdate.SelectedIndex == -1)
                {
                    EmpEditLabelStatus.Text = "Please Select a Client";
                    return;
                }


                GridViewRow selectedRow = GrdViewEmpValUpdate.SelectedRow;

                int.TryParse(selectedRow.Cells[1].Text, out _isesClientId);
                int.TryParse(selectedRow.Cells[2].Text, out _isesClientLoginId);



                EmpDeleteButton.Visible = false;
                EmpConfirmButton.Visible = true;
                EmpCancelButton.Visible = true;
            
                Session["sesClienId"] = _isesClientId.ToString();
                Session["sesClientLoginId"] = _isesClientLoginId.ToString();
                //get Name of client
                Session["sesClientFirstName"] = selectedRow.Cells[3].Text;
                Session["sesClientLastName"] = selectedRow.Cells[4].Text;
                EmpLabelMsgDeleteOrCancel.Visible = true;

            }

        }

        protected void ButtonLectConfirmClick(object sender, EventArgs e)
        {
            if (GrdViewEmpValUpdate.SelectedIndex == -1)
            {


                EmpEditLabelStatus.Text = "Please Select a Course";
                return;

            }

            GridViewRow selectedRow = GrdViewEmpValUpdate.SelectedRow;
            int.TryParse(Session["sesClientId"].ToString(), out _isesClientId);
            int.TryParse(Session["sesClientLoginId"].ToString(), out _isesClientLoginId);

            admin test = new admin();
            int Result = test.CallDeleteClient(_isesClientId, _isesClientLoginId);


            if (Result == 1)
            {

                EmpEditLabelStatus.Text = "The employee " + Session["sesClientFirstName"].ToString() + " " + Session["sesClientLastName"].ToString() + " " + "was removed";
            }
            else
            {
                EmpEditLabelStatus.Text = " Fail to Remove Employee " + Session["sesClientFirstName"].ToString() + " " + Session["sesClientLastName"].ToString();
            }

            EmpEditTextBoxFname0.Text = "";
            EmpEditTextBoxFname.Text = "";
            EmpEditTextBoxStreetAdd.Text = "";
            EmpEditTextBoxCityAdd.Text = "";
            DropdownListEditEmpParish.ClearSelection();
            Profession.ClearSelection();
            EmpEditTextBoxPhone.Text = "";


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
            EmpEditLabelStatus.Text = "You selected" + " " + selectedRow.Cells[3].Text + " " + selectedRow.Cells[4].Text;


            Session["sesClientId"] = selectedRow.Cells[1].Text;
            Session["sesClientLoginId"] = selectedRow.Cells[2].Text;
            EmpEditTextBoxFname0.Text = selectedRow.Cells[3].Text;
            EmpEditTextBoxFname.Text = selectedRow.Cells[4].Text;
            string strGender = selectedRow.Cells[5].Text;
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
            EmpEditTextBoxStreetAdd.Text = selectedRow.Cells[6].Text;
            EmpEditTextBoxCityAdd.Text = selectedRow.Cells[7].Text;
            DropdownListEditEmpParish.SelectedItem.Text = selectedRow.Cells[8].Text;
            Profession.SelectedItem.Text = selectedRow.Cells[9].Text;
            EmpEditTextBoxPhone.Text = selectedRow.Cells[10].Text;
           
            

        }
    }
}