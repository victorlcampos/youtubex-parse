defmodule YoutubexParse.Url.Test do
  use ExUnit.Case
  import YoutubexParse.Url


  test "Youtube Parse should get embed url with https protocol" do
    assert YoutubexParse.Url.embed_url("https://www.youtube.com/watch?v=GOr8skudD3U") == "//www.youtube.com/embed/GOr8skudD3U"
  end

  test "Youtube Parse should get embed url with http protocol" do
    assert YoutubexParse.Url.embed_url("http://www.youtube.com/watch?v=GOr8skudD3U") == "//www.youtube.com/embed/GOr8skudD3U"
  end

  test "Youtube Parse should get embed url with url without protocol" do
    assert YoutubexParse.Url.embed_url("www.youtube.com/watch?v=GOr8skudD3U") == "//www.youtube.com/embed/GOr8skudD3U"
  end

  test "Youtube Parse should get embed url image with id" do
    assert YoutubexParse.Url.embed_url("GOr8skudD3U") == "//www.youtube.com/embed/GOr8skudD3U"
  end
end
