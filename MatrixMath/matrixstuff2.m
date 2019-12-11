
clc;clear;
A=[1 2 3; 4 5 6; 7 8 9]

[q,w]=size(A);
L=eye(w)
P=eye(w)
U=A
if q~=w
    error('Enter a Square Matrix')
end


for i=1:q-1
    [x,y]=max(abs(U(i:q,i)));
    
    f=U(y+i-1,:);
    U(y+i-1,:)=U(i,:);
    U(i,:)=f;
    
  % U([i,i:q], i:q)=U([i:q,i],i:q) 
  % L([i,i:q], 1:i-1)=L([i:q,i],1:i-1)
  % P([i,i:q], :)=P([i:q,i],:)
    for z=i+1:q
        L(z,i)=U(z,i)/U(i,i)
        U(z,i:q)=U(z,i:q)-(L(z,i)*U(i,i:q))
       
    end
    
    i=i+1;
end

        

