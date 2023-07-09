module BayesianSamplerModel
    using Distributions: ContinuousUnivariateDistribution

    export AbstractBSM
    export BSM 

    export compute_conditional
    export compute_joint
    export compute_marginal

    include("structs.jl")
    include("functions.jl")
end
