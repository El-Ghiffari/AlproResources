program telor_penyu;

var
        penyu : integer;
        berat : integer ;
        umur : integer;
        telur : real;
        i : integer;
        n : integer;
        kelamin : string;
        pangkat : real;
        pangkat1 : real;
        telurtot : real;
        t : real;

begin
        write('Jumlah Penyu : ');
        readln(penyu);
        for i:=1 to penyu do
          begin
            writeln('Penyu ',i,'(Umur,Berat,Jenis Kelamin)');
            readln(umur);
            readln(berat);
            readln(kelamin);
            pangkat:=1+(berat/1000);
            pangkat1:=1;
             if (kelamin='betina') and (umur>=35) then
             begin
               for n:=1 to umur do
                 begin
                 pangkat1:=pangkat1*pangkat;
                 end;
                pangkat:=sqrt(pangkat1);
                telur:=(1/berat)*pangkat;
                writeln('Penyu ',i,' Menghasilkan telur sebanyak :',telur:0:0,' per tahun');
             end
             else
              writeln('Penyu ',i,' Tidak menghasilkan telur');
          telurtot:=telur+t;
          t:=telur;
          end;
          writeln('Total Telur adalah ',telurtot:0:0);
end.

