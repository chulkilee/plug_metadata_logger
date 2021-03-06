defmodule MetadataLogger.Plug.MixProject do
  use Mix.Project

  @version "0.2.0"

  def project do
    [
      app: :metadata_logger_plug,
      version: @version,
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # hex
      description: "Plug Middleware to log request and response into in metadata",
      package: package(),

      # ex_doc
      docs: docs()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:plug, "~> 1.5"},
      {:credo, "~> 1.1.0", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.19", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/elixir-metadata-logger/metadata_logger_plug",
        "Changelog" =>
          "https://github.com/elixir-metadata-logger/metadata_logger_plug/blob/master/CHANGELOG.md"
      },
      maintainers: ["Chulki Lee"]
    ]
  end

  defp docs do
    [
      name: "MetadataLogger.Plug",
      source_ref: "v#{@version}",
      canonical: "https://hexdocs.pm/metadata_logger_plug",
      source_url: "https://github.com/elixir-metadata-logger/metadata_logger_plug"
    ]
  end
end
