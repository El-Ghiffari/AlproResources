program newton_raphson;
uses crt;

var
        fx : real;
        gx : real;
        m : real;
        x : real;
        e : real;
        x1 : real;
        xh : integer;
        iterasi : integer;
        i : integer;

begin
        write('Masukan Nilai yang akan dicari akarnya : ');
        readln(xh);
        writeln('Masukan Iterasi : ');
        readln(iterasi);
        x:=xh;
        for i:=1 to iterasi do
        begin
          fx:=x*x-xh;
          gx:=2*x;
          x1:=x-(fx/gx);
          x:=x1;
        end;
        writeln('Akar dari ',xh,' adalah',x1);
        readln;
end.

