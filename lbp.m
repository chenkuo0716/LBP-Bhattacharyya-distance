function Hist=lbp(I,r,c)

Img=zeros(r,c);
for i=2:r-1

    for j=2:c-1
        a=[];
        
        % Checking with the 8 nieghbours
        % N-W
        if(I(i,j)>I(i-1,j-1))
            a=[a 0];
        else
            a=[a 1];
        end
        % N
        if(I(i,j)>I(i-1,j))
            a=[a 0];
        else
            a=[a 1];
        end

        % N-E 
        if(I(i,j)>I(i-1,j+1))
            a=[a 0];
        else
            a=[a 1];
        end

        %E
        if(I(i,j)>I(i,j+1))
            a=[a 0];
        else
            a=[a 1];
        end


        % S-E
        if(I(i,j)>I(i+1,j+1))
            a=[a 0];
        else
            a=[a 1];
        end

        % S
        if(I(i,j)>I(i+1,j))
            a=[a 0];
        else
            a=[a 1];
        end

        % S-W
        if(I(i,j)>I(i+1,j-1))
            a=[a 0];
        else
            a=[a 1];
        end

        % W
        if(I(i,j)>I(i,j-1))
            a=[a 0];
        else
            a=[a 1];
        end

        b=0;
        dec=8;

        % Changing into decimal
        for k=0:7
            b=a(dec)*(2^k)+b;
            dec=dec-1;
        end

        Img(i,j)=b;
    end
end

Hist=hist(Img);  % Getting histogram

end