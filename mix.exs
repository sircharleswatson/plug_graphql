defmodule GraphQL.Plug.Mixfile do
  use Mix.Project

  @version "0.1.5"

  @description "A Plug integration for GraphQL Elixir"
  @repo_url "https://github.com/joshprice/plug_graphql"
  @docs_url "http://graphql-elixir.org"

  def project do
    [app: :plug_graphql,
     description: @description,
     version: @version,
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package,
     deps: deps,
     docs: [main: "readme", extras: ["README.md"]]]
  end

  def application do
    [applications: [:logger, :plug, :cowboy, :graphql]]
  end

  defp deps do
    [{:earmark, "~> 0.1", only: :dev},
     {:ex_doc, "~> 0.11", only: :dev},
     {:cowboy, "~> 1.0"},
     {:plug, "~> 0.14 or ~> 1.0"},
     {:poison, "~> 1.5"},
     {:graphql, "~> 0.1.2"}]
  end

  defp package do
    [maintainers: ["Josh Price", "Aaron Weiker"],
     licenses: ["BSD"],
     links: %{github: @repo_url},
     files: ~w(lib templates mix.exs *.md LICENSE)]
  end
end
