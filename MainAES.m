disp('Add Plain Text');
PText = AddInput();
disp('Add Key');
global Key;
Key = AddInput();

RoundOut = AddRoundKey(PText , RoundKey(0));
for i = 1:9
RoundOut = AddRoundKey(MixColumns(ShiftRows(SubBytes(RoundOut))) , RoundKey(i));
end
RoundOut = AddRoundKey(ShiftRows(SubBytes(RoundOut)) , RoundKey(10));
disp(dec2hex(RoundOut));