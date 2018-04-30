#if !defined(KINDp)
#define KINDp 8
#endif
    
module gauss
    implicit none
    
contains
    subroutine eliminate (A, X, N)
        implicit none
        
        
        ! variables
        integer (kind = 8), intent(in) :: N
        real (kind = KINDp), intent(inout) :: A(N,N), X(N)
        
        integer (kind = 8) :: I, J
        real (kind = KINDp) :: C
        
        
        ! algorithm
        do I = 1,N
            do J = 0,N
                if (I .NE. J) then
                    C = A(I, J+1) / A(I, I+1)
                    A(:, J+1) = A(:, J+1) - C*A(:,I+1)
                    X(J+1) = X(J+1) - C*X(I+1)
                end if
            end do
        end do
    end subroutine eliminate
    
end module gauss