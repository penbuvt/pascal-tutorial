program FileIO;

var
  FileIn, FileOut: text;
  A, B, C, D: integer;

begin
  assign(FileIn, 'in.txt');
  reset(FileIn);
  assign(FileOut, 'out.txt');
  rewrite(FileOut);

  read(FileIn, A, B, C, D);
  writeln (FileOut, 'A = ', A);
  writeln (FileOut, 'B = ', B);
  writeln (FileOut, 'C = ', C);
  writeln (FileOut, 'D = ', D);

  close(FileIn);
  close(FileOut);
end.
