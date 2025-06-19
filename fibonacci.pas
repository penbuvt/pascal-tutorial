program Fibonacci;

const
  n: integer = 12;
var
  a, b, c, i: integer;

begin
  a := 0;
  b := 1;

  for i := 1 to n do
  begin
    writeln (b);
    c := a + b;
    a := b;
    b := c;
  end;
end.
