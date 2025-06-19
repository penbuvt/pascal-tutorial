program Overrun;

type
  TStr = packed array [0..5] of char;

var
  str: TStr;

begin
  str[0] := '0';
  str[6] := '6';
  writeln (str);
end.

