program test;

var
        i,n,j,s,k : integer;
begin
        readln(n);
        for i := 1 to n do
        begin
                for j := i to n do
                begin
                        write(j);
                        s := n - i + 1;
                end;
                for k := 1 to (n-s) do
                        write(k);
                writeln;
        end
end.
