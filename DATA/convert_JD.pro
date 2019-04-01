data=get_data('monthly_NAO_NOAA_CPC_PCbased.dat')
;openw,44,'JD_NAO_CPC.dat'
data=get_data('Hurrell_monthly_NAO.dat')
openw,44,'JD_NAO_Hurrell.dat'
yy=reform(data(0,*))
mm=reform(data(1,*))
nao=reform(data(2,*))
jd=julday(mm,15,yy,12,12,12.0d0)
for i=0L,n_elements(jd)-1,1 do begin
print,mm(i),yy(i),jd(i)
caldat,jd(i),a,b,c,d,e,f
print,a,b,c,d,e,f
printf,44,jd(i),nao(i),format='(f15.7,1x,f9.3)'
endfor
close,44
print,'Done!'
end
