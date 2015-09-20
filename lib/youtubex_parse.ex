defmodule YoutubexParse do
  def get_id(url)  , do: url |> String.split("v=") |>  List.last
end
