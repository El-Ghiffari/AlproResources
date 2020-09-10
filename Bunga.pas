program bungatahunan;

var
        sb : real;
        tahun : integer;
        uang : integer;
        i : integer;
        bunga: integer;

begin
        write('Masukan Suku Bunga anda = ');
        readln(sb);
        write('Masukan Periode tabungan anda = ');
        readln(tahun);
        uang:= 1000000;
        for i := 1 to tahun do
        begin
               bunga:uang*sb;
               uang:=uang+bunga;
               writeln('Uang pada tahun ke', i , 'Rp',uang, 'Dengan bunga Rp',bunga);
        end;
end.
