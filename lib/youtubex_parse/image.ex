defmodule YoutubexParse.Image do
  import YoutubexParse

  def high_image(url)  , do: "//i.ytimg.com/vi_webp/" <> get_id(url) <> "/hqdefault.webp"
  def medium_image(url), do: "//i.ytimg.com/vi_webp/" <> get_id(url) <> "/mqdefault.webp"
end
