

using SafeTestsets
@safetestset "BayesianSamplerModel.jl" begin
    using BayesianSamplerModel
    using Test
    using Distributions

    model = BSM(;Θs = [.25 .15; .3 .3], β=1.0, n=20, n′=10)

    p1 = compute_marginal(model, sum(model.Θs[1,:]))
    p2 = compute_joint(model, sum(model.Θs[1,:]))
    p3 = compute_conditional(model, sum(model.Θs[1,:]))

    @test p1 ≈ mean(Beta(8 + 1, 12 + 1))
    @test p2 ≈ mean(Beta(4 + 1, 6 + 1))
    @test p3 ≈ mean(Beta(8 + 1, 12 + 1))
end
