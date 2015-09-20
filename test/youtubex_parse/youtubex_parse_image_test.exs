defmodule YoutubexParse.Image.Test do
  use ExUnit.Case
  import YoutubexParse.Image

  test "Youtube Parse should get high quality image with url with https" do
    assert YoutubexParse.Image.high_image("https://www.youtube.com/watch?v=GOr8skudD3U") == "//i.ytimg.com/vi_webp/GOr8skudD3U/hqdefault.webp"
  end

  test "Youtube Parse should get medium quality image with url with https" do
    assert YoutubexParse.Image.medium_image("https://www.youtube.com/watch?v=GOr8skudD3U") == "//i.ytimg.com/vi_webp/GOr8skudD3U/mqdefault.webp"
  end

  test "Youtube Parse should get high quality image with url with http" do
    assert YoutubexParse.Image.high_image("http://www.youtube.com/watch?v=GOr8skudD3U") == "//i.ytimg.com/vi_webp/GOr8skudD3U/hqdefault.webp"
  end

  test "Youtube Parse should get medium quality image with url with http" do
    assert YoutubexParse.Image.medium_image("http://www.youtube.com/watch?v=GOr8skudD3U") == "//i.ytimg.com/vi_webp/GOr8skudD3U/mqdefault.webp"
  end

  test "Youtube Parse should get high quality image with url without protocol" do
    assert YoutubexParse.Image.high_image("www.youtube.com/watch?v=GOr8skudD3U") == "//i.ytimg.com/vi_webp/GOr8skudD3U/hqdefault.webp"
  end

  test "Youtube Parse should get medium quality image with url without protocol" do
    assert YoutubexParse.Image.medium_image("www.youtube.com/watch?v=GOr8skudD3U") == "//i.ytimg.com/vi_webp/GOr8skudD3U/mqdefault.webp"
  end

  test "Youtube Parse should get high quality image with id" do
    assert YoutubexParse.Image.high_image("GOr8skudD3U") == "//i.ytimg.com/vi_webp/GOr8skudD3U/hqdefault.webp"
  end

  test "Youtube Parse should get medium quality image with id" do
    assert YoutubexParse.Image.medium_image("GOr8skudD3U") == "//i.ytimg.com/vi_webp/GOr8skudD3U/mqdefault.webp"
  end
end
