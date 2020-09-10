program konbilangan;
uses crt;

var
        i,j,z,u,y,x,n : integer;
        hasil,h : string;


begin
        write('Masukan Bilangan : ');
        readln(n);
        for i:=1 to 8 do
         begin
          z:=n div 2;
          x:=n mod 2;
          n:=z;
            if (x = 0) then
              h:='0';
            if (x = 1) then
              h:='1';
          hasil:=hasil + h;
         end;
         for u:=length(hasil) downto 1 do
           write(hasil[u]);
end.