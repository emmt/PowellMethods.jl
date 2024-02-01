# PowellMethods

[![License](http://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat)](./LICENSE.md)
[![Build Status](https://github.com/emmt/PowellMethods.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/emmt/PowellMethods.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Build Status](https://ci.appveyor.com/api/projects/status/github/emmt/PowellMethods.jl?svg=true)](https://ci.appveyor.com/project/emmt/PowellMethods-jl) [![Coverage](https://codecov.io/gh/emmt/PowellMethods.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/emmt/PowellMethods.jl)

`PowellMethods` is a [Julia](http://julialang.org/) interface to some of the
derivative-free optimization algorithms by M.J.D. Powell:

* `COBYLA` (Powell, 1994) accounts for general inequality constraints.

* `NEWUOA` (Powell, 2006) is for unconstrained optimization.

* `BOBYQA` (Powell, 2009) accounts for bound constraints on the variables.

This package is a wrapper over the implementations of these algorithms in the C
language in [`OptimPack`](https://github.com/emmt/OptimPack) libraries. Precompiled
versions of these libraries are provided by
[`OptimPack_jll`](https://github.com/JuliaBinaryWrappers/OptimPack_jll.jl)
package.

For a more mature interface to M.J.D. Powell algorithms, I strongly recommend to use the [`PRIMA`](https://github.com/libprima/PRIMA.jl) package.


## Installation

The easiest way to install `PowellMethods` is via Julia registry
[`EmmtRegistry`](https://github.com/emmt/EmmtRegistry):

```julia
using Pkg
pkg"registry add General"  # if not yet any registries
pkg"registry add https://github.com/emmt/EmmtRegistry"
pkg"add PowellMethods"
```

## References

* M.J.D. Powell, "*A direct search optimization method that models the
  objective and constraint functions by linear interpolation*" in Advances in
  Optimization and Numerical Analysis Mathematics and Its Applications, vol.
  **275** (eds. Susana Gomez and Jean-Pierre Hennart), Kluwer Academic
  Publishers, pp. 51-67 (1994).

* M.J.D. Powell, "*The NEWUOA software for unconstrained minimization without
  derivatives*" in Large-Scale Nonlinear Optimization, editors G. Di Pillo and
  M. Roma, Springer, pp. 255-297 (2006).

* M.J.D. Powell, "*The BOBYQA Algorithm for Bound Constrained Optimization
  Without Derivatives*", Technical report, Department of Applied Mathematics
  and Theoretical Physics, University of Cambridge (2009).
