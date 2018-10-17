function SRows = ShiftRows(PText)
SRows=PText;
for i=2:4
    if(i==2)
        for j=1:4
            if(j==4)
                SRows(i,j)=PText(i,j-3);
            else
                SRows(i,j)=PText(i,j+1);
            end
        end
    end
    if(i==3)
        for j=1:4
            if((j==3)||(j==4))
                SRows(i,j)=PText(i,j-2);
            else
                SRows(i,j)=PText(i,j+2);
            end
        end
    end
    if(i==4)
        for j=1:4
            if((j==2)||(j==3)||(j==4))
                SRows(i,j)=PText(i,j-1);
            else
                SRows(i,j)=PText(i,j+3);
            end
        end
    end
end
end
