defmodule Flibusta.Repo.Bookshelf do
  import Ecto.Query

  alias Flibusta.Repo
  alias Flibusta.Schema.Author
  alias Flibusta.Schema.Book

  def find_by_title(title) do
    from(b in Book, where: like(b.title, ^"%#{title}%") and b.deleted == "0")
    |> Repo.all()
    |> Repo.preload(:authors)
  end

  def find_by_author_last_name(last_name) do
    from(a in Author, where: like(a.lastName, ^"%#{last_name}%"))
    |> Repo.all()
    |> Repo.preload(:books)
    |> Enum.reduce([], fn record, acc ->
      books = record.books |> Enum.filter(fn x -> x.deleted == "1" end)

      if length(books) == 0, do: acc, else: [record | acc]
    end)
  end
end
