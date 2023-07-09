var documenterSearchIndex = {"docs":
[{"location":"api/","page":"API","title":"API","text":"Modules = [BayesianSamplerModel]\nOrder   = [:type, :function]\nPrivate = false","category":"page"},{"location":"api/#BayesianSamplerModel.BSM","page":"API","title":"BayesianSamplerModel.BSM","text":"BSM{T<:Real} <: AbstractBSM\n\nA model object for the Bayesian sampler.\n\nParameters\n\nθs::AbstractArray{T,N}: an array of true subjective probabilities. The array can be of any size and dimension. \nβ::T: parameter for symmetrical beta prior \nn::Int: number of samples for marginal and conditional events \nn′::Int: number of samples for conjunctions and disjunctions where n′ ≤ n\n\nConstructors\n\nBSM(Θs, β, n, n′)\n\nBSM(; Θs, β, n, n′)\n\nExample\n\nusing BayesianSamplerModel\nΘs = [.25 .15; .3 .3]\nmodel = BSM(; Θs, β=1.0, n=20, n′=10)\np_a = compute_marginal(model, sum(Θs[1,:]))\np_ab = compute_joint(model, Θs[1])\np_agb = compute_conditional(model, sum(Θs[1]) / sum(Θs[:,1]))\n\nReferences\n\nZhu, J. Q., Sanborn, A. N., & Chater, N. (2020). The Bayesian sampler: Generic Bayesian inference causes incoherence in human probability judgments. Psychological Review, 127(5), 719.\n\n\n\n\n\n","category":"type"},{"location":"api/#BayesianSamplerModel.compute_conditional-Tuple{AbstractBSM, Any}","page":"API","title":"BayesianSamplerModel.compute_conditional","text":"compute_conditional(m::AbstractBSM, θ)\n\nCompute the mean conditional posterior probability judgment for the Bayesian Sampler Model. \n\nArguments\n\nm::AbstractBSM: an object for the Bayesian Sampler Model\nθ: the true subjective probability \n\n\n\n\n\n","category":"method"},{"location":"api/#BayesianSamplerModel.compute_joint-Tuple{AbstractBSM, Any}","page":"API","title":"BayesianSamplerModel.compute_joint","text":"compute_joint(m::AbstractBSM, θ)\n\nCompute the mean marginal posterior probability judgment for the Bayesian Sampler Model. \n\nArguments\n\nm::AbstractBSM: an object for the Bayesian Sampler Model\nθ: the true subjective probability \n\n\n\n\n\n","category":"method"},{"location":"api/#BayesianSamplerModel.compute_marginal-Tuple{AbstractBSM, Any}","page":"API","title":"BayesianSamplerModel.compute_marginal","text":"compute_marginal(m::AbstractBSM, θ)\n\nCompute the mean marginal posterior probability judgment for the Bayesian Sampler Model.\n\nArguments\n\nm::AbstractBSM: an object for the Bayesian Sampler Model\nθ: the true subjective probability \n\n\n\n\n\n","category":"method"},{"location":"#BayesianSamplerModel.jl","page":"Home","title":"BayesianSamplerModel.jl","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"Documentation under construction","category":"page"},{"location":"","page":"Home","title":"Home","text":"A Julia implementation of the probability judment model called the Bayesian Sampler. ","category":"page"},{"location":"#Simple-Example","page":"Home","title":"Simple Example","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"using BayesianSamplerModel\nΘs = [.25 .15; .3 .3]\nmodel = BSM(; Θs, β=1.0, n=20, n′=10)\np_a = compute_marginal(model, sum(Θs[1,:]))\np_ab = compute_joint(model, Θs[1])\np_agb = compute_conditional(model, sum(Θs[1]) / sum(Θs[:,1]))","category":"page"},{"location":"#References","page":"Home","title":"References","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"Zhu, J. Q., Sanborn, A. N., & Chater, N. (2020). The Bayesian sampler: Generic Bayesian inference causes incoherence in human probability judgments. Psychological Review, 127(5), 719.","category":"page"}]
}
