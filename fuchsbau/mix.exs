defmodule Fuchsbau.MixProject do
  use Mix.Project

  def project do
    [
      app: :fuchsbau,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Starter, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:distillery, "~> 2.0"},
      {:config_tuples, "~> 0.2.0"}
    ]
  end
end
