function R = AddRoundKey(PText , RKey)
R=bitxor(PText,RKey);
end
