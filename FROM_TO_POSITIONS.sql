--select * from board

/* All possible movement position*/
Create View ALLMOVES
as
SELECT b1.position.STX AS FromX, b1.position.STY AS FromY, 
 b2.position.STX AS ToX, b2.position.STY AS ToY
FROM board b1 CROSS JOIN board b2
WHERE b2.Position.STEquals(b1.Position) = 0 and
b2.Position.STX = 1 and b2.Position.STY = 1


