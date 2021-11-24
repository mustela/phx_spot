defmodule SpotWeb.PageController do
  use SpotWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
