module TestingPowellMethods

using PowellMethods
using Test
using Printf

VERBOSE = true

function banner(str::AbstractString)
    len = 75
    line = repeat('*', len)
    println()
    println(line)
    println("*** ", str, " ", repeat('*', max(3, len - length(str) - 5)))
    println(line)
end

include("cobyla-tests.jl")
banner("Standard tests")
TestingCobyla.runtests()
banner("Tests with scale=0.7")
TestingCobyla.runtests(scale=0.7)
banner("Tests with reverse-communication")
TestingCobyla.runtests(revcom=true)

include("newuoa-tests.jl")
banner("Standard NEWUOA tests")
TestingNewuoa.runtests()
banner("NEWUOA tests with scale=0.7")
TestingNewuoa.runtests(scale=0.7)
banner("NEWUOA tests with reverse-communication")
TestingNewuoa.runtests(revcom=true)

include("bobyqa-tests.jl")
banner("Standard BOBYQA tests")
TestingBobyqa.runtests()

end # module

nothing
