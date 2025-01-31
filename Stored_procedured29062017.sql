USE [CYD_NEWS_DB]
GO
/****** Object:  StoredProcedure [dbo].[sp_ad_Contact_Select_By_ID_Array]    Script Date: 6/29/2017 4:36:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ad_Contact_Select_By_ID_Array]
	@IDArr VARCHAR(2000)
AS
BEGIN
	DECLARE @Table AS TABLE (ID INT)
	DECLARE @individual varchar(20) = null
	WHILE LEN(@IDArr) > 0
	BEGIN
		IF PATINDEX('%|%', @IDArr) > 0
		BEGIN
			SET @individual = SUBSTRING(@IDArr, 0, PATINDEX('%|%', @IDArr))
			INSERT INTO @Table(ID) VALUES(@individual)
			SET @IDArr = SUBSTRING(@IDArr, LEN(@individual + '|') + 1, LEN(@IDArr))
		END
		ELSE
		BEGIN
			SET @individual = @IDArr
			SET @IDArr = NULL
			INSERT INTO @Table(ID) VALUES(@individual)
		END
	END
	SELECT c.ContactID, c.ContactName, c.Email, c.Phone, c.Subject, c.Description,
		CONVERT(VARCHAR(10), c.CreatedDate, 101) AS 'CreatedDate'
	FROM tblContacts AS c
	WHERE c.ContactID IN (SELECT t.ID FROM @Table AS t)
END


GO
/****** Object:  StoredProcedure [dbo].[sp_ad_Contact_Update_Discontinued_By_ID_Array]    Script Date: 6/29/2017 4:36:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ad_Contact_Update_Discontinued_By_ID_Array]
	@IDArr VARCHAR(2000)
AS
BEGIN
	DECLARE @Table AS TABLE (ID INT)
	DECLARE @individual varchar(20) = null
	WHILE LEN(@IDArr) > 0
	BEGIN
		IF PATINDEX('%|%', @IDArr) > 0
		BEGIN
			SET @individual = SUBSTRING(@IDArr, 0, PATINDEX('%|%', @IDArr))
			INSERT INTO @Table(ID) VALUES(@individual)
			SET @IDArr = SUBSTRING(@IDArr, LEN(@individual + '|') + 1, LEN(@IDArr))
		END
		ELSE
		BEGIN
			SET @individual = @IDArr
			SET @IDArr = NULL
			INSERT INTO @Table(ID) VALUES(@individual)
		END
	END
	UPDATE tblContacts SET Discontinued = 'True' WHERE ContactID IN (SELECT t.ID FROM @Table AS t)
END
GO
