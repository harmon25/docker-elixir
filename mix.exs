defmodule Docker.Mixfile do
  use Mix.Project

  @version File.read!("VERSION") |> String.strip

  def project do
    [app: :docker,
     version: @version,
     elixir: "~> 1.2",
     deps: deps,

     # Hex
     description: description,
     package: package]
  end

  def application do
    [applications: [:logger, :httpoison, :poison]]
  end

  defp deps do
    [
      {:poison, "~> 1.5"},
      {:httpoison, "~> 0.8.0"},
      {:earmark, "~> 0.2.0", only: :dev},
      {:ex_doc, "~> 0.11.3", only: :dev},
    ]
  end

  defp description do
    """
    Elixir client for the Docker Remote API using HTTPoison.
    """
  end

  defp package do
    [contributors: ["William Huba"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/hexedpackets/docker-elixir"},
     files: ~w(mix.exs README.md LICENSE VERSION config lib)]
  end
end
