function Temp = MadC(a,b)
if a==1
    Temp=b;
elseif a==2
    if(b>=128)
        mad1=bitshift(b,1);
        mad1=bitxor(mad1,27);
    elseif(b<128)
        mad1=bitshift(b,1);
    end
    if(mad1>255)
        mad1=bitxor(mad1,256);
    end
    Temp=mad1;
elseif a==3
    if(b>=128)
        mad2=bitshift(b,1);
        mad2=bitxor(mad2,27);
    elseif(b<128)
        mad2=bitshift(b,1);
    end
    if(mad2>255)
        mad2=bitxor(mad2,256);
    end
    temp31=mad2;
    temp32=b;
    Temp=bitxor(temp31,temp32);
end
