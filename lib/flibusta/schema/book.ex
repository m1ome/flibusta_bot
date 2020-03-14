defmodule Flibusta.Schema.Book do
  use Ecto.Schema

  alias Flibusta.Schema.Author

  @primary_key {:bookId, :id, autogenerate: false}

  schema "libbook" do
    field :title, :string
    field :deleted, :string
    field :fileType, :string

    many_to_many :authors, Author, join_through: "libavtor", join_keys: [bookId: :bookId, avtorId: :avtorId]
  end
end
