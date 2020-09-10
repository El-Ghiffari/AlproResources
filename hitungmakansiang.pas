PROGRAM HitungMakanSiang;

type dpeg = record
        nik,nama : string;
        harihadir : integer;
        uangmaksi : longint;
end;

type tpeg = array[1..30] of dpeg;

VAR
        tabpeg : tpeg;
        npeg,j : integer;

        procedure isidata(n:integer; var arrpeg:tpeg);
        var
                i : integer;
        begin
                i:=0;
                repeat
                        i:=i+1;
                        write('NIK : ');
                        readln(arrpeg[i].nik);
                        write('Nama : ');
                        readln(arrpeg[i].nama);
                        write('Hari Hadir : ');
                        readln(arrpeg[i].harihadir);
                until(i=n);
        end;

        procedure HitungUang(n:integer; var arrpeg:tpeg);
        var
                i:integer;
        begin
                for i:=1 to n do
                    arrpeg[i].uangmaksi:=arrpeg[i].harihadir*20000;
        end;


BEGIN
        write('Jumlah Pegawai : ');
        readln(npeg);
        isidata(npeg,tabpeg);
        HitungUang(npeg,tabpeg);
        j:=0;
        repeat
                j:=j+1;
                write(tabpeg[j].nik,' ',tabpeg[j].nama,' ',tabpeg[j].harihadir,' ',tabpeg[j].uangmaksi);
                writeln;
        until(j=npeg);
END.