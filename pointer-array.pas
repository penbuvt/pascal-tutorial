program tempcopy;

{$IFDEF FPC}
  {$mode Delphi}
{$ENDIF}

uses SysUtils;

type
  PointerAddress = NativeUInt;

var
  pIntArr: Pointer;
  IntArr: Array of Integer;
  
procedure ArrayLoop(const AArr: Array of Integer);
var
  i: Integer;
begin
  pIntArr := @AArr;
  writeln('Argument: ', PointerAddress(pIntArr)); // <-- same memory address as Item 1
  pIntArr := @i;
  writeln('Local loop variable: ', PointerAddress(pIntArr)); // <-- local temporary variable i
  for i in AArr do
  begin
    pIntArr := @i;
    writeln('Loop variable: ', PointerAddress(pIntArr)); // <-- local temporary variable i
  end;
end;
  
begin
  // allow 3 items in the array
  SetLength(IntArr, 3);

  pIntArr := @pIntArr;
  writeln('global pIntArr address: ', PointerAddress(pIntArr));

  // IntArr is separate variable that points to first element
  pIntArr := @IntArr;
  writeln('global IntArr address: ', PointerAddress(pIntArr));
  pIntArr := @IntArr;
  writeln('IntArr points to: ', PointerAddress(pIntArr^));

  // addresses of the single items
  pIntArr := @IntArr[0];
  writeln('Item 1: ', PointerAddress(pIntArr)); // <-- memory address of the first item
  pIntArr := @IntArr[1];
  writeln('Item 2: ', PointerAddress(pIntArr));
  pIntArr := @IntArr[2];
  writeln('Item 3: ', PointerAddress(pIntArr));

  writeln('array loop');
  ArrayLoop(IntArr);
end.

