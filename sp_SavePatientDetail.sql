USE [HealthCareMainDB]
GO

/****** Object:  StoredProcedure [dbo].[sp_SavePatientDetail]    Script Date: 9/23/2018 8:23:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_SavePatientDetail]
	-- Add the parameters for the stored procedure here
	@pi_FirstName varchar(50),
	@pi_SurName varchar(50),
	@pi_Gender varchar(10),
	@pi_DOB date,
	@pi_HomePhone varchar(20),
	@pi_MobilePhone varchar(20),
	@pi_WorkPhone varchar(20)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO tblPatient VALUES (@pi_FirstName, @pi_SurName, @pi_Gender, @pi_DOB, GETDATE(), GETDATE())

	DECLARE @patientId int = SCOPE_IDENTITY();
	
	INSERT INTO tblTelephone VALUES (@pi_WorkPhone, 1, @patientId, GETDATE(), GETDATE())
	INSERT INTO tblTelephone VALUES (@pi_HomePhone, 2, @patientId, GETDATE(), GETDATE())
	INSERT INTO tblTelephone VALUES (@pi_MobilePhone, 3, @patientId, GETDATE(), GETDATE())

	SELECT @@ROWCOUNT

END

GO


