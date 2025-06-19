program Hanoi;

procedure Step (source, target, temp, count : integer);
begin
  if count > 0 then
  begin
    Step (source, temp, target, count - 1);
    writeln (source, ' to ', target);
    Step (temp, target, source, count - 1);
  end;
end;

var
  n : integer;

begin
  write ('How high? ');
  read (n);
  Step (1, 3, 2, n);
end.
