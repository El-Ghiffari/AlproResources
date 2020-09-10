program KenaikanPengunjungTerbesar;
uses crt;

var hariseb , Har, y, ymax, n : integer;


begin
 writeln('Masukan data kunjungan harian: ');
 repeat
  if((Har - hariSeb) > y) and (n > 1) then
    begin
      y := (Har - hariSeb);
      ymax := n;
    end;
  n := n + 1;


  hariseb := Har;
  readln(Har);

  if (Har > 1000) then
    Har :=  1000;
  if (Har < 0) then
    Har := 0;
 until (hariseb = 0) and (Har = 1000) and (n > 1);
writeln('kenaikan terbesar adalah: ', y, ' pada hari ke-', ymax);
readln;
end.
