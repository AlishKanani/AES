function SOut = SubBytes(PText)
SOut=zeros(4,4);
for i=1:4
    for j=1:4
        temp = PText(i,j);
        start4 = bitshift(temp,-4)+1;
        end4 = bitand(15,temp)+1;
        SOut(i,j) = SBox(start4,end4);
    end
end
end
