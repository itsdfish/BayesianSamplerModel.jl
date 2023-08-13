# Bayesian Sampler Example

In the example below, we will develop a simple Bayesian Sampler model of marginal and joint probability judgments. The first step will be to load `BayesianSampler` and `Component` arrays
into the sessesion.
```@example example1
using BayesianSamplerModel
using ComponentArrays
```
##  Model Setup 
The first step of making a model is to define the joint distribution for events `a` and `b`. There are 
different approaches one could take. For example, one could define a 2\times 2 array, which would be convienent for computing marginals. Another way which is convienent for using a Dirichlet prior is to use a vector. One drawback is that the indices of the vector does not have an inherent meaning. `ComponentArrays` circumvent this problem by allowing both integer and keyword based indexing. The joint distribution is defined as:
```@example example1
Θs = ComponentArray(ab=.25, anb=.15, nab=.3, nanb=.3)
```
Next, we can define the model object by passing the joint distribution and other paremeters. 
```@example example1
model = BSM(; Θs, β=1.0, n=10, n′=10)
```
## Model Functions 
For convienence, we can define two functions---one to compute the marginal probability of `a` and another to compute the joint probablity of `a` and `b`

```@example example1
compute_a(m) = compute_marginal(m, m.Θs.ab + m.Θs.anb)
compute_ab(m) = compute_marginal(m, m.Θs.ab)
```
## Using the Model 
Now that we have set up the model and defined functions to compute the desired predictions, we can use the model. The predicted probability of `a` is computed as:
```@example example1
pa = compute_a(model)
```
The predicted probability of `a` and `b` is computed as:
```@example example1
pab = compute_ab(model)
```