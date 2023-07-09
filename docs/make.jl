using Documenter
using BayesianSamplerModel

makedocs(
    sitename = "BayesianSamplerModel",
    format = Documenter.HTML(
        assets = [
            asset(
                "https://fonts.googleapis.com/css?family=Montserrat|Source+Code+Pro&display=swap",
                class = :css,
            ),
        ],
        collapselevel = 1,
    ),
    modules = [BayesianSamplerModel],
    pages = ["Home" => "index.md",
            "API" => "api.md",
            "Examples" => ["Example 1" => "example1.md",
            ]
    ]
)

deploydocs(
    repo = "github.com/itsdfish/BayesianSamplerModel.jl.git",
)