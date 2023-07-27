with Ada.Text_IO;use Ada.Text_IO;
with Ada.Integer_Text_IO;use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;use Ada.Float_Text_IO;

procedure part1 is
        num1 : Integer;
        num2 : Integer;
begin

    Put_Line("*****************************************");
    Put("enter a number: ");
    Get(num1);
    Put("enter another number :");
    Get(num2);
    Put_Line("*****************************************");
    New_Line(2);
    Put("Difference:");
    Put(num1 - num2);
    New_Line(1);
    Put("Product: ");
    Put(num1* num2);
    New_Line(1);
    Put("Division: ");
    Put(num1 / num2);
    New_Line(1);

    declare
        Average : Float;
    begin

        Average := Float(num1+num2)/2.00;
        Put("Average: ");
        Put(Average);
    end;



end part1;