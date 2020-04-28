function Score=bhat(Hist, Hist1)

Weight=sum(sqrt(Hist.*Hist1));
Score = -log(Weight);

end