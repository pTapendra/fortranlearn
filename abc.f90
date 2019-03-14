program matrix
integer::i,j,k 
real,dimension(3,3)::a,b,c 
do i=1,3
    do j=1,3
        c(i,j)=0
    end do
end do
print*,'Elements of matrix a'
do i=1,3
    read*,(a(i,j),j=1,3)
end do
print*,'Elements of matrix b'
do i=1,3
    read*,(b(i,j),j=1,3)
end do
do i=1,3
do j=1,3
    do k=1,2
        c(i,j)=c(i,j)+a(i,k)+b(k,j)
    end do
end do
end do
print*,"The matrix is"
do i=1,3
    write(*,*)(c(i,j),j=1,3)
end do
stop
end program matrix


     


