CREATE TABLE [dbo].[Marks](
	[MarkID] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[StudentID] [int] NULL,
	[SubjectID] [int] NULL,
	[TeacherID] [int] NULL,
	[MarkObtained] [int] NULL,
	[ExamDate] [date] NULL
);
	
ALTER TABLE Marks  WITH CHECK ADD  CONSTRAINT FK_Student FOREIGN KEY(StudentID)
REFERENCES Students (StudentID);

ALTER TABLE Marks  WITH CHECK ADD  CONSTRAINT FK_Subjec FOREIGN KEY(SubjectID)
REFERENCES Subjects (SubjectID);

ALTER TABLE Marks  WITH CHECK ADD  CONSTRAINT FK_Teacher FOREIGN KEY(TeacherID)
REFERENCES Teachers (TeacherID);

