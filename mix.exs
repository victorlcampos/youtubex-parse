defmodule YoutubexParse.Mixfile do
  use Mix.Project

  def project do
    [ app: :youtubex_parse,
      version: "0.0.1",
      elixir: "> 1.0.0",
      build_per_environment: false,
      description: description,
      package: package,
      deps: deps ]
  end

  def application do
    []
  end

  defp deps do
    []
  end

  def description do
    "Elixir parse for youtube url"
  end

  def package do
    [
      contributors: ["Victor Campos"],
      licenses: ["The MIT License"],
      links: %{
        "GitHub" => "https://github.com/victorlcampos/youtubex-parse"
      }
    ]
  end
end
