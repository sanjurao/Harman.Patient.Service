USE [HealthCareMainDB]
GO

/****** Object:  StoredProcedure [dbo].[sp_GetAllPatients]    Script Date: 9/23/2018 8:23:03 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetAllPatients]
	-- Add the parameters for the stored procedure here	
AS
BEGIN
		SELECT DISTINCT tp.PatientId, tp.FirstName, tp.SurName, tp.Gender, tp.DOB
		FROM tblPatient tp 
		inner join tblTelephone ttp on tp.PatientId = ttp.PatientId


		SELECT tp.PatientId, ttp.Number, tcd.Code
		FROM tblPatient tp 
		inner join tblTelephone ttp on tp.PatientId = ttp.PatientId
		left outer join tblCodeDesc tcd on tcd.CodeTableId = ttp.CodeTableId
		ORDER BY tp.PatientId

END

GO


