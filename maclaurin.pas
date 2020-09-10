PROGRAM MacLaurin;
uses crt;

VAR
        hasil,temp,total : real;
        x,seru,temp1,temp2 : real;
        i,n : integer;

        function kali(a,b:real):real;
        begin
                kali:=a*b;
        end;
        function pangkat(a:real;b:real):real;
	var
		sum,i :real;
	begin
                sum:=1;
                i:=0;
		repeat
                        sum:=kali(sum,a);
                        i:=i+1;
                until(i=b);
                pangkat:=sum;
	end;

        function faktorial(a:real):real;
	var
		sum,i :real;
	begin
                i:=1;
                sum:=1;
                repeat
                        sum:=kali(sum,kali(a,i));
                        a:=a-1;
                until(a=0);
                faktorial:=sum;

	end;
BEGIN
        write('Masukan bilangan : ');
        readln(x);
        write('Jumlah Iterasi : ');
        readln(n);
        writeln(pangkat(x,n));
        total:=0;

        for i:=1 to n do
          begin
            seru:=2*i;
            temp1:=pangkat(-1,i);
            temp2:=pangkat(x,seru);
            temp:=((temp1*temp2)/faktorial(seru));
            total:=total+temp;
          end;
          hasil:=total+1;

        writeln('Hasilnya adalah : ',hasil:0:5);
END.
