program pencariprima;
uses crt;

var
        i,n,x,j,y : integer;


begin
        write('Masukan Batas : ');
        readln(n);
        for i:=1 to n do
         begin
          y:=0;
          for j:=1 to i do
            begin
              x:= i mod j;
              if (x = 0) then
                y:=y+1;
            end;
          if (y = 2) then
            write(i);
         end;
end.
