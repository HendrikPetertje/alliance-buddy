defmodule AllianceBuddy.PageController do
  use AllianceBuddy.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
