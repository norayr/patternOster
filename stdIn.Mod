MODULE stdIn;
IMPORT SYSTEM;

VAR Done*: BOOLEAN;
 char, int, lint, real, lreal, string: ARRAY 3 OF CHAR;

PROCEDURE -scanf((*VAR*) fmt: ARRAY [1] OF CHAR; VAR x: ARRAY [1] OF SYSTEM.BYTE): INTEGER
  "scanf(fmt, x)";

PROCEDURE Open*;
BEGIN Done := TRUE;
END Open;

PROCEDURE Char*(VAR ch: CHAR);
BEGIN IF scanf(char, ch) # 1 THEN Done := FALSE END
END Char;

PROCEDURE Int*(VAR i: INTEGER);
BEGIN IF scanf(int, i) # 1 THEN Done := FALSE END
END Int;

PROCEDURE LongInt*(VAR i: LONGINT);
BEGIN IF scanf(lint, i) # 1 THEN Done := FALSE END
END LongInt;

PROCEDURE Real*(VAR x: REAL);
BEGIN IF scanf(real, x) # 1 THEN Done := FALSE END
END Real;

PROCEDURE LongReal*(VAR y: LONGREAL);
BEGIN IF scanf(lreal, y) # 1 THEN Done := FALSE END
END LongReal;

PROCEDURE Name*(VAR name: ARRAY OF CHAR);
  VAR temp: ARRAY 4096 OF CHAR;
BEGIN IF scanf(string, temp) # 1 THEN Done := FALSE ELSE COPY(temp, name) END
END Name;

PROCEDURE String*(VAR str: ARRAY OF CHAR);
  VAR temp: ARRAY 4096 OF CHAR;
BEGIN IF scanf(string, temp)# 1 THEN Done := FALSE ELSE COPY(temp, str) END
END String;

BEGIN 
Done := FALSE;
COPY("%c", char); COPY("%hd", int); COPY("%d", lint); COPY("%f", real);
COPY("%lf", lreal); COPY("%s", string);
END stdIn.
