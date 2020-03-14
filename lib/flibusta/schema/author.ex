defmodule Flibusta.Schema.Author do
  use Ecto.Schema

  alias Flibusta.Schema.Book

  @primary_key {:avtorId, :id, autogenerate: false}

  schema "libavtorname" do
    field :firstName, :string
    field :lastName, :string

    many_to_many :books, Book, join_through: "libavtor", join_keys: [avtorId: :avtorId, bookId: :bookId]
  end
end
