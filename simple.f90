program transpose
    integer m,n
    dimension a(10,10),b(10,10)
    write(*,*)"The order of matrix is"
    read(*,*)m,n 
    write(*,*)"The elements are first row then column"
    do i=1,m 
        read(*,*)(a(i,j),j=1,n)
    end do
    do i=1,m 
      do  j=1,n 
        b(i,j)=a(j,i)
         end do
    end do
    write(*,*)"The transposed matrix is"
 do i=1,n 
    write(*,*)(b(i,j),j=1,m)
 end do
 stop
end program
