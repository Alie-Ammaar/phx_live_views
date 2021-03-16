defmodule LiveTodos.Todos.Todo do
  use Ecto.Schema
  import Ecto.Changeset
  alias LiveTodos.Accounts.User

  schema "todos" do
    field :status, :boolean, default: false
    field :title, :string
    belongs_to(:user, User)
    timestamps()
  end

  @doc false
  def changeset(todo, attrs) do
    todo
    |> cast(attrs, [:title, :status])
    |> validate_required([:title, :status])
  end
end
