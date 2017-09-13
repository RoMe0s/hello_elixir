defmodule HelloElixirWeb.PageView do
  use HelloElixirWeb, :view

  def render(conn, _params)
    render conn, "index.html"
  end
end
