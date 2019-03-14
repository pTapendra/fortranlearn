program read
integer,allocatable,dimension(:)::a,b
integer n,i,j,t
write(*,*)"Numbers to read"
read(*,*)n 
allocate(a(n),b(n))
write(*,*)"Enter the numbers"
read(*,*)(b(i),i=1,n)
do i=1,n
a(i)=b(i)
end do
do i=1,n 
do j=i,n 
if(a(i)>a(j)) then
t=a(j)
a(j)=a(i)
a(i)=t
end if
end do
end do
write(*,*)"The numbers in order are"
write(*,*)" "
write(*,*)(a(i),i=1,10)
write(*,*)" "
end program
