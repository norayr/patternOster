MODULE mapActions;

IMPORT patternTypes, patterns;

VAR index : INTEGER;

PROCEDURE Add*(VAR map: patternTypes.patternMap; inchar: CHAR; instring : ARRAY OF CHAR);
VAR
  emi : patternTypes.patternPair;
BEGIN

  patterns.StringToPattern(instring, emi.b);

  NEW(emi.a, 1);
  emi.a^[0] := inchar;
  
  map^[index] := emi;
  INC(index)
END Add;


PROCEDURE AddI*(VAR map: patternTypes.patternMap; index0: LONGINT; inchar: CHAR; instring : ARRAY OF CHAR);
VAR
  emi : patternTypes.patternPair;
BEGIN

  patterns.StringToPattern(instring, emi.b);

  NEW(emi.a, 1);
  emi.a^[0] := inchar;
  
  map^[index0] := emi;

END AddI;

PROCEDURE AddA*(VAR map: patternTypes.patternMap; in, out : patternTypes.pattern);
VAR
  emi : patternTypes.patternPair;
BEGIN
  COPY(in^, emi.a^);
  COPY(out^, emi.b^);
  map^[index] := emi;
  INC(index)
END AddA;

PROCEDURE AddAI*(VAR map: patternTypes.patternMap; i : INTEGER; in, out : patternTypes.pattern);
VAR
  emi : patternTypes.patternPair;
BEGIN
  COPY(in^, emi.a^);
  COPY(out^, emi.b^);
  map^[i] := emi;
END AddAI;

PROCEDURE clearIndex*;

BEGIN
  index := 0;
END clearIndex;

PROCEDURE getPatternMaxLength*(VAR map: patternTypes.patternMap): LONGINT;
VAR
  i, j, k : LONGINT;
  emi: patternTypes.patternPair;
BEGIN
  i := 0; j := 0; k := 0;
  REPEAT
    emi := map[i];
	j := LEN(emi.a^);
    IF j > k THEN k := j END;
    INC(i)
  UNTIL i = LEN(map^);
  RETURN k
END getPatternMaxLength;

BEGIN

clearIndex;

END mapActions.
