defmodule DramimiWeb.PageController do
  use DramimiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
