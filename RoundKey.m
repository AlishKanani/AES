function ROut = RoundKey(Round)
global Key;
KMat = zeros(4,44);
KMat(1:4,1:4)=Key;

for i = 2:11
    KMat(1:4,4*i-3)=bitxor(f(4*i-4),KMat(1:4,4*i-7));
    KMat(1:4,4*i-2)=bitxor(KMat(1:4,4*i-3),KMat(1:4,4*i-6));
    KMat(1:4,4*i-1)=bitxor(KMat(1:4,4*i-2),KMat(1:4,4*i-5));
    KMat(1:4,4*i)=bitxor(KMat(1:4,4*i-1),KMat(1:4,4*i-4));
end
function Col4 = f(k)
RCon = [1 2 4 8 16 32 64 128 27 54];
Col4 = [KMat(2,k);KMat(3,k);KMat(4,k);KMat(1,k)];
for j = 1:4
    temp = Col4(j);
    start4 = bitshift(temp,-4)+1;
    end4 = bitand(15,temp)+1;
    Col4(j) = SBox(start4,end4);
end
Col4(1) =  bitxor(Col4(1),RCon(k/4));
end
for r = 1:11
if Round==r-1
    ROut=KMat(1:4,r*4-3:r*4);
end
end
end