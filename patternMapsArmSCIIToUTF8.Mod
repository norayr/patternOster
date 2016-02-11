MODULE encMapsArmSCII8ToUTF8;

IMPORT hyalineTypes, mapActions;
CONST
  mapsize = 42;
VAR mapA8ToU8*: hyalineTypes.encMap;

PROCEDURE initMap*;
(* https://en.wikipedia.org/wiki/ArmSCII *)

BEGIN
  count := 0;
  NEW(mapA8ToU8, mapsize + 1);

  mapActions.clearIndex;
  mapActions.Add(mapA8ToU8, 0A1X, "֎"); (* D608, left facing eternity sign *)
  mapActions.Add(mapA8ToU8, 026X, "և");
  mapActions.Add(mapA8ToU8, 0A2X, "§");
  mapActions.Add(mapA8ToU8, 0A3X, "։");
  mapActions.Add(mapA8ToU8, 0A4X, ")");
  mapActions.Add(mapA8ToU8, 0A5X, "(");
  mapActions.Add(mapA8ToU8, 0A6X, "»");
  mapActions.Add(mapA8ToU8, 0A7X, "«");
  mapActions.Add(mapA8ToU8, 022X, "″");
  mapActions.Add(mapA8ToU8, 0A8X, "―");
  mapActions.Add(mapA8ToU8, 0A9X, "․");
  mapActions.Add(mapA8ToU8, 0AAX, "՝");
  mapActions.Add(mapA8ToU8, 0ABX, ",");
  mapActions.Add(mapA8ToU8, 0ACX, "‐");
  mapActions.Add(mapA8ToU8, 0ADX, "֊");
  mapActions.Add(mapA8ToU8, 0AEX, "…");
  mapActions.Add(mapA8ToU8, 0FEX, "՚");
  mapActions.Add(mapA8ToU8, 0AFX, "՜");
  mapActions.Add(mapA8ToU8, 0B0X, "՛");
  mapActions.Add(mapA8ToU8, 0B1X, "՞");
  mapActions.Add(mapA8ToU8, 0B2X, "Ա");
  mapActions.Add(mapA8ToU8, 0B4X, "Բ");
  mapActions.Add(mapA8ToU8, 0B6X, "Գ");
  mapActions.Add(mapA8ToU8, 0B8X, "Դ");
  mapActions.Add(mapA8ToU8, 0BAX, "Ե");
  mapActions.Add(mapA8ToU8, 0BCX, "Զ");
  mapActions.Add(mapA8ToU8, 0BEX, "Է");
  mapActions.Add(mapA8ToU8, 0C0X, "Ը");
  mapActions.Add(mapA8ToU8, 0C2X, "Թ");
  mapActions.Add(mapA8ToU8, 0C4X, "Ժ");
  mapActions.Add(mapA8ToU8, 0C6X, "Ի");
  mapActions.Add(mapA8ToU8, 0C8X, "Լ");
  mapActions.Add(mapA8ToU8, 0CAX, "Խ");
  mapActions.Add(mapA8ToU8, 0CCX, "Ծ");
  mapActions.Add(mapA8ToU8, 0CEX, "Կ");
  mapActions.Add(mapA8ToU8, 0D0X, "Հ");
  mapActions.Add(mapA8ToU8, 0D2X, "Ձ");
  mapActions.Add(mapA8ToU8, 0D4X, "Ղ");
  mapActions.Add(mapA8ToU8, 0D6X, "Ճ");
  mapActions.Add(mapA8ToU8, 0D8X, "Մ");
  mapActions.Add(mapA8ToU8, 0DAX, "Յ");
  mapActions.Add(mapA8ToU8, 0DCX, "Ն");
  mapActions.Add(mapA8ToU8, 0DEX, "Շ");
  mapActions.Add(mapA8ToU8, 0E0X, "Ո");
  mapActions.Add(mapA8ToU8, 0E2X, "Չ");
  mapActions.Add(mapA8ToU8, 0E4X, "Պ");
  mapActions.Add(mapA8ToU8, 0E6X, "Ջ");
  mapActions.Add(mapA8ToU8, 0E8X, "Ռ");
  mapActions.Add(mapA8ToU8, 0EAX, "Ս");
  mapActions.Add(mapA8ToU8, 0ECX, "Վ");
  mapActions.Add(mapA8ToU8, 0EEX, "Տ");
  mapActions.Add(mapA8ToU8, 0F0X, "Ր");
  mapActions.Add(mapA8ToU8, 0F2X, "Ց");
  mapActions.Add(mapA8ToU8, 0F4X, "Ւ");
  mapActions.Add(mapA8ToU8, 0F6X, "Փ");
  mapActions.Add(mapA8ToU8, 0F8X, "Ք");
  mapActions.Add(mapA8ToU8, 0FAX, "Օ");
  mapActions.Add(mapA8ToU8, 0FCX, "Ֆ");
  mapActions.Add(mapA8ToU8, 0B3X, "ա");
  mapActions.Add(mapA8ToU8, 0B5X, "բ");
  mapActions.Add(mapA8ToU8, 0B7X, "գ");
  mapActions.Add(mapA8ToU8, 0B9X, "դ");
  mapActions.Add(mapA8ToU8, 0BBX, "ե");
  mapActions.Add(mapA8ToU8, 0BDX, "զ");
  mapActions.Add(mapA8ToU8, 0BFX, "է");
  mapActions.Add(mapA8ToU8, 0C1X, "ը");
  mapActions.Add(mapA8ToU8, 0C3X, "թ");
  mapActions.Add(mapA8ToU8, 0C5X, "ժ");
  mapActions.Add(mapA8ToU8, 0C7X, "ի");
  mapActions.Add(mapA8ToU8, 0C9X, "լ");
  mapActions.Add(mapA8ToU8, 0CBX, "խ");
  mapActions.Add(mapA8ToU8, 0CDX, "ծ");
  mapActions.Add(mapA8ToU8, 0CFX, "կ");
  mapActions.Add(mapA8ToU8, 0D1X, "հ");
  mapActions.Add(mapA8ToU8, 0D3X, "ձ");
  mapActions.Add(mapA8ToU8, 0D5X, "ղ");
  mapActions.Add(mapA8ToU8, 0D7X, "ճ");
  mapActions.Add(mapA8ToU8, 0D9X, "մ");
  mapActions.Add(mapA8ToU8, 0DBX, "յ");
  mapActions.Add(mapA8ToU8, 0DDX, "ն");
  mapActions.Add(mapA8ToU8, 0DFX, "շ");
  mapActions.Add(mapA8ToU8, 0E1X, "ո");
  mapActions.Add(mapA8ToU8, 0E3X, "չ");
  mapActions.Add(mapA8ToU8, 0E5X, "պ");
  mapActions.Add(mapA8ToU8, 0E7X, "ջ");
  mapActions.Add(mapA8ToU8, 0E9X, "ռ");
  mapActions.Add(mapA8ToU8, 0EBX, "ս");
  mapActions.Add(mapA8ToU8, 0EDX, "վ");
  mapActions.Add(mapA8ToU8, 0EFX, "տ");
  mapActions.Add(mapA8ToU8, 0F1X, "ր");
  mapActions.Add(mapA8ToU8, 0F3X, "ց");
  mapActions.Add(mapA8ToU8, 0F5X, "ւ");
  mapActions.Add(mapA8ToU8, 0F7X, "փ");
  mapActions.Add(mapA8ToU8, 0F9X, "ք");
  mapActions.Add(mapA8ToU8, 0FBX, "օ");
  mapActions.Add(mapA8ToU8, 0FDX, "ֆ");

END initMap;

END encMapsArmSCII8ToUTF8.
