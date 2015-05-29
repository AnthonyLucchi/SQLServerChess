/*Creates a Geometry Board*/

If OBJECT_ID('[dbo].[Board]') is not null
drop table [dbo].[Board]

CREATE TABLE [dbo].[Board] (
	[Position] GEOMETRY NOT NULL
	
)
GO

