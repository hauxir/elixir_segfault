defmodule SegfaultApp.MixProject do
  use Mix.Project

  def project do
    [
      app: :segfault_app,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: true,
      deps: deps(),
      compilers: [:elixir_make] ++ Mix.compilers()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {SegfaultApp.Application, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:elixir_make, "~> 0.6"}
    ]
  end
end
