CREATE FUNCTION udf_Rook_Moves
(
	@CurrentPosition Geometry
)
RETURNS TABLE
AS
RETURN
(
SELECT Position.STX as ToX, Position.STY as ToY FROM BOARD
WHERE (Position.STX = @CurrentPosition.STX AND NOT Position.STY = @CurrentPosition.STY)
OR (Position.STY = @CurrentPosition.STY AND NOT Position.STX = @CurrentPosition.STX)
)