with Ada.Text_IO;use Ada.Text_IO;
with Ada.Integer_Text_IO;use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;use Ada.Float_Text_IO;


procedure part5  is
    mass : Integer;
    height : Integer;
    bmi : Float;
begin
    
    Put("Enter your mass: ");
    Get(mass);
    New_Line(1);
    Put("Enter your height");
    Get(height);

    bmi := Float(mass)/Float(height*height);

    Put(bmi);

end part5;