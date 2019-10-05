defmodule RumblWeb.UserView do
   use RumblWeb, :view
   # alias RumblWeb.User

   def first_name(%{name: name}) do
      name
      |> String.split(" ")
      |> Enum.at(0)
   end
end