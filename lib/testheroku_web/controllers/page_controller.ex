defmodule TestherokuWeb.PageController do
  use TestherokuWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
