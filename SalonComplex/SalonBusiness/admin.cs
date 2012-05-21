using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SalonComplex.LinqSQL;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using SalonComplex.Account;


namespace SalonComplex.SalonBusiness
{
    public class admin
    {
        public int iUserLoginID = 0;

        //from Call_ConfirmEmailRecieveFull
        public string StrFullData;
        public string StrRegisterDateTime;

        #region ChangePassWord

        public int Call_ChangePassWord(string strUser, string strOldPassWord, string strNewPassWord)
        {
            int Result = 0;

            using (DataClassesLinqSQLDataContext connect = new DataClassesLinqSQLDataContext())
            {

                Result = connect.SP_ChangePassWord(strUser, strOldPassWord, strNewPassWord);

              
              

            }

            return (Result);
        }


        #endregion

        #region CheckLoginPassword
        public int CallCheckLoginPassWord(string strLogin, string strPassWord)
        {
            int Result = 0;

            using (DataClassesLinqSQLDataContext connect = new DataClassesLinqSQLDataContext())
            {

                DateTime? dtRecTime = DateTime.Now;
                StrFullData = "ErrorEmail, ErrorLogin, ErrorEnable";

                Result = connect.SP_CheckLoginPassWord (strLogin, strPassWord, ref StrFullData, ref dtRecTime);

               
                StrRegisterDateTime = dtRecTime.ToString();

            }

            return (Result);
        }



        #endregion


        #region ConfirmEmail


        public int CallConfirmEmailReceiveFull(int UserID, string strCode)
        {
            int result = 0;

            using (DataClassesLinqSQLDataContext connect = new DataClassesLinqSQLDataContext())
            {

                DateTime? dtRecTime = DateTime.Now;
                StrFullData = "anyting";

                result = connect.SP_ConfirmEmailShowAllFields((int)UserID, strCode, ref StrFullData, ref dtRecTime);
                StrRegisterDateTime = dtRecTime.ToString();

            }

            return (result);
        }



        #endregion


        #region Insert

        public int CallInsertClient(client clientValues)
        {
            int result = 0;

            using (DataClassesLinqSQLDataContext connect = new DataClassesLinqSQLDataContext())
            {

                result = connect.SP_InsertClient(clientValues.client_LoginID,clientValues.client_fname, clientValues.client_lname,
                clientValues.client_gender, clientValues.client_street,
                clientValues.client_city, clientValues.client_parish,
                clientValues.client_profession, clientValues.client_phone);

            }

            return (result);
        }


        public int CallInsertUserLogin(UserLogin userLoginValues, string strCode)
        {
            int result = 0;

            using (DataClassesLinqSQLDataContext connect = new DataClassesLinqSQLDataContext())
            {
                int? intUserIdResult = 0; // OUT Var SP
                result = connect.SP_InsertUserLogin(userLoginValues.LoginName, userLoginValues.LoginPassword,
                userLoginValues.LoginEmail, (short) userLoginValues.LoginEnable, 
                (short) userLoginValues.LoginDenied, strCode, ref intUserIdResult);

                if (intUserIdResult != null) return iUserLoginID = (int)intUserIdResult;
            }

            return (result);
        }
        
    

    
       
        public int CallInsertEmployee(employee employeeValues)
        {
            int result = 0;

            using (DataClassesLinqSQLDataContext connect = new DataClassesLinqSQLDataContext())
            {
                result = connect.SP_InsertEmployee(employeeValues.employee_type, employeeValues.employee_fname,
                    employeeValues.employee_gender, employeeValues.employee_street,
                employeeValues.employee_city, employeeValues.employee_parish, employeeValues.employee_phone, 
                employeeValues.employee_yoe, employeeValues.employee_email);
            }

            return (result);
        }


        public int CallInsertComments(comment commentValues)
        {
            int result = 0;

            using (DataClassesLinqSQLDataContext connect = new DataClassesLinqSQLDataContext())
            {
                result = connect.SP_InsertComments(commentValues.contact_name, commentValues.contact_email,
                    commentValues.contact_phone, commentValues.contact_regs, commentValues.contact_comments);
            }

            return (result);
        }

        #endregion

        #region update
        public int CallUpdateEmployee(employee employeeNewValues)
        {
            int result = 0;

            using (DataClassesLinqSQLDataContext connect = new DataClassesLinqSQLDataContext())
            {
                result = connect.SP_UpdateEmployee(employeeNewValues.employee_id,employeeNewValues.employee_type, employeeNewValues.employee_fname,
                    employeeNewValues.employee_gender, employeeNewValues.employee_street,
                employeeNewValues.employee_city, employeeNewValues.employee_parish, employeeNewValues.employee_phone,
                employeeNewValues.employee_yoe, employeeNewValues.employee_email);
            }

            return (result);
        }
        #endregion

        #region delete
        public int CallDeleteEmployee(int strEmpID)
        {
            int result = 0;

            using (DataClassesLinqSQLDataContext connect = new DataClassesLinqSQLDataContext())
            {
                result = connect.SP_DeleteEmployee(strEmpID);
            }

            return (result);
        }
        #endregion

        public int CallUpdateClient(client updateClientValues)
        {
            int result = 0;

            using (DataClassesLinqSQLDataContext connect = new DataClassesLinqSQLDataContext())
            {
                result = connect.SP_UpdateClient(updateClientValues.client_id,
                                                 updateClientValues.client_LoginID,
                                                 updateClientValues.client_fname, updateClientValues.client_lname,
                                                 updateClientValues.client_gender, updateClientValues.client_street,
                                                 updateClientValues.client_city, updateClientValues.client_parish,
                                                 updateClientValues.client_profession, updateClientValues.client_phone);
            }

            return result;
        }

        public int CallDeleteClient(int isesClientId, int isesClientLoginId)
        {
            int result = 0;

            using (DataClassesLinqSQLDataContext connect = new DataClassesLinqSQLDataContext())
            {
                result = connect.SP_DeleteClient(isesClientId, isesClientLoginId);

            }

            return result;
        }
    }

    


}

