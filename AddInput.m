function a = AddInput()
a = zeros(4,4);
disp('Add all entries in hexadecimal numbers as ''xxxxxxxx''');
b(1,1:8)=input("Enter 1st Row: ");
b(2,1:8)=input("Enter 2nd Row: ");
b(3,1:8)=input("Enter 3rd Row: ");
b(4,1:8)=input("Enter 4th Row: ");
for i = 1:4
    for j = 2:2:8
 a(i,j/2)=hex2dec(b(i,j-1:j));
    end
end
end