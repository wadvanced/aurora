defmodule Aurora.MixProject do
  use Mix.Project

  def project do
    [
      app: :aurora,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      # Add documentation configuration
      name: "Aurora",
      source_url: "https://github.com/wadvanced/aurora",
      homepage_url: "https://github.com/wadvanced/aurora",
      docs: &docs/0
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:aurora_ctx, "~> 0.1.2"},

      ## Dev only dependencies
      {:ex_doc, "~> 0.38", only: :dev, runtime: false}
    ]
  end

  defp docs do
    [
      main: "overview",
      logo: "guides/images/aurora-transparent-icon.png",
      extras: [
        "guides/overview.md"
      ],
      groups_for_extras: [
        "Guides": ~r/guides\/[^\/]+\.md/
      ],
      groups_for_modules: [
        "Context Generation": [
          Aurora.Ctx
        ],
        "UI Generation": [
          Aurora.Uix
        ],
        "Menu Management": [
          Aurora.Menux
        ],
        "Permission Control": [
          Aurora.Grantx
        ]
      ]
    ]
  end
end
