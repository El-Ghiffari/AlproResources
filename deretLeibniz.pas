program deretLeibniz;
uses crt;

var
        Phi : real;
        xmax, i, n : integer;
begin
  write('Panjang deret: ');
  readln(xmax);
  n := 1;
  for i := 1 to xmax do begin
    if (i MOD 2 = 0) then
      Phi := Phi - (1/n)
    else
      Phi := Phi + (1/n);
    n := n + 2;
  end;

  writeln('Nilai PI adalah ', (Phi*4));
end.
