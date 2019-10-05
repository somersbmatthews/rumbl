defmodule RumblWeb.User do
  use Rumble.Web, :model

  schema "users" do
    field :name, :string
    field :username, :string
    field :password, :string
    field :password_hash, :string

  timestamps
  end
end
