defmodule Transferdrop.Repo do
  use Ecto.Repo,
    otp_app: :transferdrop,
    adapter: Ecto.Adapters.Postgres
end
