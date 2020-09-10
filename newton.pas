program newton_raphson;
uses crt;

var
        fx : real;
        gx : real;
        m : real;
        x : real;
        e : real;
        x1 : real;
        xh : real;

begin
        write('Masukan Nilai yang akan dicari akarnya : ');
        readln(xh);
        e:=0.00000001;
        x:=xh;
        repeat
          begin
            fx:=x*x-xh;
            gx:=2*x;
            x1:=x-(fx/gx);
            m:=abs(x1-x);
            x:=x1;
         end;
        until (m < e);
        writeln('Akar dari ',xh:0:2,' adalah',x1);
        readln;
end.
