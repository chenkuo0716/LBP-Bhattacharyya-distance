function Hist=hist(im_lpb)

[r,c]=size(im_lpb);
Hist=zeros(1,256);

for i=1:r
    for j=1:c
        Hist(1,im_lpb(i,j)+1)=Hist(1,im_lpb(i,j)+1)+1;
    end
end

Hist=Hist/sum(Hist);

end