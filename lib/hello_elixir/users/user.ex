defmodule HelloElixir.Users.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias HelloElixir.Users.User


  schema "users" do
    field :password, :string
    field :remember_token, :string
    field :username, :string

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:username, :remember_token, :password])
    |> validate_required([:username, :remember_token, :password])
  end
end
