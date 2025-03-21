program SumAndAverage;

const
  NumCount = 5;
  Numbers: array [1 .. NumCount] of integer =
    (45, 7, 68, 2, 34);

var
  Sum: integer;
  Average: real;

begin
  writeln ('Number of integers = ', NumCount);

  writeln ('Number 1 = ', Numbers[1]);
  writeln ('Number 2 = ', Numbers[2]);
  writeln ('Number 3 = ', Numbers[3]);
  writeln ('Number 4 = ', Numbers[4]);
  writeln ('Number 5 = ', Numbers[5]);

  Sum := Numbers[1]
       + Numbers[2]
       + Numbers[3]
       + Numbers[4]
       + Numbers[5];
  writeln ('Sum = ', Sum);

  Average := Sum / NumCount;
  writeln ('Average = ', Average);
end.
