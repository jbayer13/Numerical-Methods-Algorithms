clear; clc;

A = [2, -6, -1; 
    -3, -1, 7;
    -8, 1, -2];

[q,w]=size(A);
if q~=w
    error('Enter a Square Matrix')
else
end

AA=abs(A);
[x,y]=max(AA(:,1));

if y==1 
    if AA(2,1)>AA(3,1)
     P=[1 0 0; 0 1 0; 0 0 1];   
    elseif AA(2,1)<AA(3,1)
     P=[1 0 0; 0 0 1; 0 1 0];
    end
elseif y==2
    if AA(1,1)>AA(3,1)
     P=[0 1 0; 1 0 0; 0 0 1];  
    elseif AA(1,1)<AA(3,1)
     P=[0 0 1; 1 0 0; 0 1 0];
    end
elseif y==3
    if AA(1,1)>AA(2,1)
     P=[0 1 0; 0 0 1; 1 0 0];  
    elseif AA(1,1)<AA(2,1)
     P=[0 0 1; 0 1 0; 1 0 0];
    end
end

A=P*A;
p=A(2,1)/A(1,1);
m=A(1,:).*p;
A2=A(2,:)-m;


pp=A(3,1)/A(1,1);
mm=A(1,:).*pp;
A3=A(3,:)-mm;

A=[A(1,:);A2;A3];

AA=abs(A);

if AA(2:2)>AA(3,2);
    P=[1 0 0; 0 1 0; 0 0 1]
    
    A=P*A;

    ppp=A(3,2)/A(2,2);
    mmm=A(2,:).*ppp;
    A4=A(3,:)-mmm;

    U=[A(1,:);A3;A4]
    L=[1 0 0; p 1 0; pp ppp 1]
elseif AA(2:2)<AA(3,2)
    P=[1 0 0; 0 0 1; 0 1 0]
    A=P*A;

    ppp=A(3,2)/A(2,2);
    mmm=A(2,:).*ppp;
    A4=A(3,:)-mmm;

    U=[A(1,:);A3;A4]
    L=[1 0 0; pp 1 0; p ppp 1]
end

