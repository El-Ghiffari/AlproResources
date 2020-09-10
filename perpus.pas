program pengunjung_terbesar;
uses crt;

var
        har,harbes,harseb,n : integer;

begin
        repeat
          write('Masukan jumlah pengunjung harian : ');
          harseb:=har;
          readln(har);
          if (har < 0) then
            har:=0;
          if (har > 1000) then
            har:=1000;
          n:=n+1;
          if(harbes < har) then
            harbes:=har;
          until (harseb=0) and (har=1000) and (n>1);
          writeln('Pengunjung terbanyak : ',harbes,' Hari ke-',n);
end.
