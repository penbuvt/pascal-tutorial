program SumAverageInput;

const
  NumCount = 5;

var
  A, B, C, D, E: integer;
  Sum: integer;
  Average: real;
  FileOut: text;

begin
  read(A, B, C, D, E);

  Sum := A + B + C + D + E;
  Average := Sum / NumCount;

  writeln ('Number of integers = ', NumCount);
  writeln ('Number1:', A:8);
  writeln ('Number2:', B:8);
  writeln ('Number3:', C:8);
  writeln ('Number4:', D:8);
  writeln ('Number5:', E:8);
  writeln ('================');
  writeln ('Sum:', Sum:12);
  writeln ('Average:', Average:10:1);

  assign (FileOut, 'sum-average.txt');
  rewrite (FileOut);
  writeln (FileOut, 'Number of integers = ', NumCount);
  writeln (FileOut, 'Number1:', A:8);
  writeln (FileOut, 'Number2:', B:8);
  writeln (FileOut, 'Number3:', C:8);
  writeln (FileOut, 'Number4:', D:8);
  writeln (FileOut, 'Number5:', E:8);
  writeln (FileOut, '================');
  writeln (FileOut, 'Sum:', Sum:12);
  writeln (FileOut, 'Average:', Average:10:1);

  close (FileOut);
end.
