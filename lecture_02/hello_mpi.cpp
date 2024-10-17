# include<mpi.h>
# include<iostream>

int main(int argc, char** argv){
    int rank, size;

    // Initialize MPI
    MPI_Init(&argc, &argv);
    MPI_Comm_size(MPI_COMM_WORLD, &size);
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);

    std::cout << "Hello, World! I am " << rank << " of " << size << std::endl;

    // Finalize MPI
    MPI_Finalize();

    return 0;
}
