/* Check to ensure the board isn't outside a 8 x 8 grid.*/
IF OBJECT_ID(N'dbo.UDF_BoardConstraint', N'IF') IS NOT NULL
DROP FUNCTION dbo.UDF_BoardConstraint;

GO

CREATE FUNCTION dbo.UDF_BoardConstraint (@POS GEOMETRY)
RETURNS INT
AS
BEGIN 
			RETURN (SELECT CASE
				WHEN @POS.STY < 1 or @POS.STY > 8 THEN 0
				WHEN @POS.STX < 1 or @POS.STX > 8 THEN 0
				ELSE 1
				END) 
END;