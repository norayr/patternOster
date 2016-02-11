MODULE patternOster;

IMPORT Out := Console, stdin, patternTypes, patterns;

PROCEDURE feelbuf(VAR str: patternTypes.pattern);
VAR
  i, j, k, l: LONGINT;
  ch : CHAR;
BEGIN
 l := 0; i := 0;
 k := LEN(str^);
 REPEAT
   l := stdin.read(ch);
   str^[i] := ch;
   INC(i);
 UNTIL (l # 1) OR (i = k);
 IF l # 1 THEN 
   j := i-1;
   REPEAT
   str^[j] := 0X;
   INC(j)
   UNTIL j = k;
 END
END feelbuf;

PROCEDURE WriteLn(VAR str : patternTypes.pattern; last: LONGINT);
VAR
  i : INTEGER;
  k : LONGINT;
BEGIN
  i := 0;
  k := patterns.Length(str);
  IF i < k THEN
    REPEAT
      Out.Char(str^[i]);
	  INC(i)
    UNTIL (i = last) OR (i = k)
  END
END WriteLn;

PROCEDURE replace*(VAR old, new: patternTypes.pattern);
VAR
  ch: CHAR;
  l:  LONGINT;
  oldlen : LONGINT;
  buf : patternTypes.pattern;
  res : patterns.CompareResults;
BEGIN
   oldlen := patterns.Length(old);
   NEW(buf, oldlen);
   feelbuf(buf);
   l := 1;
   REPEAT
	 res := patterns.Compare(buf, old);
	 IF res = patterns.equal THEN
	   (*Out.String("equal"); Out.Ln*)
	   WriteLn(new, patterns.Length(new));
	   feelbuf(buf);
	 ELSE
	   (*Out.String("not equal"); Out.Ln*)
	   Out.Char(buf^[0]);
	   patterns.ShiftLeft(buf); 
	   l := stdin.read(ch);
	   IF l = 1 THEN
		 buf^[oldlen-1] := ch;
	   END;
	 END;
   UNTIL l # 1; 
   WriteLn(buf, oldlen-1);
   (*Out.Char(0AX);*)
   (*Out.Flush;*)
END replace;

PROCEDURE Convert*(VAR map: patternTypes.pattern);
VAR
  i : INTEGER;
BEGIN
  i := 0;
  REPEAT
    
  UNTIL i = LEN(map^);
END Convert;

END patternOster.
