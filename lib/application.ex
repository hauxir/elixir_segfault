defmodule SegfaultApp.Application do
  use Application

  def start(_type, _args) do
    IO.inspect "HERE WE GO"
    SegfaultApp.Nif.segfault()
  end
end
