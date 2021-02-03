defmodule TransferdropWeb.PageController do
  use TransferdropWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
