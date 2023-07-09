function round_val(p, r) 
    v = 1 / r 
    return round(p * v) / v
end

function _compute_prob(m::AbstractBSM, θ, β, n)
    return (n * θ + β) / (n + 2 * β)
end

function compute_marginal(m::AbstractBSM, θ)
    return _compute_prob(m, θ, m.β, m.n)
end

function compute_joint(m::AbstractBSM, θ)
    return _compute_prob(m, θ, m.β, m.n′)
end

function compute_conditional(m::AbstractBSM, θ)
    return _compute_prob(m, θ, m.β, m.n)
end