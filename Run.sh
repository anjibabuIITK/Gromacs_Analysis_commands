#!/bin/bash
# Minimization
#gmx_mpi grompp -f min.mdp -c alatri_wat.gro -p *.top -o em.tpr
#gmx_mpi mdrun -v -deffnm em
#
# Equilibration
# NVT
#gmx_mpi grompp -f nvt.mdp -c em.gro -r em.gro -p *.top -o nvt.tpr
#gmx_mpi mdrun -deffnm nvt
#
# NPT
#gmx_mpi grompp -f npt.mdp -c nvt.gro -r nvt.gro -p *.top -o npt.tpr
#gmx_mpi mdrun -deffnm npt
# MD Production RUN
# NVT
gmx_mpi grompp -f md.mdp -c npt.gro -t npt.cpt -p *.top -o md.tpr
gmx_mpi mdrun -deffnm md



