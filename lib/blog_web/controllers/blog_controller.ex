defmodule BlogWeb.BlogController do
  use BlogWeb, :controller

  def index(conn, _params) do
    article = Blog.Articles.get_latest()
    redirect(conn, to: ~p"/blog/#{article.id}")
  end

  def show(conn, %{"id" => id}) do
    articles = Blog.Articles.list_articles()
    article = Blog.Articles.get_post_by_id(id)

    render(conn, "show.html",
      article: article,
      articles: articles,
      body_class: "blog",
      meta_description: Map.get(article, :description, "")
    )
  end
end