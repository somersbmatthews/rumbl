defmodule RumblWeb.UserController do
   use RumblWeb, :controller
   alias Rumbl.User

   def index(conn, _params) do
      users = Rumbl.Repo.all(Rumbl.User)
         render conn, "index.html", users: users
   end

   def show(conn, %{"id" => id}) do
      user = Rumbl.Repo.get(Rumbl.User, id)
         render conn, "show.html", user: user
   end

   def new(conn, _params) do
      changeset = User.changeset(%User{})
      render conn, "new.html", changeset: changeset
   end
end