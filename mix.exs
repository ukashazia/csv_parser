defmodule CsvParser.MixProject do
  use Mix.Project

  def project do
    [
      app: :csv_parser,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]

    ]
  end

  defp deps do
    [
      {:csv, "~> 3.2"},
      {:xlsxir, "~> 1.6.4"}
    ]
  end
end
