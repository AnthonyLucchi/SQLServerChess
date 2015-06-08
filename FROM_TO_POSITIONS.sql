--select * from board

/* All possible movement position*/
SELECT b1.position.STX AS FromX, b1.position.STY AS FromY, 
 b2.position.STX AS ToX, b2.position.STY AS ToY
FROM board b1 CROSS JOIN board b2
WHERE b2.Position.STEquals(b1.Position) = 0
Order By Fromx, FromY, ToX, ToY


