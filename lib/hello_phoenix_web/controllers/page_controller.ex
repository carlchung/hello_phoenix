defmodule HelloPhoenixWeb.PageController do
  use HelloPhoenixWeb, :controller

  # def test(conn, _params) do
  #   render(conn, "index.html")
  # end

  def index(conn, _params) do
    conn
    |> render("index.html")
  end
end
