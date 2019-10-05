defmodule Rumbl.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias RumblWeb.User

  # defstruct [:id, :name, :username, :password]

  schema "users" do
    field :name, :string
    field :username, :string
    field :password_hash, :string

    timestamps()
  end

  @doc false
  # def changeset(%User{} = user, attrs) do
  #   user
  #   |> cast(attrs, [:name, :username, :password, :password_hash])
  #   |> validate_required([:name, :username, :password, :password_hash])
  # end

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, ~(name username), [])
    |> validate_length(:username, min: 1, max: 20)
  end
end
