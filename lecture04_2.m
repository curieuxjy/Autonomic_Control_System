% root locus table(22-23page)
k=0:5:15;
for ii=1:length(k)
    p=[1 6 11 6 k(ii)];
    rp(:,ii)=roots(p);
end

plot(real(rp(1,:)), imag(rp(1,:)), 'go',...
     real(rp(2,:)), imag(rp(2,:)), 'mo',...
     real(rp(3,:)), imag(rp(3,:)), 'bd',...
     real(rp(4,:)), imag(rp(4,:)), 'rd')
axis equal