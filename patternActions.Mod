MODULE patternActions;

IMPORT patternTypes, patterns;

VAR index : INTEGER;

PROCEDURE Add*(VAR map: patternTypes.patternMap; inchar: CHAR; instring : ARRAY OF CHAR);
VAR
  emi : hyalineTypes.patternPair;
BEGIN

  patterns.StringToPattern(instring, emi.dst);

  NEW(emi.src, 1);
  emi.src^[0] := inchar;
  
  map^[index] := emi;
  INC(index)
END Add;


PROCEDURE AddI*(VAR map: hyalineTypes.encMap; index0: LONGINT; inchar: CHAR; instring : ARRAY OF CHAR);
VAR
  emi : hyalineTypes.encMapItem;
BEGIN

  chararrays.StringToCharArr(instring, emi.dst);

  NEW(emi.src, 1);
  emi.src^[0] := inchar;
  
  map^[index0] := emi;

END AddI;

PROCEDURE AddA*(VAR map: hyalineTypes.encMap; in, out : hyalineTypes.chararr);
VAR
  emi : hyalineTypes.encMapItem;
BEGIN
  COPY(in, emi.src^);
  COPY(out, emi.dst^);
  map^[index] := emi;
  INC(index)
END AddA;

PROCEDURE AddAI*(VAR map: hyalineTypes.encMap; i : INTEGER in, out : hyalineTypes.chararr);
VAR
  emi : hyalineTypes.encMapItem;
BEGIN
  COPY(in, emi.src^);
  COPY(out, emi.dst^);
  map^[i] := emi;
END AddAI;

PROCEDURE clearIndex*;

BEGIN
  index := 0;
END clearIndex;

BEGIN

clearIndex;

END patternActions.
