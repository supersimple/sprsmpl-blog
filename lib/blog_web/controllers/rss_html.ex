defmodule BlogWeb.RSSHTML do
  @moduledoc """
  This module contains pages rendered by RSSController.
  """
  use BlogWeb, :html
  use Timex

  embed_templates "rss_html/*"

  def to_rfc822(date) do
    date
    |> Timezone.convert("GMT")
    |> Timex.format!("{WDshort}, {D} {Mshort} {YYYY} {h24}:{m}:{s} GMT")
  end
end