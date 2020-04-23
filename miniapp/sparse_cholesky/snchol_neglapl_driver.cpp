#include <fstream>
#include <array>
#include <random>
#include <fstream>
#include <iostream>
#include <set>
#include <array>
#include <random>
#include <vector>
#include <algorithm>
#include <stdio.h>
#include <exception>
#include <map>
#include <mutex>
#include <tuple>
#include <memory>
#include <utility>
#include <queue>

#include <mpi.h>

#include "snchol.hpp"

using namespace std;
using namespace Eigen;
using namespace ttor;

int VERB = 0;
int LOG = 0;
int N = 32;
int D = 3;
int N_LEVELS = 10;
int N_THREADS = 4;
int BLOCK_SIZE = 10;
string FOLDER = "./";
int REPEAT = 1;

void run()
{
    printf("[%d] Hello from %s\n", comm_rank(), processor_name().c_str());
    std::unique_ptr<DistMat> dm = make_DistMat_neglapl(N, D, N_LEVELS, BLOCK_SIZE, VERB, LOG, FOLDER);
    const SpMat A = dm->get_A();
    dm->factorize(N_THREADS);
    if (comm_rank() == 0)
    {
        VectorXd b = random(A.rows(), 2019);
        VectorXd x = dm->solve(b);
        double res = (A * x - b).norm() / b.norm();
        printf("|Ax-b|/|b| = %e\n", res);
        if(res <= 1e-12) {
            printf("\nTest ok!\n");
        } else {
            printf("\n=> Error is too large\n");
            exit(1);
        }
    }
}

int main(int argc, char **argv)
{
    int req = MPI_THREAD_FUNNELED;
    int prov = -1;
    int err = MPI_Init_thread(NULL, NULL, req, &prov);
    assert(err == 0 && prov == req);
    if (argc >= 2)
    {
        N = atoi(argv[1]);
    }
    if (argc >= 2)
    {
        D = atoi(argv[2]);
    }
    if (argc >= 4)
    {
        N_LEVELS = atoi(argv[3]);
    }
    if (argc >= 5)
    {
        N_THREADS = atoi(argv[4]);
    }
    if (argc >= 6)
    {
        VERB = atoi(argv[5]);
    }
    if (argc >= 7)
    {
        BLOCK_SIZE = atoi(argv[6]);
    }
    if (argc >= 8)
    {
        LOG = atoi(argv[7]);
    }
    if (argc >= 9)
    {
        FOLDER = argv[8];
    }
    printf("Usage ./snchol n d nlevels nthreads verb blocksize log folder\n");
    printf("n = %d, d = %d, nlevels = %d, nthreads = %d, verb = %d, blocksize = %d, log = %d, folder = %s\n", 
        N, D, N_LEVELS, N_THREADS, VERB, BLOCK_SIZE, LOG, FOLDER.c_str());
    run();
    MPI_Finalize();
    return 0;
}