defmodule HelloElixirWeb.PageView do
  use HelloElixirWeb, :view

  def render(conn, _params) do
    render conn, "index.html"
  end

end
