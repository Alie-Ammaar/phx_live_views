defmodule LiveTodos.Roles.Role do
  import Ecto.Changeset
  use Ecto.Schema

  schema "roles" do
    field :name, :string
  end

  @doc false
  def changeset(role, attrs) do
    role
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
