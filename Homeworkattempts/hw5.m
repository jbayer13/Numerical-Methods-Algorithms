% It is recomended to first create the matrxix A of the correct size, filling it with zeros to start with is not a bad choice
A = zeros(n,m);
z=1;
for x=1:n 
    if x==1
        A(x,1)=1;
    else 
        A(x,1)=x;
        
     for y=1:m  
         if y==1
            A(1,y)=y;
         else
            A(1,y)=y;  
            
            for z=2:m;
                A(x,z)=A(z,z-1)+A(z-1,z)
            end
          end
        end
     end
     % z=z+1; 
% Now the real challenge is to fill in the correct values of A


end
% Things beyond here are outside of your function