program Constants;

type
  Complex =
    record
      R,I: real;
    end;
  Month = (January, February);

const
  Name = 'Penbu';
  FirstLetter = 'a';
  Year = 2025;
  pi = 3.14159265;
  UsingNCSAMosaic = FALSE;
  a : real = 12;
  C1: Complex = (R:3; I:1783.5);
  LetterCount = 26;
  Alphabet: array [1..LetterCount] of char =
    ('A','B','C','D','E','F','G','H','I',
     'J','K','L','M','N','O','P','Q','R',
     'S','T','U','V','W','X','Y','Z'   );
  C2: complex = (R: 96, I: 1.62);
  C_Low = 1;
  C_High = 5;
  C: array [C_Low .. C_High] of complex = (
    (R: 3, I: 1783.6),
    (R: 96, I: 1.62)
    (R: 102.1, I: Pi)
  );

var
  X, Y: integer;

begin
  writeln ('Hello, world.');
end.
