function _compute_prob(m::AbstractBSM, θ, β, n)
    return (n * θ + β) / (n + 2 * β)
end

"""
    compute_marginal(m::AbstractBSM, θ)

Compute the mean marginal posterior probability judgment for the Bayesian Sampler Model. 

# Arguments 

- `m::AbstractBSM`: an object for the Bayesian Sampler Model
- `θ`: the true subjective probability 
"""
function compute_marginal(m::AbstractBSM, θ)
    return _compute_prob(m, θ, m.β, m.n)
end

"""
    compute_joint(m::AbstractBSM, θ)

Compute the mean marginal posterior probability judgment for the Bayesian Sampler Model. 

# Arguments 

- `m::AbstractBSM`: an object for the Bayesian Sampler Model
- `θ`: the true subjective probability 
"""
function compute_joint(m::AbstractBSM, θ)
    return _compute_prob(m, θ, m.β, m.n′)
end

"""
    compute_conditional(m::AbstractBSM, θ)

Compute the mean conditional posterior probability judgment for the Bayesian Sampler Model. 

# Arguments 

- `m::AbstractBSM`: an object for the Bayesian Sampler Model
- `θ`: the true subjective probability 
"""
function compute_conditional(m::AbstractBSM, θ)
    return _compute_prob(m, θ, m.β, m.n)
end

function round_val(p, r) 
    v = 1 / r 
    return round(p * v) / v
end