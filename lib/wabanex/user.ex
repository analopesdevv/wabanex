defmodule Wabanex.User do
  # ingetando funções
  use Ecto.Schema

  # importanto todas as funçãoes de changeset para conversão e validação de dados
  import Ecto.Changeset

  # geração de uui automatica
  @primary_key {:id, :binary_id, autogenerate: true}

  # variavel com os campos necessários do schema
  @fields [:email, :password, :name]

  schema "users" do
    field :email, :string
    field :name, :string
    field :password, :string

    timestamps()
  end

  def changeset(params) do
    %__MODULE__{}
    |> cast(params, @fields)
    |> validate_required(@fields)
    |> validate_length(:password, min: 6)
    |> validate_length(:name, min: 2)
    |> validate_format(:email, ~r/@/)
    |> unique_constraint([:email])
  end
end
