using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SalonComplex.LinqSQL;
using SalonComplex.SalonBusiness;


namespace SalonComplex.VerifyNewUser
{
    public partial class VerifyNewUser : System.Web.UI.Page
    {
        protected int iUserId = 0;
        protected string strCodeUser;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //confirm link format
            //VerifyNewUser.aspx?ID=1000&CodeUser=ldghjkshye
            if (!IsPostBack)
            {
                if (this.Request.QueryString.HasKeys())
                {
                    if (this.Request.QueryString["ID"] != null
                        && !string.IsNullOrEmpty(Page.Request.QueryString["CodeUser"]))
                    {
                        int.TryParse(this.Request.QueryString["ID"].ToString(), out iUserId);
                        strCodeUser = Page.Request.QueryString["CodeUser"].ToString();

                        if (iUserId > 0)
                        {
                            admin connectBusiness = new admin();
                            int Resultado = connectBusiness.CallConfirmEmailReceiveFull(iUserId, strCodeUser);

                            if (Resultado > 0)
                            {
                                //strCodeUser is loginName,LoginEmail,LoginEnable.LoginDenied
                                string[] strFieldsUserLogin = connectBusiness.StrFullData.Split(',');
                                LabelStatus.Text = "Welcome " + strFieldsUserLogin[0];
                                //record successfully validated by our system
                                LabelMsg.Text = " Thank you your record in: " + connectBusiness.StrRegisterDateTime;
                                LabelMsg.Text += " using your email " + strFieldsUserLogin[1];
                                LabelMsg.Text += " in " + connectBusiness.StrRegisterDateTime + " was successfully validated by our system.";


                            }

                        

                            else
                            {
                                LabelStatus.Text = "Welcome ";
                                LabelMsg.Text = " Invalid Data....";
                            }

                        }

                        else
                        {
                            LabelStatus.Text = "Fail to Validate your email page";
                        }

                    }
                    else
                    {
                        if (this.Request.QueryString["Mode"] != null && Session["idUserName"] != null)
                        {
                            string strMessage = HttpContext.Current.Server.HtmlDecode(Session["idUserName"].ToString());

                            LabelStatus.Text = "Welcome new customer " + strMessage;

                            LabelMsg.Text = "Please check your Email for registration confirmation link...";

                            //remove the session from server
                            Session.Remove("IdUsername");
                        }
                        else
                        {
                            LabelStatus.Text = "Invalid Page";
                        }
                    }
                }
                else
                {
                    LabelStatus.Text = "Invalid Page ";
                }
            }

            else 
            {
                LabelStatus.Text = "Invalid Page ";
            }
        }
    }
  }
