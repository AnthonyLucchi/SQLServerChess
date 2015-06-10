/*Creates a Geometry Board*/
IF OBJECT_ID('[dbo].[Board]') is not null
drop table [dbo].[Board]

CREATE TABLE [dbo].[Board] (
	[Position] GEOMETRY NOT NULL
	CONSTRAINT [CHK_BOARD_DOMAIN] CHECK (dbo.UDF_BoardConstraint (POSITION) = 1 ),
	[Moves] XML NULL

)
GO

