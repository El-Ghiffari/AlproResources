program twitter;
uses crt;

var
        like : integer;
        ret : integer;
        fav : integer;
begin
        readln(like);
        readln(ret);
        readln(fav);
        if(like >= 500) and (ret>=300) and (fav>=800) then
         write('Very Popular tweet')
        else if (like>=100) and (like<500) and (ret>=100) and (ret<500) and (fav>=700) and (ret<800) then
          write('Popular tweet')
        else if (fav>=100) and (fav<700) then
          write('Favorite Tweet')
        else
          write('Ordinary Tweet');
end.