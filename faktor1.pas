program faktor;

var
        i : integer;
        n : integer;
        h : integer;
        x : integer;
        y : integer;

begin
        write('Bilangan : ');
        read(n);
        x:=1;
        for i:=1 to n do
          begin
            h:=n mod x;
            x:=x+1;
            if (h = 0) then
              y:=y+1;
          end;
        writeln('Banyak Faktor Pembagi : ', y);
          if (y > 2) then
            writeln(n, ' Adalah Bukan Prima')
          else
            writeln(n, ' Adalah Prima');
end.