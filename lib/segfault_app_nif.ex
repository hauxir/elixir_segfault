defmodule SegfaultApp.Nif do
  @on_load :load_nif

  def load_nif do
    priv_dir = :code.priv_dir(:segfault_app)
    source = Path.join([priv_dir, "segfault_app"])
    :ok = :erlang.load_nif(source, 0)
  end

  def segfault do
    :no_segfault
  end
end
