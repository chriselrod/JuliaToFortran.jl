module kernels
implicit none
contains

subroutine mulkernel_loop32(D, A, X)
    real(8), dimension(16,32),  intent(in)  :: A
    real(8), dimension(32,14),  intent(in)  :: X
    real(8), dimension(16,14),  intent(out) :: D
    integer                                 :: i

    D(1:16,1)  = A(1:16,1) * X(1,1)
    D(1:16,2)  = A(1:16,1) * X(1,2)
    D(1:16,3)  = A(1:16,1) * X(1,3)
    D(1:16,4)  = A(1:16,1) * X(1,4)
    D(1:16,5)  = A(1:16,1) * X(1,5)
    D(1:16,6)  = A(1:16,1) * X(1,6)
    D(1:16,7)  = A(1:16,1) * X(1,7)
    D(1:16,8)  = A(1:16,1) * X(1,8)
    D(1:16,9)  = A(1:16,1) * X(1,9)
    D(1:16,10) = A(1:16,1) * X(1,10)
    D(1:16,11) = A(1:16,1) * X(1,11)
    D(1:16,12) = A(1:16,1) * X(1,12)
    D(1:16,13) = A(1:16,1) * X(1,13)
    D(1:16,14) = A(1:16,1) * X(1,14)

    do i = 2, 32
        D(1:16,1)  = D(1:16,1)  + A(1:16,i) * X(i,1)
        D(1:16,2)  = D(1:16,2)  + A(1:16,i) * X(i,2)
        D(1:16,3)  = D(1:16,3)  + A(1:16,i) * X(i,3)
        D(1:16,4)  = D(1:16,4)  + A(1:16,i) * X(i,4)
        D(1:16,5)  = D(1:16,5)  + A(1:16,i) * X(i,5)
        D(1:16,6)  = D(1:16,6)  + A(1:16,i) * X(i,6)
        D(1:16,7)  = D(1:16,7)  + A(1:16,i) * X(i,7)
        D(1:16,8)  = D(1:16,8)  + A(1:16,i) * X(i,8)
        D(1:16,9)  = D(1:16,9)  + A(1:16,i) * X(i,9)
        D(1:16,10) = D(1:16,10) + A(1:16,i) * X(i,10)
        D(1:16,11) = D(1:16,11) + A(1:16,i) * X(i,11)
        D(1:16,12) = D(1:16,12) + A(1:16,i) * X(i,12)
        D(1:16,13) = D(1:16,13) + A(1:16,i) * X(i,13)
        D(1:16,14) = D(1:16,14) + A(1:16,i) * X(i,14)
    end do

end subroutine mulkernel_loop32

subroutine mulkernel(D, A, X)
    real(8), dimension(16,32),  intent(in)  :: A
    real(8), dimension(32,14),  intent(in)  :: X
    real(8), dimension(16,14),  intent(out) :: D

    D(1:16,1) = X(1,1) * A(1:16,1)
    D(1:16,2) = X(1,2) * A(1:16,1)
    D(1:16,3) = X(1,3) * A(1:16,1)
    D(1:16,4) = X(1,4) * A(1:16,1)
    D(1:16,5) = X(1,5) * A(1:16,1)
    D(1:16,6) = X(1,6) * A(1:16,1)
    D(1:16,7) = X(1,7) * A(1:16,1)
    D(1:16,8) = X(1,8) * A(1:16,1)
    D(1:16,9) = X(1,9) * A(1:16,1)
    D(1:16,10) = X(1,10) * A(1:16,1)
    D(1:16,11) = X(1,11) * A(1:16,1)
    D(1:16,12) = X(1,12) * A(1:16,1)
    D(1:16,13) = X(1,13) * A(1:16,1)
    D(1:16,14) = X(1,14) * A(1:16,1)

    D(1:16,1) = D(1:16,1) + X(2,1) * A(1:16,2)
    D(1:16,2) = D(1:16,2) + X(2,2) * A(1:16,2)
    D(1:16,3) = D(1:16,3) + X(2,3) * A(1:16,2)
    D(1:16,4) = D(1:16,4) + X(2,4) * A(1:16,2)
    D(1:16,5) = D(1:16,5) + X(2,5) * A(1:16,2)
    D(1:16,6) = D(1:16,6) + X(2,6) * A(1:16,2)
    D(1:16,7) = D(1:16,7) + X(2,7) * A(1:16,2)
    D(1:16,8) = D(1:16,8) + X(2,8) * A(1:16,2)
    D(1:16,9) = D(1:16,9) + X(2,9) * A(1:16,2)
    D(1:16,10) = D(1:16,10) + X(2,10) * A(1:16,2)
    D(1:16,11) = D(1:16,11) + X(2,11) * A(1:16,2)
    D(1:16,12) = D(1:16,12) + X(2,12) * A(1:16,2)
    D(1:16,13) = D(1:16,13) + X(2,13) * A(1:16,2)
    D(1:16,14) = D(1:16,14) + X(2,14) * A(1:16,2)

    D(1:16,1) = D(1:16,1) + X(3,1) * A(1:16,3)
    D(1:16,2) = D(1:16,2) + X(3,2) * A(1:16,3)
    D(1:16,3) = D(1:16,3) + X(3,3) * A(1:16,3)
    D(1:16,4) = D(1:16,4) + X(3,4) * A(1:16,3)
    D(1:16,5) = D(1:16,5) + X(3,5) * A(1:16,3)
    D(1:16,6) = D(1:16,6) + X(3,6) * A(1:16,3)
    D(1:16,7) = D(1:16,7) + X(3,7) * A(1:16,3)
    D(1:16,8) = D(1:16,8) + X(3,8) * A(1:16,3)
    D(1:16,9) = D(1:16,9) + X(3,9) * A(1:16,3)
    D(1:16,10) = D(1:16,10) + X(3,10) * A(1:16,3)
    D(1:16,11) = D(1:16,11) + X(3,11) * A(1:16,3)
    D(1:16,12) = D(1:16,12) + X(3,12) * A(1:16,3)
    D(1:16,13) = D(1:16,13) + X(3,13) * A(1:16,3)
    D(1:16,14) = D(1:16,14) + X(3,14) * A(1:16,3)

    D(1:16,1) = D(1:16,1) + X(4,1) * A(1:16,4)
    D(1:16,2) = D(1:16,2) + X(4,2) * A(1:16,4)
    D(1:16,3) = D(1:16,3) + X(4,3) * A(1:16,4)
    D(1:16,4) = D(1:16,4) + X(4,4) * A(1:16,4)
    D(1:16,5) = D(1:16,5) + X(4,5) * A(1:16,4)
    D(1:16,6) = D(1:16,6) + X(4,6) * A(1:16,4)
    D(1:16,7) = D(1:16,7) + X(4,7) * A(1:16,4)
    D(1:16,8) = D(1:16,8) + X(4,8) * A(1:16,4)
    D(1:16,9) = D(1:16,9) + X(4,9) * A(1:16,4)
    D(1:16,10) = D(1:16,10) + X(4,10) * A(1:16,4)
    D(1:16,11) = D(1:16,11) + X(4,11) * A(1:16,4)
    D(1:16,12) = D(1:16,12) + X(4,12) * A(1:16,4)
    D(1:16,13) = D(1:16,13) + X(4,13) * A(1:16,4)
    D(1:16,14) = D(1:16,14) + X(4,14) * A(1:16,4)

    D(1:16,1) = D(1:16,1) + X(5,1) * A(1:16,5)
    D(1:16,2) = D(1:16,2) + X(5,2) * A(1:16,5)
    D(1:16,3) = D(1:16,3) + X(5,3) * A(1:16,5)
    D(1:16,4) = D(1:16,4) + X(5,4) * A(1:16,5)
    D(1:16,5) = D(1:16,5) + X(5,5) * A(1:16,5)
    D(1:16,6) = D(1:16,6) + X(5,6) * A(1:16,5)
    D(1:16,7) = D(1:16,7) + X(5,7) * A(1:16,5)
    D(1:16,8) = D(1:16,8) + X(5,8) * A(1:16,5)
    D(1:16,9) = D(1:16,9) + X(5,9) * A(1:16,5)
    D(1:16,10) = D(1:16,10) + X(5,10) * A(1:16,5)
    D(1:16,11) = D(1:16,11) + X(5,11) * A(1:16,5)
    D(1:16,12) = D(1:16,12) + X(5,12) * A(1:16,5)
    D(1:16,13) = D(1:16,13) + X(5,13) * A(1:16,5)
    D(1:16,14) = D(1:16,14) + X(5,14) * A(1:16,5)

    D(1:16,1) = D(1:16,1) + X(6,1) * A(1:16,6)
    D(1:16,2) = D(1:16,2) + X(6,2) * A(1:16,6)
    D(1:16,3) = D(1:16,3) + X(6,3) * A(1:16,6)
    D(1:16,4) = D(1:16,4) + X(6,4) * A(1:16,6)
    D(1:16,5) = D(1:16,5) + X(6,5) * A(1:16,6)
    D(1:16,6) = D(1:16,6) + X(6,6) * A(1:16,6)
    D(1:16,7) = D(1:16,7) + X(6,7) * A(1:16,6)
    D(1:16,8) = D(1:16,8) + X(6,8) * A(1:16,6)
    D(1:16,9) = D(1:16,9) + X(6,9) * A(1:16,6)
    D(1:16,10) = D(1:16,10) + X(6,10) * A(1:16,6)
    D(1:16,11) = D(1:16,11) + X(6,11) * A(1:16,6)
    D(1:16,12) = D(1:16,12) + X(6,12) * A(1:16,6)
    D(1:16,13) = D(1:16,13) + X(6,13) * A(1:16,6)
    D(1:16,14) = D(1:16,14) + X(6,14) * A(1:16,6)

    D(1:16,1) = D(1:16,1) + X(7,1) * A(1:16,7)
    D(1:16,2) = D(1:16,2) + X(7,2) * A(1:16,7)
    D(1:16,3) = D(1:16,3) + X(7,3) * A(1:16,7)
    D(1:16,4) = D(1:16,4) + X(7,4) * A(1:16,7)
    D(1:16,5) = D(1:16,5) + X(7,5) * A(1:16,7)
    D(1:16,6) = D(1:16,6) + X(7,6) * A(1:16,7)
    D(1:16,7) = D(1:16,7) + X(7,7) * A(1:16,7)
    D(1:16,8) = D(1:16,8) + X(7,8) * A(1:16,7)
    D(1:16,9) = D(1:16,9) + X(7,9) * A(1:16,7)
    D(1:16,10) = D(1:16,10) + X(7,10) * A(1:16,7)
    D(1:16,11) = D(1:16,11) + X(7,11) * A(1:16,7)
    D(1:16,12) = D(1:16,12) + X(7,12) * A(1:16,7)
    D(1:16,13) = D(1:16,13) + X(7,13) * A(1:16,7)
    D(1:16,14) = D(1:16,14) + X(7,14) * A(1:16,7)

    D(1:16,1) = D(1:16,1) + X(8,1) * A(1:16,8)
    D(1:16,2) = D(1:16,2) + X(8,2) * A(1:16,8)
    D(1:16,3) = D(1:16,3) + X(8,3) * A(1:16,8)
    D(1:16,4) = D(1:16,4) + X(8,4) * A(1:16,8)
    D(1:16,5) = D(1:16,5) + X(8,5) * A(1:16,8)
    D(1:16,6) = D(1:16,6) + X(8,6) * A(1:16,8)
    D(1:16,7) = D(1:16,7) + X(8,7) * A(1:16,8)
    D(1:16,8) = D(1:16,8) + X(8,8) * A(1:16,8)
    D(1:16,9) = D(1:16,9) + X(8,9) * A(1:16,8)
    D(1:16,10) = D(1:16,10) + X(8,10) * A(1:16,8)
    D(1:16,11) = D(1:16,11) + X(8,11) * A(1:16,8)
    D(1:16,12) = D(1:16,12) + X(8,12) * A(1:16,8)
    D(1:16,13) = D(1:16,13) + X(8,13) * A(1:16,8)
    D(1:16,14) = D(1:16,14) + X(8,14) * A(1:16,8)

    D(1:16,1) = D(1:16,1) + X(9,1) * A(1:16,9)
    D(1:16,2) = D(1:16,2) + X(9,2) * A(1:16,9)
    D(1:16,3) = D(1:16,3) + X(9,3) * A(1:16,9)
    D(1:16,4) = D(1:16,4) + X(9,4) * A(1:16,9)
    D(1:16,5) = D(1:16,5) + X(9,5) * A(1:16,9)
    D(1:16,6) = D(1:16,6) + X(9,6) * A(1:16,9)
    D(1:16,7) = D(1:16,7) + X(9,7) * A(1:16,9)
    D(1:16,8) = D(1:16,8) + X(9,8) * A(1:16,9)
    D(1:16,9) = D(1:16,9) + X(9,9) * A(1:16,9)
    D(1:16,10) = D(1:16,10) + X(9,10) * A(1:16,9)
    D(1:16,11) = D(1:16,11) + X(9,11) * A(1:16,9)
    D(1:16,12) = D(1:16,12) + X(9,12) * A(1:16,9)
    D(1:16,13) = D(1:16,13) + X(9,13) * A(1:16,9)
    D(1:16,14) = D(1:16,14) + X(9,14) * A(1:16,9)

    D(1:16,1) = D(1:16,1) + X(10,1) * A(1:16,10)
    D(1:16,2) = D(1:16,2) + X(10,2) * A(1:16,10)
    D(1:16,3) = D(1:16,3) + X(10,3) * A(1:16,10)
    D(1:16,4) = D(1:16,4) + X(10,4) * A(1:16,10)
    D(1:16,5) = D(1:16,5) + X(10,5) * A(1:16,10)
    D(1:16,6) = D(1:16,6) + X(10,6) * A(1:16,10)
    D(1:16,7) = D(1:16,7) + X(10,7) * A(1:16,10)
    D(1:16,8) = D(1:16,8) + X(10,8) * A(1:16,10)
    D(1:16,9) = D(1:16,9) + X(10,9) * A(1:16,10)
    D(1:16,10) = D(1:16,10) + X(10,10) * A(1:16,10)
    D(1:16,11) = D(1:16,11) + X(10,11) * A(1:16,10)
    D(1:16,12) = D(1:16,12) + X(10,12) * A(1:16,10)
    D(1:16,13) = D(1:16,13) + X(10,13) * A(1:16,10)
    D(1:16,14) = D(1:16,14) + X(10,14) * A(1:16,10)

    D(1:16,1) = D(1:16,1) + X(11,1) * A(1:16,11)
    D(1:16,2) = D(1:16,2) + X(11,2) * A(1:16,11)
    D(1:16,3) = D(1:16,3) + X(11,3) * A(1:16,11)
    D(1:16,4) = D(1:16,4) + X(11,4) * A(1:16,11)
    D(1:16,5) = D(1:16,5) + X(11,5) * A(1:16,11)
    D(1:16,6) = D(1:16,6) + X(11,6) * A(1:16,11)
    D(1:16,7) = D(1:16,7) + X(11,7) * A(1:16,11)
    D(1:16,8) = D(1:16,8) + X(11,8) * A(1:16,11)
    D(1:16,9) = D(1:16,9) + X(11,9) * A(1:16,11)
    D(1:16,10) = D(1:16,10) + X(11,10) * A(1:16,11)
    D(1:16,11) = D(1:16,11) + X(11,11) * A(1:16,11)
    D(1:16,12) = D(1:16,12) + X(11,12) * A(1:16,11)
    D(1:16,13) = D(1:16,13) + X(11,13) * A(1:16,11)
    D(1:16,14) = D(1:16,14) + X(11,14) * A(1:16,11)

    D(1:16,1) = D(1:16,1) + X(12,1) * A(1:16,12)
    D(1:16,2) = D(1:16,2) + X(12,2) * A(1:16,12)
    D(1:16,3) = D(1:16,3) + X(12,3) * A(1:16,12)
    D(1:16,4) = D(1:16,4) + X(12,4) * A(1:16,12)
    D(1:16,5) = D(1:16,5) + X(12,5) * A(1:16,12)
    D(1:16,6) = D(1:16,6) + X(12,6) * A(1:16,12)
    D(1:16,7) = D(1:16,7) + X(12,7) * A(1:16,12)
    D(1:16,8) = D(1:16,8) + X(12,8) * A(1:16,12)
    D(1:16,9) = D(1:16,9) + X(12,9) * A(1:16,12)
    D(1:16,10) = D(1:16,10) + X(12,10) * A(1:16,12)
    D(1:16,11) = D(1:16,11) + X(12,11) * A(1:16,12)
    D(1:16,12) = D(1:16,12) + X(12,12) * A(1:16,12)
    D(1:16,13) = D(1:16,13) + X(12,13) * A(1:16,12)
    D(1:16,14) = D(1:16,14) + X(12,14) * A(1:16,12)

    D(1:16,1) = D(1:16,1) + X(13,1) * A(1:16,13)
    D(1:16,2) = D(1:16,2) + X(13,2) * A(1:16,13)
    D(1:16,3) = D(1:16,3) + X(13,3) * A(1:16,13)
    D(1:16,4) = D(1:16,4) + X(13,4) * A(1:16,13)
    D(1:16,5) = D(1:16,5) + X(13,5) * A(1:16,13)
    D(1:16,6) = D(1:16,6) + X(13,6) * A(1:16,13)
    D(1:16,7) = D(1:16,7) + X(13,7) * A(1:16,13)
    D(1:16,8) = D(1:16,8) + X(13,8) * A(1:16,13)
    D(1:16,9) = D(1:16,9) + X(13,9) * A(1:16,13)
    D(1:16,10) = D(1:16,10) + X(13,10) * A(1:16,13)
    D(1:16,11) = D(1:16,11) + X(13,11) * A(1:16,13)
    D(1:16,12) = D(1:16,12) + X(13,12) * A(1:16,13)
    D(1:16,13) = D(1:16,13) + X(13,13) * A(1:16,13)
    D(1:16,14) = D(1:16,14) + X(13,14) * A(1:16,13)

    D(1:16,1) = D(1:16,1) + X(14,1) * A(1:16,14)
    D(1:16,2) = D(1:16,2) + X(14,2) * A(1:16,14)
    D(1:16,3) = D(1:16,3) + X(14,3) * A(1:16,14)
    D(1:16,4) = D(1:16,4) + X(14,4) * A(1:16,14)
    D(1:16,5) = D(1:16,5) + X(14,5) * A(1:16,14)
    D(1:16,6) = D(1:16,6) + X(14,6) * A(1:16,14)
    D(1:16,7) = D(1:16,7) + X(14,7) * A(1:16,14)
    D(1:16,8) = D(1:16,8) + X(14,8) * A(1:16,14)
    D(1:16,9) = D(1:16,9) + X(14,9) * A(1:16,14)
    D(1:16,10) = D(1:16,10) + X(14,10) * A(1:16,14)
    D(1:16,11) = D(1:16,11) + X(14,11) * A(1:16,14)
    D(1:16,12) = D(1:16,12) + X(14,12) * A(1:16,14)
    D(1:16,13) = D(1:16,13) + X(14,13) * A(1:16,14)
    D(1:16,14) = D(1:16,14) + X(14,14) * A(1:16,14)

    D(1:16,1) = D(1:16,1) + X(15,1) * A(1:16,15)
    D(1:16,2) = D(1:16,2) + X(15,2) * A(1:16,15)
    D(1:16,3) = D(1:16,3) + X(15,3) * A(1:16,15)
    D(1:16,4) = D(1:16,4) + X(15,4) * A(1:16,15)
    D(1:16,5) = D(1:16,5) + X(15,5) * A(1:16,15)
    D(1:16,6) = D(1:16,6) + X(15,6) * A(1:16,15)
    D(1:16,7) = D(1:16,7) + X(15,7) * A(1:16,15)
    D(1:16,8) = D(1:16,8) + X(15,8) * A(1:16,15)
    D(1:16,9) = D(1:16,9) + X(15,9) * A(1:16,15)
    D(1:16,10) = D(1:16,10) + X(15,10) * A(1:16,15)
    D(1:16,11) = D(1:16,11) + X(15,11) * A(1:16,15)
    D(1:16,12) = D(1:16,12) + X(15,12) * A(1:16,15)
    D(1:16,13) = D(1:16,13) + X(15,13) * A(1:16,15)
    D(1:16,14) = D(1:16,14) + X(15,14) * A(1:16,15)

    D(1:16,1) = D(1:16,1) + X(16,1) * A(1:16,16)
    D(1:16,2) = D(1:16,2) + X(16,2) * A(1:16,16)
    D(1:16,3) = D(1:16,3) + X(16,3) * A(1:16,16)
    D(1:16,4) = D(1:16,4) + X(16,4) * A(1:16,16)
    D(1:16,5) = D(1:16,5) + X(16,5) * A(1:16,16)
    D(1:16,6) = D(1:16,6) + X(16,6) * A(1:16,16)
    D(1:16,7) = D(1:16,7) + X(16,7) * A(1:16,16)
    D(1:16,8) = D(1:16,8) + X(16,8) * A(1:16,16)
    D(1:16,9) = D(1:16,9) + X(16,9) * A(1:16,16)
    D(1:16,10) = D(1:16,10) + X(16,10) * A(1:16,16)
    D(1:16,11) = D(1:16,11) + X(16,11) * A(1:16,16)
    D(1:16,12) = D(1:16,12) + X(16,12) * A(1:16,16)
    D(1:16,13) = D(1:16,13) + X(16,13) * A(1:16,16)
    D(1:16,14) = D(1:16,14) + X(16,14) * A(1:16,16)

    D(1:16,1) = D(1:16,1) + X(17,1) * A(1:16,17)
    D(1:16,2) = D(1:16,2) + X(17,2) * A(1:16,17)
    D(1:16,3) = D(1:16,3) + X(17,3) * A(1:16,17)
    D(1:16,4) = D(1:16,4) + X(17,4) * A(1:16,17)
    D(1:16,5) = D(1:16,5) + X(17,5) * A(1:16,17)
    D(1:16,6) = D(1:16,6) + X(17,6) * A(1:16,17)
    D(1:16,7) = D(1:16,7) + X(17,7) * A(1:16,17)
    D(1:16,8) = D(1:16,8) + X(17,8) * A(1:16,17)
    D(1:16,9) = D(1:16,9) + X(17,9) * A(1:16,17)
    D(1:16,10) = D(1:16,10) + X(17,10) * A(1:16,17)
    D(1:16,11) = D(1:16,11) + X(17,11) * A(1:16,17)
    D(1:16,12) = D(1:16,12) + X(17,12) * A(1:16,17)
    D(1:16,13) = D(1:16,13) + X(17,13) * A(1:16,17)
    D(1:16,14) = D(1:16,14) + X(17,14) * A(1:16,17)

    D(1:16,1) = D(1:16,1) + X(18,1) * A(1:16,18)
    D(1:16,2) = D(1:16,2) + X(18,2) * A(1:16,18)
    D(1:16,3) = D(1:16,3) + X(18,3) * A(1:16,18)
    D(1:16,4) = D(1:16,4) + X(18,4) * A(1:16,18)
    D(1:16,5) = D(1:16,5) + X(18,5) * A(1:16,18)
    D(1:16,6) = D(1:16,6) + X(18,6) * A(1:16,18)
    D(1:16,7) = D(1:16,7) + X(18,7) * A(1:16,18)
    D(1:16,8) = D(1:16,8) + X(18,8) * A(1:16,18)
    D(1:16,9) = D(1:16,9) + X(18,9) * A(1:16,18)
    D(1:16,10) = D(1:16,10) + X(18,10) * A(1:16,18)
    D(1:16,11) = D(1:16,11) + X(18,11) * A(1:16,18)
    D(1:16,12) = D(1:16,12) + X(18,12) * A(1:16,18)
    D(1:16,13) = D(1:16,13) + X(18,13) * A(1:16,18)
    D(1:16,14) = D(1:16,14) + X(18,14) * A(1:16,18)

    D(1:16,1) = D(1:16,1) + X(19,1) * A(1:16,19)
    D(1:16,2) = D(1:16,2) + X(19,2) * A(1:16,19)
    D(1:16,3) = D(1:16,3) + X(19,3) * A(1:16,19)
    D(1:16,4) = D(1:16,4) + X(19,4) * A(1:16,19)
    D(1:16,5) = D(1:16,5) + X(19,5) * A(1:16,19)
    D(1:16,6) = D(1:16,6) + X(19,6) * A(1:16,19)
    D(1:16,7) = D(1:16,7) + X(19,7) * A(1:16,19)
    D(1:16,8) = D(1:16,8) + X(19,8) * A(1:16,19)
    D(1:16,9) = D(1:16,9) + X(19,9) * A(1:16,19)
    D(1:16,10) = D(1:16,10) + X(19,10) * A(1:16,19)
    D(1:16,11) = D(1:16,11) + X(19,11) * A(1:16,19)
    D(1:16,12) = D(1:16,12) + X(19,12) * A(1:16,19)
    D(1:16,13) = D(1:16,13) + X(19,13) * A(1:16,19)
    D(1:16,14) = D(1:16,14) + X(19,14) * A(1:16,19)

    D(1:16,1) = D(1:16,1) + X(20,1) * A(1:16,20)
    D(1:16,2) = D(1:16,2) + X(20,2) * A(1:16,20)
    D(1:16,3) = D(1:16,3) + X(20,3) * A(1:16,20)
    D(1:16,4) = D(1:16,4) + X(20,4) * A(1:16,20)
    D(1:16,5) = D(1:16,5) + X(20,5) * A(1:16,20)
    D(1:16,6) = D(1:16,6) + X(20,6) * A(1:16,20)
    D(1:16,7) = D(1:16,7) + X(20,7) * A(1:16,20)
    D(1:16,8) = D(1:16,8) + X(20,8) * A(1:16,20)
    D(1:16,9) = D(1:16,9) + X(20,9) * A(1:16,20)
    D(1:16,10) = D(1:16,10) + X(20,10) * A(1:16,20)
    D(1:16,11) = D(1:16,11) + X(20,11) * A(1:16,20)
    D(1:16,12) = D(1:16,12) + X(20,12) * A(1:16,20)
    D(1:16,13) = D(1:16,13) + X(20,13) * A(1:16,20)
    D(1:16,14) = D(1:16,14) + X(20,14) * A(1:16,20)

    D(1:16,1) = D(1:16,1) + X(21,1) * A(1:16,21)
    D(1:16,2) = D(1:16,2) + X(21,2) * A(1:16,21)
    D(1:16,3) = D(1:16,3) + X(21,3) * A(1:16,21)
    D(1:16,4) = D(1:16,4) + X(21,4) * A(1:16,21)
    D(1:16,5) = D(1:16,5) + X(21,5) * A(1:16,21)
    D(1:16,6) = D(1:16,6) + X(21,6) * A(1:16,21)
    D(1:16,7) = D(1:16,7) + X(21,7) * A(1:16,21)
    D(1:16,8) = D(1:16,8) + X(21,8) * A(1:16,21)
    D(1:16,9) = D(1:16,9) + X(21,9) * A(1:16,21)
    D(1:16,10) = D(1:16,10) + X(21,10) * A(1:16,21)
    D(1:16,11) = D(1:16,11) + X(21,11) * A(1:16,21)
    D(1:16,12) = D(1:16,12) + X(21,12) * A(1:16,21)
    D(1:16,13) = D(1:16,13) + X(21,13) * A(1:16,21)
    D(1:16,14) = D(1:16,14) + X(21,14) * A(1:16,21)

    D(1:16,1) = D(1:16,1) + X(22,1) * A(1:16,22)
    D(1:16,2) = D(1:16,2) + X(22,2) * A(1:16,22)
    D(1:16,3) = D(1:16,3) + X(22,3) * A(1:16,22)
    D(1:16,4) = D(1:16,4) + X(22,4) * A(1:16,22)
    D(1:16,5) = D(1:16,5) + X(22,5) * A(1:16,22)
    D(1:16,6) = D(1:16,6) + X(22,6) * A(1:16,22)
    D(1:16,7) = D(1:16,7) + X(22,7) * A(1:16,22)
    D(1:16,8) = D(1:16,8) + X(22,8) * A(1:16,22)
    D(1:16,9) = D(1:16,9) + X(22,9) * A(1:16,22)
    D(1:16,10) = D(1:16,10) + X(22,10) * A(1:16,22)
    D(1:16,11) = D(1:16,11) + X(22,11) * A(1:16,22)
    D(1:16,12) = D(1:16,12) + X(22,12) * A(1:16,22)
    D(1:16,13) = D(1:16,13) + X(22,13) * A(1:16,22)
    D(1:16,14) = D(1:16,14) + X(22,14) * A(1:16,22)

    D(1:16,1) = D(1:16,1) + X(23,1) * A(1:16,23)
    D(1:16,2) = D(1:16,2) + X(23,2) * A(1:16,23)
    D(1:16,3) = D(1:16,3) + X(23,3) * A(1:16,23)
    D(1:16,4) = D(1:16,4) + X(23,4) * A(1:16,23)
    D(1:16,5) = D(1:16,5) + X(23,5) * A(1:16,23)
    D(1:16,6) = D(1:16,6) + X(23,6) * A(1:16,23)
    D(1:16,7) = D(1:16,7) + X(23,7) * A(1:16,23)
    D(1:16,8) = D(1:16,8) + X(23,8) * A(1:16,23)
    D(1:16,9) = D(1:16,9) + X(23,9) * A(1:16,23)
    D(1:16,10) = D(1:16,10) + X(23,10) * A(1:16,23)
    D(1:16,11) = D(1:16,11) + X(23,11) * A(1:16,23)
    D(1:16,12) = D(1:16,12) + X(23,12) * A(1:16,23)
    D(1:16,13) = D(1:16,13) + X(23,13) * A(1:16,23)
    D(1:16,14) = D(1:16,14) + X(23,14) * A(1:16,23)

    D(1:16,1) = D(1:16,1) + X(24,1) * A(1:16,24)
    D(1:16,2) = D(1:16,2) + X(24,2) * A(1:16,24)
    D(1:16,3) = D(1:16,3) + X(24,3) * A(1:16,24)
    D(1:16,4) = D(1:16,4) + X(24,4) * A(1:16,24)
    D(1:16,5) = D(1:16,5) + X(24,5) * A(1:16,24)
    D(1:16,6) = D(1:16,6) + X(24,6) * A(1:16,24)
    D(1:16,7) = D(1:16,7) + X(24,7) * A(1:16,24)
    D(1:16,8) = D(1:16,8) + X(24,8) * A(1:16,24)
    D(1:16,9) = D(1:16,9) + X(24,9) * A(1:16,24)
    D(1:16,10) = D(1:16,10) + X(24,10) * A(1:16,24)
    D(1:16,11) = D(1:16,11) + X(24,11) * A(1:16,24)
    D(1:16,12) = D(1:16,12) + X(24,12) * A(1:16,24)
    D(1:16,13) = D(1:16,13) + X(24,13) * A(1:16,24)
    D(1:16,14) = D(1:16,14) + X(24,14) * A(1:16,24)

    D(1:16,1) = D(1:16,1) + X(25,1) * A(1:16,25)
    D(1:16,2) = D(1:16,2) + X(25,2) * A(1:16,25)
    D(1:16,3) = D(1:16,3) + X(25,3) * A(1:16,25)
    D(1:16,4) = D(1:16,4) + X(25,4) * A(1:16,25)
    D(1:16,5) = D(1:16,5) + X(25,5) * A(1:16,25)
    D(1:16,6) = D(1:16,6) + X(25,6) * A(1:16,25)
    D(1:16,7) = D(1:16,7) + X(25,7) * A(1:16,25)
    D(1:16,8) = D(1:16,8) + X(25,8) * A(1:16,25)
    D(1:16,9) = D(1:16,9) + X(25,9) * A(1:16,25)
    D(1:16,10) = D(1:16,10) + X(25,10) * A(1:16,25)
    D(1:16,11) = D(1:16,11) + X(25,11) * A(1:16,25)
    D(1:16,12) = D(1:16,12) + X(25,12) * A(1:16,25)
    D(1:16,13) = D(1:16,13) + X(25,13) * A(1:16,25)
    D(1:16,14) = D(1:16,14) + X(25,14) * A(1:16,25)

    D(1:16,1) = D(1:16,1) + X(26,1) * A(1:16,26)
    D(1:16,2) = D(1:16,2) + X(26,2) * A(1:16,26)
    D(1:16,3) = D(1:16,3) + X(26,3) * A(1:16,26)
    D(1:16,4) = D(1:16,4) + X(26,4) * A(1:16,26)
    D(1:16,5) = D(1:16,5) + X(26,5) * A(1:16,26)
    D(1:16,6) = D(1:16,6) + X(26,6) * A(1:16,26)
    D(1:16,7) = D(1:16,7) + X(26,7) * A(1:16,26)
    D(1:16,8) = D(1:16,8) + X(26,8) * A(1:16,26)
    D(1:16,9) = D(1:16,9) + X(26,9) * A(1:16,26)
    D(1:16,10) = D(1:16,10) + X(26,10) * A(1:16,26)
    D(1:16,11) = D(1:16,11) + X(26,11) * A(1:16,26)
    D(1:16,12) = D(1:16,12) + X(26,12) * A(1:16,26)
    D(1:16,13) = D(1:16,13) + X(26,13) * A(1:16,26)
    D(1:16,14) = D(1:16,14) + X(26,14) * A(1:16,26)

    D(1:16,1) = D(1:16,1) + X(27,1) * A(1:16,27)
    D(1:16,2) = D(1:16,2) + X(27,2) * A(1:16,27)
    D(1:16,3) = D(1:16,3) + X(27,3) * A(1:16,27)
    D(1:16,4) = D(1:16,4) + X(27,4) * A(1:16,27)
    D(1:16,5) = D(1:16,5) + X(27,5) * A(1:16,27)
    D(1:16,6) = D(1:16,6) + X(27,6) * A(1:16,27)
    D(1:16,7) = D(1:16,7) + X(27,7) * A(1:16,27)
    D(1:16,8) = D(1:16,8) + X(27,8) * A(1:16,27)
    D(1:16,9) = D(1:16,9) + X(27,9) * A(1:16,27)
    D(1:16,10) = D(1:16,10) + X(27,10) * A(1:16,27)
    D(1:16,11) = D(1:16,11) + X(27,11) * A(1:16,27)
    D(1:16,12) = D(1:16,12) + X(27,12) * A(1:16,27)
    D(1:16,13) = D(1:16,13) + X(27,13) * A(1:16,27)
    D(1:16,14) = D(1:16,14) + X(27,14) * A(1:16,27)

    D(1:16,1) = D(1:16,1) + X(28,1) * A(1:16,28)
    D(1:16,2) = D(1:16,2) + X(28,2) * A(1:16,28)
    D(1:16,3) = D(1:16,3) + X(28,3) * A(1:16,28)
    D(1:16,4) = D(1:16,4) + X(28,4) * A(1:16,28)
    D(1:16,5) = D(1:16,5) + X(28,5) * A(1:16,28)
    D(1:16,6) = D(1:16,6) + X(28,6) * A(1:16,28)
    D(1:16,7) = D(1:16,7) + X(28,7) * A(1:16,28)
    D(1:16,8) = D(1:16,8) + X(28,8) * A(1:16,28)
    D(1:16,9) = D(1:16,9) + X(28,9) * A(1:16,28)
    D(1:16,10) = D(1:16,10) + X(28,10) * A(1:16,28)
    D(1:16,11) = D(1:16,11) + X(28,11) * A(1:16,28)
    D(1:16,12) = D(1:16,12) + X(28,12) * A(1:16,28)
    D(1:16,13) = D(1:16,13) + X(28,13) * A(1:16,28)
    D(1:16,14) = D(1:16,14) + X(28,14) * A(1:16,28)

    D(1:16,1) = D(1:16,1) + X(29,1) * A(1:16,29)
    D(1:16,2) = D(1:16,2) + X(29,2) * A(1:16,29)
    D(1:16,3) = D(1:16,3) + X(29,3) * A(1:16,29)
    D(1:16,4) = D(1:16,4) + X(29,4) * A(1:16,29)
    D(1:16,5) = D(1:16,5) + X(29,5) * A(1:16,29)
    D(1:16,6) = D(1:16,6) + X(29,6) * A(1:16,29)
    D(1:16,7) = D(1:16,7) + X(29,7) * A(1:16,29)
    D(1:16,8) = D(1:16,8) + X(29,8) * A(1:16,29)
    D(1:16,9) = D(1:16,9) + X(29,9) * A(1:16,29)
    D(1:16,10) = D(1:16,10) + X(29,10) * A(1:16,29)
    D(1:16,11) = D(1:16,11) + X(29,11) * A(1:16,29)
    D(1:16,12) = D(1:16,12) + X(29,12) * A(1:16,29)
    D(1:16,13) = D(1:16,13) + X(29,13) * A(1:16,29)
    D(1:16,14) = D(1:16,14) + X(29,14) * A(1:16,29)

    D(1:16,1) = D(1:16,1) + X(30,1) * A(1:16,30)
    D(1:16,2) = D(1:16,2) + X(30,2) * A(1:16,30)
    D(1:16,3) = D(1:16,3) + X(30,3) * A(1:16,30)
    D(1:16,4) = D(1:16,4) + X(30,4) * A(1:16,30)
    D(1:16,5) = D(1:16,5) + X(30,5) * A(1:16,30)
    D(1:16,6) = D(1:16,6) + X(30,6) * A(1:16,30)
    D(1:16,7) = D(1:16,7) + X(30,7) * A(1:16,30)
    D(1:16,8) = D(1:16,8) + X(30,8) * A(1:16,30)
    D(1:16,9) = D(1:16,9) + X(30,9) * A(1:16,30)
    D(1:16,10) = D(1:16,10) + X(30,10) * A(1:16,30)
    D(1:16,11) = D(1:16,11) + X(30,11) * A(1:16,30)
    D(1:16,12) = D(1:16,12) + X(30,12) * A(1:16,30)
    D(1:16,13) = D(1:16,13) + X(30,13) * A(1:16,30)
    D(1:16,14) = D(1:16,14) + X(30,14) * A(1:16,30)

    D(1:16,1) = D(1:16,1) + X(31,1) * A(1:16,31)
    D(1:16,2) = D(1:16,2) + X(31,2) * A(1:16,31)
    D(1:16,3) = D(1:16,3) + X(31,3) * A(1:16,31)
    D(1:16,4) = D(1:16,4) + X(31,4) * A(1:16,31)
    D(1:16,5) = D(1:16,5) + X(31,5) * A(1:16,31)
    D(1:16,6) = D(1:16,6) + X(31,6) * A(1:16,31)
    D(1:16,7) = D(1:16,7) + X(31,7) * A(1:16,31)
    D(1:16,8) = D(1:16,8) + X(31,8) * A(1:16,31)
    D(1:16,9) = D(1:16,9) + X(31,9) * A(1:16,31)
    D(1:16,10) = D(1:16,10) + X(31,10) * A(1:16,31)
    D(1:16,11) = D(1:16,11) + X(31,11) * A(1:16,31)
    D(1:16,12) = D(1:16,12) + X(31,12) * A(1:16,31)
    D(1:16,13) = D(1:16,13) + X(31,13) * A(1:16,31)
    D(1:16,14) = D(1:16,14) + X(31,14) * A(1:16,31)

    D(1:16,1) = D(1:16,1) + X(32,1) * A(1:16,32)
    D(1:16,2) = D(1:16,2) + X(32,2) * A(1:16,32)
    D(1:16,3) = D(1:16,3) + X(32,3) * A(1:16,32)
    D(1:16,4) = D(1:16,4) + X(32,4) * A(1:16,32)
    D(1:16,5) = D(1:16,5) + X(32,5) * A(1:16,32)
    D(1:16,6) = D(1:16,6) + X(32,6) * A(1:16,32)
    D(1:16,7) = D(1:16,7) + X(32,7) * A(1:16,32)
    D(1:16,8) = D(1:16,8) + X(32,8) * A(1:16,32)
    D(1:16,9) = D(1:16,9) + X(32,9) * A(1:16,32)
    D(1:16,10) = D(1:16,10) + X(32,10) * A(1:16,32)
    D(1:16,11) = D(1:16,11) + X(32,11) * A(1:16,32)
    D(1:16,12) = D(1:16,12) + X(32,12) * A(1:16,32)
    D(1:16,13) = D(1:16,13) + X(32,13) * A(1:16,32)
    D(1:16,14) = D(1:16,14) + X(32,14) * A(1:16,32)

end subroutine mulkernel

end module kernels
