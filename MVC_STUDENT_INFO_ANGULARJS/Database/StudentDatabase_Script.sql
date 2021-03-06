CREATE DATABASE StudentDatabase

USE [StudentDatabase]

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Class] [nvarchar](50) NULL,
	[Age] [int] NULL,
	[PresentAddress] [nvarchar](150) NULL,
	[PermanentAddress] [nvarchar](150) NULL,
	[Attendance] [bit] NULL,
 CONSTRAINT [PK_Employe] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteStudent](
@StudentID INT
)
AS
DELETE FROM Student WHERE StudentID = @StudentID
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertStudent](
@Name NVARCHAR(50), 
@Class NVARCHAR(50),
@Age INT,
@PresentAddress NVARCHAR(150),
@PermanentAddress NVARCHAR(150),
@Attendance BIT 
)
AS
INSERT INTO Student(Name, Class, Age, PresentAddress, PermanentAddress, Attendance) VALUES(@Name, @Class, @Age, @PresentAddress, @PermanentAddress, @Attendance)
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectStudent]
AS
SELECT * FROM Student
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateStudent](
@StudentID INT,
@Name NVARCHAR(50), 
@Class NVARCHAR(50),
@Age INT,
@PresentAddress NVARCHAR(50),
@PermanentAddress NVARCHAR(50),
@Attendance BIT
)
AS
UPDATE Student SET Name=@Name, Class=@Class, Age=@Age, PresentAddress=@PresentAddress, PermanentAddress=@PermanentAddress, Attendance = @Attendance
WHERE StudentID = @StudentID
GO


