function [r,c] = i_spy ( object_im, big_im, x )

% note that this implementation does not use variable "x"

Ro = size(object_im, 1); 
Co = size(object_im, 2); 

Rb = size(big_im, 1); 
Cb = size(big_im, 2); 


o_im = int16(object_im);
b_im = int16(big_im);

%%% @Author : Chaitanya Sri Krishna Lolla.
for i=1 : (Rb-Ro)
    for j=1:(Cb-Co)
        flag=-1;
        if(b_im(i,j,1) == o_im(1,1,1) )
            for p=1:Ro
                for q=1:Co
                    if( o_im(p,q,1) ~= b_im(p+i-1,q+j-1,1))
                        flag=0;
                        break;
                    end
                end
            end
            if(flag== -1)
                flag=1;
                r=i;c=j;
                return;
            end
        end
        
       if(flag==1)
            return;
        end 
    end
end
end

