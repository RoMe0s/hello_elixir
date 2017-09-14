defmodule HelloElixirWeb.Router do
  use HelloElixirWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", HelloElixirWeb do
    pipe_through :api

    resources "/users", UserController, except: [:new, :edit]
  end
end
