PROGRAM TerbimbingSatu;

VAR
	operan1,operan2:integer;
	operasi:char;

	function jumlah(a:integer;b:integer):longint;
	{mengembalikan hasil penjumlahan a dan b}
	begin
		jumlah:= a + b;
	end;

	function kurang(a:integer;b:integer):longint;
	{mengembalikan hasil pengurangan a dan b}
	begin
		kurang:= a - b;
	end;

	function kali(a : integer;b : integer):longint;
	{mengembalikan hasil perkalian a dan b,
	 Petunjuk: hanya diperbolehkan menggunakan perulangan dan fungsi jumlah}
	var
	        tot,i : integer;
	begin
                i:=0;
                tot:=0;
		repeat
                        tot:=tot + a;
                        i:=i+1;
                until(i=b);
                kali:=tot;
	end;

	function bagi(a:integer;b:integer):real;
	{mengembalikan hasil perbagian a dan b}
	begin
		bagi:=a/b;
	end;

	function pangkat(a:integer;b:integer):longint;
	{mengembalikan hasil a pangkat b atau a^b
	 Petunjuk: hanya diperbolehkan menggunakan perulangan dan fungsi kali}
	var
		total,i : integer;
	begin
                total:=1;
                i:=0;
		repeat
                        total:=kali(total,a);
                        i:=i+1;
                until(i=b);
                pangkat:=total;
	end;

	function faktorial(a:integer):longint;
	{mengembalikan nilai faktorial dari n, atau n!.
	 Petunjuk: hanya diperbolehkan menggunakan fungsi kali untuk proses perkalian}
	var
		sum,i : integer;
	begin
                i:=1;
                sum:=1;
                repeat
                        sum:=kali(sum,kali(a,i));
                        a:=a-1;
                until(a=0);
                faktorial:=sum;

	end;

        function permutasi(a:integer;b:integer):real;
           {Terdefinisi bil bulat positif n dan r (asumsi n >= r), kemudian mengembalikan n
        permutasi r}
        begin
                permutasi:=bagi(faktorial(a),kurang(a,b));
        end;

        function kombinasi(a:integer;b:integer):real;
        {Terdefinisi bil bulat positif n dan r (asumsi n >= r), kemudian mengembalikan n
        kombinasi r}
        begin
                kombinasi:=bagi(faktorial(a),(kali(faktorial(b),faktorial(kurang(a,b)))));
        end;

        procedure moddiv(var n,r:integer;var hdiv,hmod:longint);
        {IS terdefinisi dua bil bulat positif n dan r. FS. hDiv menyimpasn hasil division
        dan hMod menyimpan hasil modulus}
        var
                h,x:integer;
        begin
             hdiv:=0;
             hmod:=n;
             repeat
                hmod:=hmod-r;
             until(hmod < r);
             x:=n;
             repeat
                h:=x-r;
                x:=h;
                hdiv:=hdiv+1;
             until(h < r);
        end;

	procedure inputBilangan(var bilangan:integer);
	{IS. -
	 proses: input bilangan dilakukan berulang-ulang sampai bilangan valid(positif integer)
	 FS. bilangan berisi bilangan bulat positif yang diinputkan user}
	begin
                repeat
                        write('Masukan Bilangan : ');
                        readln(bilangan);
                until(bilangan > 0);
	end;

	procedure inputOperator(var op : char);
	{IS. -
	 proses: input operasi dilakukan berulang-ulang sampai karakter valid (+,-,x,^,!)
	 FS. operasi berisi karakter valid(+,-,x,^,!) yang diinputkan user}
	begin
                repeat
                        write('Masukan Operator : ');
                        readln(op);
                until(op='+')or(op='-')or(op='x')or(op='^')or(op='!')or(op='/')or(op='c')or(op='p')or(op='%');
	end;

	procedure proses(bil1:integer; bil2:integer; op:char);
	{IS. terdefinisi bil1 dan bil2 yang berisi bilangan bulat dan operasi yang berisi simbol operasi (+,-,x,^,!)
        FS. Menampilkan hasil operasi dari bil1 dan bil2 sesuai simbol yang bersesuaian}
        var
                hasil1,hasil2 : longint;
	begin
		if (op = 'x') then begin
                        write(bil1,' x ',bil2,' = ',kali(bil1,bil2));
		end else if (op = '+') then begin
			write(bil1,' + ',bil2,' = ',jumlah(bil1,bil2));
		end else if (op = '-') then begin
			write(bil1,' - ',bil2,' = ',kurang(bil1,bil2));
		end else if (op = '^') then begin
			write(bil1,'^',bil2,' = ',pangkat(bil1,bil2));
		end else if (op = '!') then begin
			write('Faktorial ',bil1,'! = ',faktorial(bil1));
		end else if (op = '/') then begin
			write(bil1,' / ',bil2,' = ',bagi(bil1,bil2):0:2);
                end else if (op = '%') then begin
                        moddiv(bil1,bil2,hasil1,hasil2);
                        writeln(bil1,' div ',bil2,' = ',hasil1);
                        writeln(bil1,' mod ',bil2,' = ',hasil2);
                end else if (op = 'c') then begin
                        write('kombinasi(',bil1,bil2,') = ',kombinasi(bil1,bil2):0:2);
                end else if (op = 'p') then begin
                       write('permutasi(',bil1,bil2,') = ',permutasi(bil1,bil2):0:2);
		end;
	end;

BEGIN
	inputBilangan(operan1);
	inputBilangan(operan2);
	inputOperator(operasi);
	proses(operan1,operan2,operasi);
END.
