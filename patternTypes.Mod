MODULE patternTypes;
(** 
This module describes types that will be used from other modules.
I have to import module SYSTEM in order to use BYTE type.
**)

IMPORT SYSTEM;
(** let's alias SYSTEM.BYTE as char **)
TYPE char* = CHAR(*SYSTEM.BYTE*);

(** this is regular Oberon string. **)
string* = POINTER TO ARRAY OF CHAR;

(** we need not necessarily null terminated byte array **)
pattern* = POINTER TO ARRAY OF char; 
(** actually array of CHAR would also work here, I just want to distinctively make patterns different from Oberon string. **)

(** pattern pair for future array which will describe mappings. it's fields could be named {from, to}, or {src, dst}, or {first, second}, does not matter. **)
patternPair* = RECORD
  a, b: pattern;
END;

(** this will describe mappings - from/to patterns **)
patternMap* = POINTER TO ARRAY OF patternPair;

(** this can be used for faster conversion, if the source encoding is single-byte. thus it's index will serve as the source byte value **)
patternMapSingleByte* = POINTER TO ARRAY OF pattern; 

END patternTypes.
