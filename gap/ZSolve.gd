# SPDX-License-Identifier: GPL-2.0-or-later
# NConvex: A Gap package to perform polyhedral computations
#
# Declarations
#


# to solve the system

#  3x+5y=8
#  4x-2y>=2
#   3x+y>=3
# --> SolveEqualitiesAndInequalitiesOverIntergers( [ [3,5] ], [ 8 ], [ [4,-2], [3,1] ], [2,3] );
#
# to get only solution where y is positive then add a 5'th argument for signs: 0 stands for free, 1 stands for positive
# --> SolveEqualitiesAndInequalitiesOverIntergers( [ [3,5] ], [ 8 ], [ [4,-2], [3,1] ], [2,3], [0,1] );

# to get only solution where x and y are positive then add a 5'th argument for signs: 0 stands for free, 1 stands for positive
# --> SolveEqualitiesAndInequalitiesOverIntergers( [ [3,5] ], [ 8 ], [ [4,-2], [3,1] ], [2,3], [1,1] );

#! @Chapter Polyhedrons
#! @Section ZSolve

#! @Description
#!  This function produces a basis of the system <A>eqs</A> = <A>eqs_rhs</A>
#!  and <A>ineqs</A> >= <A>ineqs_rhs</A>. It outputs a list containing three matrices.
#!  The first one is a list of points in a polytope, the second is the hilbert basis
#!  of a cone. The set of solutions is then the minkowski sum of the polytope
#!  generated by the points in the first list and the cone generated by the hilbert
#!  basis in the second matrix. The third one is the free part of the solution polyhedron.
#!  The optional argument <A>signs</A> must be a list of zeros and ones which length is
#!  the number of variables. If the ith entry is one, the ith variable must be >= 0.
#!  If the entry is 0, the number is arbitraty. Default is all zero.
#! @Returns a list of three matrices
#! @Arguments eqs,eqs_rhs,ineqs,ineqs_rhs[,signs]
DeclareGlobalFunction( "SolveEqualitiesAndInequalitiesOverIntergers" );
#! @InsertChunk zsolve
