/*Finds all moves along the same X and Y axis
Notes that you cannot move to the same position your in with this WHERE as a logical XOR*/
CREATE FUNCTION udf_Rook_Moves
(
	@CurrentPosition Geometry
)
RETURNS TABLE
AS
RETURN
(
SELECT Position.STX as ToX, Position.STY as ToY FROM Chess.dbo.BOARD
WHERE (Position.STX = @CurrentPosition.STX AND NOT Position.STY = @CurrentPosition.STY)
OR (Position.STY = @CurrentPosition.STY AND NOT Position.STX = @CurrentPosition.STX)
)



/*
TESTING ROOK MOVES
This should return all places with that x column, all places with that y column.
This should exclude the current position
SELECT * FROM udf_Rook_Moves(geometry::STPointFromText('POINT (1 8)', 0))
*/