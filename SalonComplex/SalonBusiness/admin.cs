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
        public string strFullData;
        public string strRegisterDateTime;

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
        public int Call_CheckLoginPassWord(string strLogin, string strPassWord)
        {
            int Result = 0;

            using (DataClassesLinqSQLDataContext connect = new DataClassesLinqSQLDataContext())
            {

                DateTime? dtRecTime = DateTime.Now;
                strFullData = "ErrorEmail, ErrorLogin, ErrorEnable";

                Result = connect.SP_CheckLoginPassWord (strLogin, strPassWord, ref strFullData, ref dtRecTime);

               
                strRegisterDateTime = dtRecTime.ToString();

            }

            return (Result);
        }



        #endregion


        #region ConfirmEmail


        public int Call_ConfirmEmailReceiveFull(int UserID, string strCode)
        {
            int Result = 0;

            using (DataClassesLinqSQLDataContext connect = new DataClassesLinqSQLDataContext())
            {

                DateTime? dtRecTime = DateTime.Now;
                strFullData = "anyting";

                Result = connect.SP_ConfirmEmailShowAllFields((int)UserID, strCode, ref strFullData, ref dtRecTime);
                strRegisterDateTime = dtRecTime.ToString();

            }

            return (Result);
        }



        #endregion


        #region Insert

        public int Call_InsertClient(client clientValues)
        {
            int Result = 0;

            using (DataClassesLinqSQLDataContext connect = new DataClassesLinqSQLDataContext())
            {

                Result = connect.SP_InsertClient(clientValues.client_fname, clientValues.client_lname,
                clientValues.client_gender, clientValues.client_street,
                clientValues.client_city, clientValues.client_parish,
                clientValues.client_profession, clientValues.client_phone);

            }

            return (Result);
        }


        public int Call_InsertUserLogin(UserLogin UserLoginValues, string strCode)
        {
            int Result = 0;

            using (DataClassesLinqSQLDataContext connect = new DataClassesLinqSQLDataContext())
            {
                int? intUserIdResult = 0; // OUT Var SP
                Result = connect.SP_InsertUserLogin(UserLoginValues.LoginName, UserLoginValues.LoginPassword,
                UserLoginValues.LoginEmail, (short) UserLoginValues.LoginEnable, 
                (short) UserLoginValues.LoginDenied, strCode, ref intUserIdResult);

                iUserLoginID = (int)intUserIdResult;
            }

            return (Result);
        }
        
    

    
       
        public int Call_InsertEmployee(employee employeeValues)
        {
            int Result = 0;

            using (DataClassesLinqSQLDataContext connect = new DataClassesLinqSQLDataContext())
            {
                Result = connect.SP_InsertEmployee(employeeValues.employee_type, employeeValues.employee_fname,
                    employeeValues.employee_gender, employeeValues.employee_street,
                employeeValues.employee_city, employeeValues.employee_parish, employeeValues.employee_phone, 
                employeeValues.employee_yoe, employeeValues.employee_email);
            }

            return (Result);
        }


        public int Call_InsertComments(comment commentValues)
        {
            int Result = 0;

            using (DataClassesLinqSQLDataContext connect = new DataClassesLinqSQLDataContext())
            {
                Result = connect.SP_InsertComments(commentValues.contact_name, commentValues.contact_email,
                    commentValues.contact_phone, commentValues.contact_regs, commentValues.contact_comments);
            }

            return (Result);
        }

        #endregion

        #region update
        public int Call_UpdateEmployee(employee employeeNewValues)
        {
            int Result = 0;

            using (DataClassesLinqSQLDataContext connect = new DataClassesLinqSQLDataContext())
            {
                Result = connect.SP_UpdateEmployee(employeeNewValues.employee_id,employeeNewValues.employee_type, employeeNewValues.employee_fname,
                    employeeNewValues.employee_gender, employeeNewValues.employee_street,
                employeeNewValues.employee_city, employeeNewValues.employee_parish, employeeNewValues.employee_phone,
                employeeNewValues.employee_yoe, employeeNewValues.employee_email);
            }

            return (Result);
        }
        #endregion

        #region delete
        public int Call_DeleteEmployee(int strEmp_id)
        {
            int Result = 0;

            using (DataClassesLinqSQLDataContext connect = new DataClassesLinqSQLDataContext())
            {
                Result = connect.SP_DeleteEmployee(strEmp_id);
            }

            return (Result);
        }
        #endregion


       
    }

    


}

