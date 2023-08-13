# BayesianSamplerModel.jl

**Documentation under construction**

A Julia implementation of the probability judment model called the Bayesian Sampler. 

# Simple Example 

```@example 
using BayesianSamplerModel
Θs = [.25 .15; .3 .3]
model = BSM(; Θs, β=1.0, n=10, n′=10)
p_a = compute_marginal(model, sum(Θs[1,:]))
p_ab = compute_joint(model, Θs[1])
p_agb = compute_conditional(model, sum(Θs[1]) / sum(Θs[:,1]))
```

# References 

Zhu, J. Q., Sanborn, A. N., & Chater, N. (2020). The Bayesian sampler: Generic Bayesian inference causes incoherence in human probability judgments. Psychological Review, 127(5), 719.
