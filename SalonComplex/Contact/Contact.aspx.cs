using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SalonComplex.LinqSQL;
using SalonComplex.SalonBusiness;
using System.Web.UI.HtmlControls;

namespace SalonComplex.Contact
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ContactUsSubmittButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                admin test = new admin();
                comment valuesComment = new comment();

                valuesComment.contact_name = TextBoxContactName.Text.Trim();
                valuesComment.contact_email = TextBoxContactEmail.Text.Trim();
                valuesComment.contact_phone = TextBoxContactPhone.Text.Trim();
                valuesComment.contact_regs = ContactRegDropDownList.SelectedItem.ToString();
                valuesComment.contact_comments = ContactCommentTextbox.InnerText.Trim();





                int Result = test.CallInsertComments(valuesComment);

                if (Result == 1)
                {

                    ContactLabelStatus.Text = "Your information was successfully submitted....We will responsed shortly to your comment ";


                    TextBoxContactName.Text = "";
                    TextBoxContactEmail.Text = "";
                    TextBoxContactPhone.Text = "";
                    ContactRegDropDownList.ClearSelection();
                    ContactCommentTextbox.InnerText = "";


                }

                else
                {
                    ContactLabelStatus.Text = "<b>Information was not successfully added....Please Try Again. </b>";
                }

            }

        }
    }
}