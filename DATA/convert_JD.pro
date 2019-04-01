data=get_data('monthly_NAO_NOAA_CPC_PCbased.dat')
yy=reform(data(0,*))
mm=reform(data(1,*))
nao=reform(data(2,*))
jd=julday(mm,15,yy,12,12,12.0d0)
openw,44,'JD_NAO.dat'
for i=0L,n_elements(jd)-1,1 do begin
print,mm(i),yy(i),jd(i)
caldat,jd(i),a,b,c,d,e,f
print,a,b,c,d,e,f
printf,44,jd(i),nao(i),format='(f15.7,1x,f9.3)'
endfor
close,44
print,'Done!'
end
