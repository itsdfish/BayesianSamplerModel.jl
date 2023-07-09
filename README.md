# BayesianSamplerModel

[![Build Status](https://github.com/itsdfish/BayesianSamplerModel.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/itsdfish/BayesianSamplerModel.jl/actions/workflows/CI.yml?query=branch%3Amain)

A Julia implementation of the probability judment model called the Bayesian Sampler. 


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

Zhu, J. Q., Sanborn, A. N., & Chater, N. (2020). The Bayesian sampler: Generic Bayesian inference causes incoherence in human probability judgments. Psychological review, 127(5), 719.
