print("Hello World!");

R = ZZ/2[x,y];
f = x^2+y^2;
I = ideal(f);
print("Remainder of x^2 mod I is");
print(f % I);


