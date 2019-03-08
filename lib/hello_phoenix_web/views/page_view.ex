defmodule HelloPhoenixWeb.PageView do
  use HelloPhoenixWeb, :view

  def message do
    "Hello from the view!"
  end

  def render("index.json", %{pages: pages}) do
    %{data: render_many(pages, HelloPhoenixWeb.PageView, "page.json")}
  end

  def render("show.json", %{page: page}) do
    %{data: render_one(page, HelloPhoenixWeb.PageView, "page.json")}
  end

  def render("page_with_authors.json", %{page: page}) do
    %{title: page.title, authors: render_many(page.authors, AuthorView, "author.json")}
  end

  def render("page.json", %{page: page}) do
    %{title: page.title}
  end
end
