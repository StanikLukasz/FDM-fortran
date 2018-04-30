#if !defined(KINDp)
#define KINDp 8
#endif
    
program main
    use gauss
    implicit none
    
    
    ! variables
    character (len=16) :: arg
    integer (kind = 8) :: I, N
    real (kind = KINDp), allocatable, dimension(:) :: X ! just to show tho different ways to set dimension
    real (kind = KINDp), allocatable :: A(:,:)
    real (kind = KINDp) :: h
    real (kind = 16) :: e ! error amount
    
    
    ! getting argument - number of division points
    call GET_COMMAND_ARGUMENT(1, arg)
    read(arg, *) N
    
    
    ! calculating density of division
    h = 1.d0 / N
    
    
    ! filling matrices
    allocate(A(N-1, N))
    A = 0
    
    allocate(X(N))
    X = 0
    X(N) = 1
    
    do I = 1,N-1
        A(I, I+1) = -2.d0 / (h*h)
    end do
    
    do I = 1,N-1
        A(I,I) = 1.d0 / (h*h)
    end do
    
    do I = 1,N-2
        A(I, I+2) = 1.d0 / (h*h)
    end do
    
    
    ! gauss elimination
    call eliminate(A, X, N-1)
    
    
    ! calculating error of computations
    e = 0.d0
    
    do I = 1,N
        e = e + abs(X(I) - real(I) / real(N))
    end do
    
    
    ! results
    
#if !defined(TOFILE)
    write(*,*) e / N
    write(*,*) X
#else
    write(*,*) e / N, N
#endif
    
    
    
end program main