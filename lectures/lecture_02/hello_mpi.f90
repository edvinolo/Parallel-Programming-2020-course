program hello_mpi
    !use mpi

    implicit none
    include "mpif.h"

    integer :: rank, size, ierr

    ! Initialize MPI
    call mpi_init(ierr)
    call mpi_comm_size(mpi_comm_world,size,ierr)
    call mpi_comm_rank(mpi_comm_world,rank,ierr)

    write(6,*) "Hello world! I am process ", rank, " of " , size

    ! Finalize MPI
    call mpi_finalize(ierr)

end program hello_mpi