defmodule Wabanex.Repo.Migrations.CreateUsersTable do
  use Ecto.Migration

  def change do
    create table (:users) do
      add :email, :string
      add :name, :string
      add :password, :string

      # Geração das colunas (inserted_at, updated_at)
      timestamps()
    end

    # Criação de index para garantir que o campo seja único
    create unique_index(:users, [:email])
  end
end
