25 10 * 50 + CR .
 300 ok

 : FLOOR5 ( n -- n' )   DUP 6 < IF DROP 5 ELSE 1 - THEN ;
 
int floor5(int v) {
  return (v < 6) ? 5 : (v - 1);
}

: FLOOR5 ( n -- n' ) 1- 5 MAX ;

1 FLOOR5 CR .
 5 ok
 8 FLOOR5 CR .
 7 ok

 : X DUP 1+ . . ;

 ... DUP 6 < IF DROP 5 ELSE 1 - THEN ...

  ... DUP LIT 6 < ?BRANCH 5  DROP LIT 5  BRANCH 3  LIT 1 - ...

   : HELLO  ( -- )  CR ." Hello, World!" ;

   
 
