MODULE ArmSCII8ToUTF8;

IMPORT (*In := argsIn,*) Out := Console, encMapsArmSCII8ToUTF8, patternOster;

PROCEDURE showhelp;
BEGIN

Out.String("= ArmSCII-8 To UTF-8 ="); Out.Ln;
Out.String("  takes stream from stdin and replaces ArmSCII-8 single-byte characters with correspinding UTF-8 multi-byte characters"); Out.Ln;
Out.Ln;
Out.String("== usage example =="); Out.Ln;
Out.String("  cat test.txt | ArmSCII8ToUTF8 > test_utf-8.txt"); Out.Ln;
Out.Ln;
HALT(0);
END showhelp;



BEGIN
encMapsArmSCII8ToUTF8.initMap;
patternOster.Convert(encMapsArmSCII8ToUTF8.mapA8ToU8);

END ArmSCII8ToUTF8.

