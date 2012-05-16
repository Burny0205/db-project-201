USE [SalonDb]
GO
/****** Object:  ForeignKey [FK_skills_employee]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_skills_employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[skills]'))
ALTER TABLE [dbo].[skills] DROP CONSTRAINT [FK_skills_employee]
GO
/****** Object:  ForeignKey [FK_skills_service]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_skills_service]') AND parent_object_id = OBJECT_ID(N'[dbo].[skills]'))
ALTER TABLE [dbo].[skills] DROP CONSTRAINT [FK_skills_service]
GO
/****** Object:  ForeignKey [FK_schedule_employee]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_schedule_employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[schedule]'))
ALTER TABLE [dbo].[schedule] DROP CONSTRAINT [FK_schedule_employee]
GO
/****** Object:  ForeignKey [FK_client_UserLogin]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_client_UserLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[client]'))
ALTER TABLE [dbo].[client] DROP CONSTRAINT [FK_client_UserLogin]
GO
/****** Object:  ForeignKey [FK_UserValidate_UserLogin]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserValidate_UserLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserValidate]'))
ALTER TABLE [dbo].[UserValidate] DROP CONSTRAINT [FK_UserValidate_UserLogin]
GO
/****** Object:  ForeignKey [FK_appointment_client]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_client]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment]'))
ALTER TABLE [dbo].[appointment] DROP CONSTRAINT [FK_appointment_client]
GO
/****** Object:  ForeignKey [FK_appointment_services_appointment]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_services_appointment]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment_services]'))
ALTER TABLE [dbo].[appointment_services] DROP CONSTRAINT [FK_appointment_services_appointment]
GO
/****** Object:  ForeignKey [FK_appointment_services_service]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_services_service]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment_services]'))
ALTER TABLE [dbo].[appointment_services] DROP CONSTRAINT [FK_appointment_services_service]
GO
/****** Object:  ForeignKey [FK_appointment_emp_appointment_emp]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_emp_appointment_emp]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment_emp]'))
ALTER TABLE [dbo].[appointment_emp] DROP CONSTRAINT [FK_appointment_emp_appointment_emp]
GO
/****** Object:  ForeignKey [FK_appointment_emp_schedule]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_emp_schedule]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment_emp]'))
ALTER TABLE [dbo].[appointment_emp] DROP CONSTRAINT [FK_appointment_emp_schedule]
GO
/****** Object:  Table [dbo].[appointment_emp]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[appointment_emp]') AND type in (N'U'))
DROP TABLE [dbo].[appointment_emp]
GO
/****** Object:  Table [dbo].[appointment_services]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[appointment_services]') AND type in (N'U'))
DROP TABLE [dbo].[appointment_services]
GO
/****** Object:  StoredProcedure [dbo].[SP_CheckEmployee]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_CheckEmployee]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_CheckEmployee]
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteEmployee]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DeleteEmployee]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_DeleteEmployee]
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertAppointment]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_InsertAppointment]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_InsertAppointment]
GO
/****** Object:  Table [dbo].[appointment]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[appointment]') AND type in (N'U'))
DROP TABLE [dbo].[appointment]
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertUserLogin]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_InsertUserLogin]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_InsertUserLogin]
GO
/****** Object:  StoredProcedure [dbo].[SP_ConfirmEmail]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_ConfirmEmail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_ConfirmEmail]
GO
/****** Object:  StoredProcedure [dbo].[SP_ConfirmEmailShowAllFields]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_ConfirmEmailShowAllFields]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_ConfirmEmailShowAllFields]
GO
/****** Object:  Table [dbo].[UserValidate]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserValidate]') AND type in (N'U'))
DROP TABLE [dbo].[UserValidate]
GO
/****** Object:  StoredProcedure [dbo].[SP_SelectEmployee]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_SelectEmployee]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_SelectEmployee]
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateEmployee]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_UpdateEmployee]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_UpdateEmployee]
GO
/****** Object:  Table [dbo].[client]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[client]') AND type in (N'U'))
DROP TABLE [dbo].[client]
GO
/****** Object:  Table [dbo].[schedule]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[schedule]') AND type in (N'U'))
DROP TABLE [dbo].[schedule]
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertClient]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_InsertClient]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_InsertClient]
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertComments]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_InsertComments]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_InsertComments]
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertEmployee]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_InsertEmployee]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_InsertEmployee]
GO
/****** Object:  StoredProcedure [dbo].[SP_CheckLoginPassWord]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_CheckLoginPassWord]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_CheckLoginPassWord]
GO
/****** Object:  Table [dbo].[skills]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[skills]') AND type in (N'U'))
DROP TABLE [dbo].[skills]
GO
/****** Object:  StoredProcedure [dbo].[SP_ChangePassWord]    Script Date: 05/16/2012 03:05:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_ChangePassWord]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_ChangePassWord]
GO
/****** Object:  Table [dbo].[service]    Script Date: 05/16/2012 03:05:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[service]') AND type in (N'U'))
DROP TABLE [dbo].[service]
GO
/****** Object:  Table [dbo].[comments]    Script Date: 05/16/2012 03:05:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[comments]') AND type in (N'U'))
DROP TABLE [dbo].[comments]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 05/16/2012 03:05:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[employee]') AND type in (N'U'))
DROP TABLE [dbo].[employee]
GO
/****** Object:  Table [dbo].[UserLogin]    Script Date: 05/16/2012 03:05:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserLogin]') AND type in (N'U'))
DROP TABLE [dbo].[UserLogin]
GO
/****** Object:  Table [dbo].[UserLogin]    Script Date: 05/16/2012 03:05:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserLogin]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserLogin](
	[LoginID] [int] IDENTITY(1000,1) NOT NULL,
	[LoginName] [varchar](50) NOT NULL,
	[LoginPassword] [varchar](32) NOT NULL,
	[LoginEmail] [varchar](200) NOT NULL,
	[LoginEnable] [smallint] NOT NULL,
	[LoginDenied] [smallint] NOT NULL,
	[LoginDate] [datetime] NOT NULL,
 CONSTRAINT [PK_UserLogin] PRIMARY KEY CLUSTERED 
(
	[LoginID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[employee]    Script Date: 05/16/2012 03:05:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[employee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[employee](
	[employee_id] [int] IDENTITY(1000,1) NOT NULL,
	[employee_type] [varchar](20) NOT NULL,
	[employee_fname] [varchar](20) NOT NULL,
	[employee_gender] [varchar](1) NOT NULL,
	[employee_street] [varchar](20) NOT NULL,
	[employee_city] [varchar](20) NOT NULL,
	[employee_parish] [varchar](20) NOT NULL,
	[employee_phone] [varchar](13) NOT NULL,
	[employee_yoe] [float] NOT NULL,
	[employee_email] [varchar](30) NOT NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[comments]    Script Date: 05/16/2012 03:05:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[comments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[comments](
	[contact_id] [int] IDENTITY(2000,1) NOT NULL,
	[contact_name] [varchar](60) NOT NULL,
	[contact_email] [varchar](30) NULL,
	[contact_phone] [varchar](15) NULL,
	[contact_regs] [varchar](30) NOT NULL,
	[contact_comments] [varchar](600) NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[contact_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[service]    Script Date: 05/16/2012 03:05:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[service]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[service](
	[service_id] [int] IDENTITY(1000,1) NOT NULL,
	[service_type] [varchar](1200) NOT NULL,
	[price] [money] NOT NULL,
 CONSTRAINT [PK_service] PRIMARY KEY CLUSTERED 
(
	[service_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_ChangePassWord]    Script Date: 05/16/2012 03:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_ChangePassWord]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SP_ChangePassWord] 
	-- Add the parameters for the stored procedure here
@strLoginName varchar (50),
@strOldLoginPassWord varchar (30),
@strNewLoginPassWord varchar (30)


AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	DECLARE @dtDate DATETIME;
	DECLARE @strPassWordMD5 varchar (32)
	DECLARE @Ciphertext varbinary (32)
	DECLARE @iIdUser int = 0
	
	
	
	  --convert to MD5
    SET @Ciphertext = HashBytes (''MD5'', @strOldLoginPassWord)
    SET @strPassWordMD5 = CONVERT (VARCHAR(32),@Ciphertext,2)
    
    SET @iIdUser = (Select LoginID from [UserLogin] 
		Where LoginName = @strLoginName  and LoginPassword = @strPassWordMD5)
	
	--if not found set 0
	Set @iIdUser = (select ISNULL (@iIdUser, 0))
	
		if (@iIdUser>0)
	
		BEGIN
			
				--convert to MD5
			SET @Ciphertext = HashBytes (''MD5'', @strNewLoginPassWord)
			SET @strPassWordMD5 = CONVERT (VARCHAR(32),@Ciphertext,2)
		
		       --Take Date Time from server GETDATE() 2012-05-04 5:59
            SET @dtDate = GETDATE();
            
			
				UPDATE [UserLogin]
				
				SET [LoginPassword] = @strPassWordMD5
				
				      ,[LoginDate] = @dtDate
               WHERE [LoginID] = @iIdUser
				
				
				--Success
				RETURN (1)

	
	
	
			
	
		END
	ELSE
		BEGIN
	
				--Login PassWord Not Found
				return (2)
		end 
	
	--fail
	RETURN (0)
	
END
' 
END
GO
/****** Object:  Table [dbo].[skills]    Script Date: 05/16/2012 03:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[skills]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[skills](
	[skills_id] [int] IDENTITY(1000,1) NOT NULL,
	[employee_id] [int] NOT NULL,
	[service_id] [int] NOT NULL,
 CONSTRAINT [PK_skills] PRIMARY KEY CLUSTERED 
(
	[skills_id] ASC,
	[employee_id] ASC,
	[service_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CheckLoginPassWord]    Script Date: 05/16/2012 03:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_CheckLoginPassWord]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SP_CheckLoginPassWord] 
	-- Add the parameters for the stored procedure here
@strLoginName varchar (50),
@strLoginPassWord varchar (30),

@strResult varchar (203) out, --return Email, LoginEnable, LoginDenied
@RecDateTime datetime out -- return last LoginDate or Register

	
	
	
AS
BEGIN

	DECLARE @dtDate DATETIME;
	DECLARE @strPassWordMD5 varchar (32)
	DECLARE @Ciphertext varbinary (32)
	DECLARE @iIdUser int = 0

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
		
	  --convert to MD5
    SET @Ciphertext = HashBytes (''MD5'', @strLoginPassWord)
    SET @strPassWordMD5 = CONVERT (VARCHAR(32),@Ciphertext,2)
    
    SET @iIdUser = (Select LoginID from [UserLogin] 
		Where LoginName = @strLoginName  and LoginPassword = @strPassWordMD5)
	
	--if not found set 0
	Set @iIdUser = (select ISNULL (@iIdUser, 0))
	
	if (@iIdUser>0)
	
	BEGIN
			UPDATE [UserLogin] SET LoginDate = GETDATE() WHERE LoginID= @iIdUser
	
			SET @strResult = (SELECT TOP 1    [LoginEmail]
												+  '',''  + CAST ([LoginEnable] AS VARCHAR(1))
												+  '',''  + CAST ([LoginDenied] AS VARCHAR (1))
												
					FROM [UserLogin] WHERE LoginID=@iIdUser);
												
			SET @RecDateTime = (SELECT [LoginDate]
			FROM [UserLogin] where LoginID=@iIdUser);
	
			
			
			--success
			return (1)
	end
	else
	begin
	
	--login PassWord not found
	return (2)
	
	end
	
	---fail
	return (0)
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertEmployee]    Script Date: 05/16/2012 03:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_InsertEmployee]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		GroupProject`
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SP_InsertEmployee] 
	-- Add the parameters for the stored procedure here
	@strEmpType varchar (20),
	@strEmpFname varchar (20),
	@strEmpGender varchar (1),
	@strEmpAddr1 varchar (20),
	@strEmpAddr2 varchar  (20),
	@strEmpAddr3 varchar (20),
	@strEmpPhone_Num varchar (13),
	@strEmpYoe float,
	@strEmpEmail varchar (30)
	
	AS
   BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    

	
	IF NOT EXISTS (SELECT employee_id FROM employee WHERE employee_fname = @strEmpFname and 
				@strEmpEmail = employee_email)
	BEGIN
		INSERT INTO employee (employee_type, employee_fname, employee_gender,
		employee_street, employee_city,employee_parish, employee_phone, employee_yoe, employee_email) 
		values (@strEmpType, @strEmpFname,@strEmpGender,
		@strEmpAddr1, @strEmpAddr2, @strEmpAddr3, @strEmpPhone_Num, @strEmpYoe, @strEmpEmail)
		RETURN (1);
		END
	
	BEGIN
	RETURN (0);
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertComments]    Script Date: 05/16/2012 03:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_InsertComments]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		GroupProject`
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SP_InsertComments]
	-- Add the parameters for the stored procedure here
	@contactFullname varchar (60),
	@contactEmail varchar (30),
	@contactPhone_Num varchar (15),
	@contactRegs varchar (30),
	@contact_comments varchar  (600)
	
	
	
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here


	
	
	BEGIN
		INSERT INTO comments ( contact_name, contact_email, contact_phone, contact_regs, contact_comments)
			 values (@contactFullname, @contactEmail,@contactPhone_Num, @contactRegs, @contact_comments)
		RETURN (1);
		END
	
	BEGIN
	RETURN (0);
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertClient]    Script Date: 05/16/2012 03:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_InsertClient]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		GroupProject`
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SP_InsertClient]
	-- Add the parameters for the stored procedure here
	
	
	@clientFname varchar (20),
	@clientLname varchar (20),
	@clientGender varchar (1),
	@clientAddr1 varchar (20),
	@clientAddr2 varchar  (20),
	@clientAddr3 varchar (20),
	@clientPro	varchar (20),
	@clientPhone_Num varchar (13)
	
	
	
AS
BEGIN
		
	
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	--IF exists (Select client_id from [client] where client_id = @client_id)
 --   begin
    
    
 --   ---User exist
 --   return (2);
    
 --   end;
 

 
 
		
   
    
    INSERT INTO 
    [client] ( client_fname,client_lname,client_gender,client_street,
	client_city, client_parish, client_profession,client_phone)
	
	values 
	(   @clientFname, @clientLname, 
	 @clientGender, @clientAddr1,@clientAddr2, 
	 @clientAddr3, @clientPro, @clientPhone_Num)
	 	 
	 --sucess
	 RETURN (1);
		END
		
	--fail
	BEGIN
	RETURN (0);
	END
' 
END
GO
/****** Object:  Table [dbo].[schedule]    Script Date: 05/16/2012 03:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[schedule]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[schedule](
	[schedule_id] [int] IDENTITY(3000,1) NOT NULL,
	[employee_id] [int] NOT NULL,
	[sch_date] [date] NOT NULL,
	[8:00 am] [bit] NOT NULL,
	[9:00 am] [bit] NOT NULL,
	[10:00 am] [bit] NOT NULL,
	[11:00 am] [bit] NOT NULL,
	[12:00 pm] [bit] NOT NULL,
	[1:00 pm] [bit] NOT NULL,
	[2:00 pm] [bit] NOT NULL,
	[3:00 pm] [bit] NOT NULL,
	[4:00 pm] [bit] NOT NULL,
	[5:00 pm] [bit] NOT NULL,
 CONSTRAINT [PK_schedule1] PRIMARY KEY CLUSTERED 
(
	[schedule_id] ASC,
	[employee_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[client]    Script Date: 05/16/2012 03:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[client]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[client](
	[client_id] [int] IDENTITY(1000,1) NOT NULL,
	[client_LoginID] [int] NOT NULL,
	[client_fname] [varchar](20) NOT NULL,
	[client_lname] [varchar](20) NOT NULL,
	[client_gender] [varchar](1) NOT NULL,
	[client_street] [varchar](20) NOT NULL,
	[client_city] [varchar](20) NOT NULL,
	[client_parish] [varchar](20) NOT NULL,
	[client_profession] [varchar](20) NOT NULL,
	[client_phone] [varchar](13) NOT NULL,
 CONSTRAINT [PK_client] PRIMARY KEY CLUSTERED 
(
	[client_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateEmployee]    Script Date: 05/16/2012 03:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_UpdateEmployee]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		GroupProject`
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SP_UpdateEmployee] 
	-- Add the parameters for the stored procedure here
	@empid int = 0,
	@strEmpEditType varchar (20),
	@strEmpEditFname varchar (20),
	@strEmpEditGender varchar (1),
	@strEmpEditAddr1 varchar (20),
	@strEmpEditAddr2 varchar  (20),
	@strEmpEditAddr3 varchar (20),
	@strEmpEditPhone_Num varchar (13),
	@strEmpEditYoe float,
	@strEmpEditEmail varchar (30)
	
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
 
	
	IF exists (SELECT employee_id FROM [employee] WHERE [employee_fname] = @strEmpEditFname
	and employee_id<>@empid) 
			
			
			
	begin		
		--data already exists
		return(2);
	end
	else
	if not exists (SELECT employee_id FROM [employee] WHERE employee_id=@empid)
	
		BEGIN
			return(0);
		END 
	else
		BEGIN
			Update [employee] SET employee_type = @strEmpEditType, employee_fname = @strEmpEditFname, 
							employee_gender = @strEmpEditGender,  employee_street=@strEmpEditAddr1,
							employee_city=@strEmpEditAddr2,employee_parish=@strEmpEditAddr3,
							employee_phone=@strEmpEditPhone_Num,employee_yoe=@strEmpEditYoe, 
							employee_email = @strEmpEditEmail WHERE employee_id=@empid;
							--success true
							return(1);
		END
		
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SelectEmployee]    Script Date: 05/16/2012 03:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_SelectEmployee]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		GroupProject`
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SP_SelectEmployee]
	-- Add the parameters for the stored procedure here
	@EmpType varchar (20)
	
		
AS
BEGIN

-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SELECT employee_id, employee_fname FROM [employee] 
				WHERE (employee_type=@EmpType)


END
' 
END
GO
/****** Object:  Table [dbo].[UserValidate]    Script Date: 05/16/2012 03:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserValidate]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserValidate](
	[LoginID] [int] NOT NULL,
	[codeValidate] [varchar](10) NOT NULL,
	[dateValidate] [datetime] NOT NULL,
 CONSTRAINT [PK_UserValidate] PRIMARY KEY CLUSTERED 
(
	[LoginID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_ConfirmEmailShowAllFields]    Script Date: 05/16/2012 03:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_ConfirmEmailShowAllFields]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		MarcoMack
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SP_ConfirmEmailShowAllFields] 
-- Add the parameters for the stored procedure here
	@iUserID int = 0,
    @strCodeValidateUser varchar (10),
    @strResult varchar (253) out, --return LoginName, LoginEmail,LoginEnable,LoginDenied
    @RecDateTime datetime out   --return LoginDate
    

AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF exists (Select LoginID from [UserValidate] where LoginID = @iUserID
    and codeValidate = @strCodeValidateUser )
    begin
    
    
    ---success
    
    update [UserLogin] set LoginEnable = 1 Where LoginID = @iUserID
    
    delete [UserValidate] where LoginID = @iUserID
    
    
    SET @strResult = (SELECT TOP 1 [LoginName] +  '','' +[LoginEmail]
												+  '',''  + CAST ([LoginEnable] AS VARCHAR(1))
												+  '',''  + CAST ([LoginDenied] AS VARCHAR (1))
												
												FROM [UserLogin] WHERE LoginID=@iUserID);
												
	SET @RecDateTime = (SELECT [LoginDate]
	FROM [Salon].[dbo].[UserLogin] where LoginID=@iUserID);

    
    --success
    return (1)
    end
		else 
           
       begin
    
   --fail 
   return(0)
    
    end
   
   
    
  return (0)  
 END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ConfirmEmail]    Script Date: 05/16/2012 03:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_ConfirmEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		GroupProject`
-- Create date: 
-- Description:	
-- =============================================

CREATE Proc [dbo].[SP_ConfirmEmail]
-- Add the parameters for the stored procedure here
	@iUserID int = 0,
    @strCodeValidateUser varchar (10)
    
	
	
AS
BEGIN






	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF exists (Select LoginID from [UserValidate] where LoginID = @iUserID
    and codeValidate = @strCodeValidateUser )
    begin
    
    
    ---success
    
    update [UserLogin] set LoginEnable = 1 Where LoginID = @iUserID
    
    delete [UserValidate] where LoginID = @iUserID
    
    --success
    return (1)
    end
		else 
           
       begin
    
   --fail 
   return(0)
    
    end
   
   
    
  return (0)  
 END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertUserLogin]    Script Date: 05/16/2012 03:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_InsertUserLogin]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		GroupProject`
-- Create date: 
-- Description:	
-- =============================================

CREATE Proc [dbo].[SP_InsertUserLogin]
-- Add the parameters for the stored procedure here
	@LoginUname varchar (50),
	@LoginPwd varchar (30),
	@LoginEmail varchar (200),
    @LoginEnable smallint = 0,
    @LoginDenied smallint = 0,
    @strCodeValidateUser varchar (10),
    @iIdUser int OUTPUT
	
	
AS
BEGIN

	DECLARE @dtDate datetime;
	DECLARE @strPassWordMD5 varchar (32)
	DECLARE @Ciphertext varbinary (32)
	




	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF exists (Select LoginID from [UserLogin] where LoginName = @LoginUname )
    begin
    
    
    ---User exist
    return (2);
    
    end;
           
     IF exists (Select LoginID from [UserLogin] where LoginEmail = @LoginEmail   )
    begin
    
    
    ---Email exist
    return (3);
    
    end; 
   
    else
    begin
    
    --Take Date Time from server GETDATE() 2012-05-04 5:59
    SET @dtDate = GETDATE();
    
    --MD5
    SET @Ciphertext = HashBytes (''MD5'', @LoginPwd)
    SET @strPassWordMD5 = CONVERT (VARCHAR(32),@Ciphertext,2)
    
    INSERT INTO 
    [UserLogin] (LoginName, LoginPassword,
     LoginEmail,LoginEnable,
	 LoginDenied,LoginDate)
	
	values 
	(@LoginUname, @strPassWordMD5, 
	 @LoginEmail,  @LoginEnable, 
	 @LoginDenied, @dtDate)
	 
	 
		SET @iIdUser = (Select LoginID from [UserLogin] 
		Where LoginName = @LoginUname  and LoginEmail = @LoginEmail)
		
		INSERT INTO [UserValidate]
		(LoginID,
		codeValidate,
		dateValidate)
		
		Values
		(@iIdUser,@strCodeValidateUser,@dtDate)
		
		insert into [client]
		
		(client_LoginID)
		
		Values(@iIdUser)
		
			
		
			 
	 
	 --Success
	 return (1)
    
    end
    
    
    --fail
    
    return(0);
    
    
    
 END
' 
END
GO
/****** Object:  Table [dbo].[appointment]    Script Date: 05/16/2012 03:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[appointment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[appointment](
	[app_id] [int] NOT NULL,
	[client_id] [int] NULL,
	[app_day] [datetime] NULL,
	[notes_requests] [varchar](600) NULL,
	[visited_status] [varchar](1) NULL,
	[app_status] [varchar](1) NULL,
 CONSTRAINT [PK_appointment] PRIMARY KEY CLUSTERED 
(
	[app_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertAppointment]    Script Date: 05/16/2012 03:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_InsertAppointment]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		GroupProject`
-- Create date: 
-- Description:	
-- =============================================

CREATE Proc [dbo].[SP_InsertAppointment]
-- Add the parameters for the stored procedure here
	@schId int = 0,
	@empId int = 0,
	@LoginID int = 0,
	@appDate datetime,
	@timeOne time(7),
	@timeTwo time (7),
	@timeThree time(7),
    @notesRequest  varchar (600),
    @app_status varchar (1),
    @serviceType varchar (20),
    @priceTotal money,
    @visitedStatus varchar (1)
  
   
	
	
AS
BEGIN

	

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

    
     
	SET @schId = (Select schedule_id from [schedule]
	Where employee_id = @empId)
	
	SET @empId = (SELECT[employee_id]
	FROM [Salon].[dbo].[schedule] where schedule_id =@schId)
	
	SET @LoginID = (SELECT [LoginID] 
	FROM [Salon].[dbo].[UserLogin])
	
	
    
    
    
    INSERT INTO 
    [appointment] ( app_day, app_time1,
     app_time2,app_time3,
	 notes_requests,visited_status,app_status)
	
	values 
	(@appDate, @timeOne,@timeTwo,@timeThree, 
	 @notesRequest, @visitedStatus, @app_status) 
	
	 		
		
    INSERT INTO [service]
		
	(service_type,price)
		
	Values
	(@serviceType,@priceTotal)
		
		
		
			
		
			 
	 
	   --sucess
	    RETURN (1);
		END
    
     
    
       --fail
	  BEGIN
	  RETURN (0);
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteEmployee]    Script Date: 05/16/2012 03:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DeleteEmployee]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		dbGroupProject
-- Create date: 4/13/2012
-- Description:	insert values in edu_start db
-- =============================================
CREATE PROCEDURE [dbo].[SP_DeleteEmployee] 
	-- Add the parameters for the stored procedure here
	@strEmp_id int=0
	--@strC_Name varchar(20), 
	--@strC_description varchar(60)
		
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	if not exists ( SELECT  employee_id from [employee] where employee_id = @strEmp_id)
	BEGIN 
	RETURN (0);
	END
	ELSE
		BEGIN
		DELETE FROM [employee] WHERE employee_id = @strEmp_id;
		DELETE FROM [appointment] WHERE  employee_id = @strEmp_id;
		DELETE FROM [schedule] WHERE	employee_id = @strEmp_id;
		DELETE FROM [skills]	WHERE employee_id = @strEmp_id;
		
			
			return (1);
    END

		
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CheckEmployee]    Script Date: 05/16/2012 03:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_CheckEmployee]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		GroupProject`
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SP_CheckEmployee]
	-- Add the parameters for the stored procedure here
	/*@EmpID int, (schedule.employee_id = @EmpID) AND */
	@SchDate date,
	@EmpType varchar(20)


AS
BEGIN

SELECT  schedule.employee_id, schedule.sch_date, schedule.[8:00 am], schedule.[9:00 am], schedule.[10:00 am], 
	   schedule.[11:00 am], schedule.[12:00 pm], schedule.[1:00 pm], schedule.[2:00 pm], 
	   schedule.[3:00 pm], schedule.[4:00 pm], schedule.[5:00 pm], employee.employee_fname 
FROM [schedule] INNER JOIN [employee] 
ON schedule.employee_id = employee.employee_id 
WHERE (schedule.sch_date = @SchDate AND employee.employee_type = @EmpType)

END
' 
END
GO
/****** Object:  Table [dbo].[appointment_services]    Script Date: 05/16/2012 03:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[appointment_services]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[appointment_services](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[app_id] [int] NULL,
	[service_id] [int] NULL,
 CONSTRAINT [PK_appointment_services] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[appointment_emp]    Script Date: 05/16/2012 03:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[appointment_emp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[appointment_emp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[app_id] [int] NOT NULL,
	[app_time] [datetime] NULL,
	[emp_id] [int] NULL,
	[schedule_id] [int] NULL,
 CONSTRAINT [PK_appointment_emp] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  ForeignKey [FK_skills_employee]    Script Date: 05/16/2012 03:05:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_skills_employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[skills]'))
ALTER TABLE [dbo].[skills]  WITH CHECK ADD  CONSTRAINT [FK_skills_employee] FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([employee_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_skills_employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[skills]'))
ALTER TABLE [dbo].[skills] CHECK CONSTRAINT [FK_skills_employee]
GO
/****** Object:  ForeignKey [FK_skills_service]    Script Date: 05/16/2012 03:05:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_skills_service]') AND parent_object_id = OBJECT_ID(N'[dbo].[skills]'))
ALTER TABLE [dbo].[skills]  WITH CHECK ADD  CONSTRAINT [FK_skills_service] FOREIGN KEY([service_id])
REFERENCES [dbo].[service] ([service_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_skills_service]') AND parent_object_id = OBJECT_ID(N'[dbo].[skills]'))
ALTER TABLE [dbo].[skills] CHECK CONSTRAINT [FK_skills_service]
GO
/****** Object:  ForeignKey [FK_schedule_employee]    Script Date: 05/16/2012 03:05:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_schedule_employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[schedule]'))
ALTER TABLE [dbo].[schedule]  WITH CHECK ADD  CONSTRAINT [FK_schedule_employee] FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([employee_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_schedule_employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[schedule]'))
ALTER TABLE [dbo].[schedule] CHECK CONSTRAINT [FK_schedule_employee]
GO
/****** Object:  ForeignKey [FK_client_UserLogin]    Script Date: 05/16/2012 03:05:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_client_UserLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[client]'))
ALTER TABLE [dbo].[client]  WITH CHECK ADD  CONSTRAINT [FK_client_UserLogin] FOREIGN KEY([client_LoginID])
REFERENCES [dbo].[UserLogin] ([LoginID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_client_UserLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[client]'))
ALTER TABLE [dbo].[client] CHECK CONSTRAINT [FK_client_UserLogin]
GO
/****** Object:  ForeignKey [FK_UserValidate_UserLogin]    Script Date: 05/16/2012 03:05:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserValidate_UserLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserValidate]'))
ALTER TABLE [dbo].[UserValidate]  WITH CHECK ADD  CONSTRAINT [FK_UserValidate_UserLogin] FOREIGN KEY([LoginID])
REFERENCES [dbo].[UserLogin] ([LoginID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserValidate_UserLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserValidate]'))
ALTER TABLE [dbo].[UserValidate] CHECK CONSTRAINT [FK_UserValidate_UserLogin]
GO
/****** Object:  ForeignKey [FK_appointment_client]    Script Date: 05/16/2012 03:05:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_client]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment]'))
ALTER TABLE [dbo].[appointment]  WITH CHECK ADD  CONSTRAINT [FK_appointment_client] FOREIGN KEY([client_id])
REFERENCES [dbo].[client] ([client_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_client]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment]'))
ALTER TABLE [dbo].[appointment] CHECK CONSTRAINT [FK_appointment_client]
GO
/****** Object:  ForeignKey [FK_appointment_services_appointment]    Script Date: 05/16/2012 03:05:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_services_appointment]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment_services]'))
ALTER TABLE [dbo].[appointment_services]  WITH CHECK ADD  CONSTRAINT [FK_appointment_services_appointment] FOREIGN KEY([app_id])
REFERENCES [dbo].[appointment] ([app_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_services_appointment]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment_services]'))
ALTER TABLE [dbo].[appointment_services] CHECK CONSTRAINT [FK_appointment_services_appointment]
GO
/****** Object:  ForeignKey [FK_appointment_services_service]    Script Date: 05/16/2012 03:05:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_services_service]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment_services]'))
ALTER TABLE [dbo].[appointment_services]  WITH CHECK ADD  CONSTRAINT [FK_appointment_services_service] FOREIGN KEY([service_id])
REFERENCES [dbo].[service] ([service_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_services_service]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment_services]'))
ALTER TABLE [dbo].[appointment_services] CHECK CONSTRAINT [FK_appointment_services_service]
GO
/****** Object:  ForeignKey [FK_appointment_emp_appointment_emp]    Script Date: 05/16/2012 03:05:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_emp_appointment_emp]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment_emp]'))
ALTER TABLE [dbo].[appointment_emp]  WITH CHECK ADD  CONSTRAINT [FK_appointment_emp_appointment_emp] FOREIGN KEY([app_id])
REFERENCES [dbo].[appointment] ([app_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_emp_appointment_emp]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment_emp]'))
ALTER TABLE [dbo].[appointment_emp] CHECK CONSTRAINT [FK_appointment_emp_appointment_emp]
GO
/****** Object:  ForeignKey [FK_appointment_emp_schedule]    Script Date: 05/16/2012 03:05:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_emp_schedule]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment_emp]'))
ALTER TABLE [dbo].[appointment_emp]  WITH CHECK ADD  CONSTRAINT [FK_appointment_emp_schedule] FOREIGN KEY([schedule_id], [emp_id])
REFERENCES [dbo].[schedule] ([schedule_id], [employee_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_emp_schedule]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment_emp]'))
ALTER TABLE [dbo].[appointment_emp] CHECK CONSTRAINT [FK_appointment_emp_schedule]
GO
