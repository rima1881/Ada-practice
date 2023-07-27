with Ada.Text_IO;use Ada.Text_IO;
with Ada.Integer_Text_IO;use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;use Ada.Float_Text_IO;

procedure part2 is

    income :Integer;
    tax :Integer;
    net_income :Float;

begin
    
    Put("Please enter your income: ");
    Get(income);

    if income > 110000 then
        tax := 45;
    elsif income > 90000 then
        tax := 35;
    elsif income > 70000 then
        tax := 25;
    elsif income > 40000 then
        tax := 15;
    else
        tax := 5;
    end if;

    Put("your tax percentage is: ");
    Put(tax);

    New_Line(2);
    Put("your net income will be: ");
    net_income := Float(income * (100-tax)) / 100.00 ;
    Put(net_income);


end part2;