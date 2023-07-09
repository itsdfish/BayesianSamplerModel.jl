abstract type AbstractBSM <:ContinuousUnivariateDistribution end 

"""
    BSM{T<:Real} <: AbstractBSM

A model object for the Bayesian sampler.

# Parameters

- `θs::AbstractArray{T,N}`: an array of true subjective probabilities. The array can be of any size and dimension. 
- `β::T`: parameter for symmetrical beta prior 
- `n::Int`: number of samples for marginal and conditional events 
- `n′::Int`: number of samples for conjunctions and disjunctions where n′ ≤ n

# Constructors 

    BSM(Θs, β, n, n′)
    
    BSM(; Θs, β, n, n′)

# Example 

```julia
using BayesianSamplerModel
Θs = [.25 .15; .3 .3]
model = BSM(; Θs, β=1.0, n=20, n′=10)
p_a = compute_marginal(model, sum(Θs[1,:]))
p_ab = compute_joint(model, Θs[1])
p_agb = compute_conditional(model, sum(Θs[1]) / sum(Θs[:,1]))
```

# References

Zhu, J. Q., Sanborn, A. N., & Chater, N. (2020). The Bayesian sampler: Generic Bayesian inference causes incoherence in human probability judgments. Psychological Review, 127(5), 719.
"""
mutable struct BSM{T<:Real,N} <: AbstractBSM
    Θs::AbstractArray{T,N}
    β::T
    n::Int
    n′::Int 
end

function BSM(Θs, n, n′)
    _,β = promote(Θs[1], β)
    θs = convert(Array{typeof(β), ndims(Θs)}, Θs)
    return BSM(Θs, n, n′)
end

function BSM(;Θs, β, n, n′)
    return BSM(Θs, β, n, n′)
end