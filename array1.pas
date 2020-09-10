program satu;

var
        tabangka : array[1..20] of string;
        i,j,n : integer;
        w:string;

begin
        readln(n);
        for i:=1 to n do
          readln(tabangka[i]);
        for j:=1 to n do
          begin
            w := tabangka[j];
            if ('u' = w[1]) or ('a' = w[1]) or ('i' = w[1]) or ('e' = w[1]) or ('o' = w[1]) then
              write(tabangka[j],' ');
          end;
end.
