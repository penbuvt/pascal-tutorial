program Power2;

const
  Limit = 20000;

var
  n: integer;
  count: integer;

begin
  n := 1;
  count := 0;

  while (n < Limit) and (n >= 0) do
  begin
    if count > 0 then
    begin
      write (',');
      if count mod 5 = 0 then
        writeln ('')
      else
        write (' ');
    end;

    write (n);
    count := count + 1;
    n := n * 2;
  end;
end.
