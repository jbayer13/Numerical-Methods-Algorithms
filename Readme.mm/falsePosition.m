function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
    %falsePosition finds the root of a function using false position method

    ea=150;xR=xl;i=1;

    if nargin < 5||isempty(maxit)
    maxit=300;
    end
    if nargin < 4||isempty(es)
    es=0.000001;
    end

    if func(xl,varargin{:})*func(xu,varargin{:})>0
    error('lol')
    end
         while i<=maxit
            xpast=xR; 
            xR=xu-((func(xu,varargin{:})*(xl-xu))/(func(xl)-func(xu)));
            i=i+1; 
            
               if xR~=0
                 y=(xR-xpast)/xR;
                 ea=100*abs(y);
               end
            
               if func(xl,varargin{:})*func(xu,varargin{:})>0
                 xl=xR;
                 xu=xu;
               elseif func(xl,varargin{:})*func(xu,varargin{:})<0
                 xu=xR;
                 xl=xl;
              else ea=0      
               end
              if ea<=es
                break
              end
         end
   

root=xR
fx=func(xR)
iter=i
end

