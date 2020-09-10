Program TargetKapital;

var
        sb : real;
        x : real;
        uang : real;
        bunga : real;
        i : integer;

begin
        write('Masukan Suku Bunga anda = ');
        readln(sb);
        write('Masukan Target anda = ');
        readln(x);
        uang:=1000000;
        repeat
        begin
                bunga:=uang*sb;
                uang:=uang+bunga;
                i:= i+1;
        end;
        until (uang > (1000000*x));
        writeln('Pada Tahun ke ', i , ' uang akan mencapai target ', x:0:1 , ' Kali', ', yaitu Rp', uang:0:2);
end.
