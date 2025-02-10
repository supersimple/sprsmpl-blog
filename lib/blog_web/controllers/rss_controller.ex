defmodule BlogWeb.RSSController do
  @moduledoc """
  Handles requests for the RSS feed.
  """
  use BlogWeb, :controller

  plug :put_layout, false

  def index(conn, _params) do
    articles = Blog.Articles.list_articles()
    conn
    |> put_root_layout(false)
    |> render("index.html", articles: articles)
  end
end
