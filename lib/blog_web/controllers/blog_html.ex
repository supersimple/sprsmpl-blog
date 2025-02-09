defmodule BlogWeb.BlogHTML do
  @moduledoc """
  This module contains pages rendered by BlogController.

  See the `blog_html` directory for all templates available.
  """
  use BlogWeb, :html

  embed_templates "blog_html/*"
end