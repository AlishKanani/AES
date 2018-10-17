function MCOut = MixColumns(PText)
MCOut=zeros(4,4);
MC=[2 3 1 1;1 2 3 1;1 1 2 3;3 1 1 2];
for i=1:4
    for j=1:4
temp1=MadC(MC(i,1),PText(1,j));
temp2=MadC(MC(i,2),PText(2,j));
temp3=MadC(MC(i,3),PText(3,j));
temp4=MadC(MC(i,4),PText(4,j));
temp1=bitxor(temp1,temp2);
temp1=bitxor(temp1,temp3);
temp1=bitxor(temp1,temp4);
MCOut(i,j)=temp1;
    end
end
end
