defmodule YoutubexParse.Url do
  import YoutubexParse

  def embed_url(url) do
    "//www.youtube.com/embed/" <> get_id(url)
  end
end
