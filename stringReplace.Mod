MODULE stringReplace;
IMPORT Strings;
TYPE string = ARRAY 1024 OF CHAR;


PROCEDURE StringReplace(VAR S, OldPattern, NewPattern, Result: ARRAY OF CHAR;  replaceAll: BOOLEAN);
VAR
  Srch,OldP,RemS, tmp: string; 
  P : INTEGER;
BEGIN
  COPY(S, Srch);
  COPY(OldPattern, OldP);
  COPY(S, RemS);
  COPY("", Result);
  WHILE (Strings.Length(Srch)#0) DO
    P:=Strings.Pos(OldP, Srch, 0);
    (*Result:=Result+Copy(RemS,1,P-1)+NewPattern;*)
    Strings.Extract(RemS, 0, P, tmp);
    Strings.Append(tmp, Result);
    Strings.Append(NewPattern, Result);
    P:=P+Strings.Length(OldP);
    (*RemS:=Copy(RemS,P,Length(RemS)-P+1);*)
    Strings.Extract(RemS, P, Strings.Length(RemS)-P+1, RemS);
    IF ~replaceAll THEN
      (*Result:=Result+RemS;*)
      Strings.Append(RemS, Result);
      COPY("", Srch);
    ELSE
      (*Srch:=Copy(Srch,P,Length(Srch)-P+1);*)
      Strings.Extract(Srch, P, Strings.Length(Srch)-P+1, Srch);
    END;
  END;
END StringReplace;

PROCEDURE test;
VAR
  sin, sout, opatt, npatt: ARRAY 32 OF CHAR;
BEGIN
  COPY("ccc bbb ccc", sin);
  COPY("ccc", opatt);
  COPY("aaa", npatt);
  COPY("", sout);
  StringReplace(sin, opatt, npatt, sout, TRUE);
END test;

BEGIN

test;


END stringReplace.
