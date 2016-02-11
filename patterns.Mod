MODULE patterns;
IMPORT Strings, patternTypes;
TYPE
  CompareResults* = SHORTINT;

CONST
  (* values returned by `Compare' *)
  less* = -1;
  equal* = 0;
  greater* = 1;

PROCEDURE Compare* (stringVal1, stringVal2: patternTypes.pattern): CompareResults;
  (* assumes that lengths of strings are equal *)
  VAR
    i: INTEGER;
	(*j, k: INTEGER;*)
  BEGIN
    i := 0;
    WHILE (i < LEN(stringVal1^)-1) & (stringVal1^[i] = stringVal2^[i]) DO
      INC (i)
    END;
	(*j := S.VAL(INTEGER, stringVal1^[i]);
	k := S.VAL(INTEGER, stringVal2^[i]);
    IF j < k THEN*)
    IF stringVal1^[i] < stringVal2^[i] THEN
      RETURN less
    (*ELSIF j > k THEN*)
	ELSIF stringVal1^[i] > stringVal2^[i] THEN
      RETURN greater
    ELSE
      RETURN equal
    END
  END Compare;

PROCEDURE Length*(VAR pat: patternTypes.pattern): LONGINT;
VAR
  i, maxlen : LONGINT;
BEGIN
  i := 0;
  maxlen := LEN(pat^);
  WHILE (i<maxlen) & (pat^[i]#0X) DO INC(i) END;
  RETURN i;
END Length;

PROCEDURE ShiftLeft*(VAR stringVal: patternTypes.pattern);
VAR
  i,k : LONGINT;
  BEGIN
    k := LEN(stringVal^);
	IF k > 1 THEN
	  i := 0;
	  REPEAT
		stringVal^[i] := stringVal^[i+1];
		INC(i);
	  UNTIL i = k-1
    END
  END ShiftLeft;

PROCEDURE StringToPattern*(src: ARRAY OF CHAR; VAR dst: patternTypes.pattern);
(* receives null terminated string, and creates an hyalineTypes.chararr (array of SYSTEM.BYTE) from it by stripping closing zero *)
VAR 
  i, j : INTEGER;
BEGIN
  i := Strings.Length(src);

  NEW(dst, i+1);
  j := 0;
  REPEAT
    dst^[j] := src[j];
	INC(j);
  UNTIL j = i;

END StringToPattern;

END patterns.
