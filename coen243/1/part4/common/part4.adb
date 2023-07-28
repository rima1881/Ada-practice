with Ada.Text_IO;use Ada.Text_IO;
with Ada.Integer_Text_IO;use Ada.Integer_Text_IO;

procedure part4  is
    num : Integer;
    i : Integer := 2;
    prime : Boolean := True;
begin
    

    Put("Enter a number: ");
    Get(num);


    while i < num/2 and prime loop

        if num rem i = 0 then
            prime := False;
        end if;

    i := i + 1;

    end loop;

    if prime then
        Put("It is prime");
    else
        Put("It is not prime");
    end if;


end part4;