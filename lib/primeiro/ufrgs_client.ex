defmodule Primeiro.UFRGSClient do
  def request(path) do
    [base_url: "https://www.ufrgs.br"]
    |> Req.new()
    |> Req.get!(url: path)
    |> Map.get(:body)
    |> Floki.parse_document!()
  end

  def get_titles(html) do
    html
    |> Floki.find(".blog-shortcode-post-title.entry-title a")
    |> Enum.map(fn {_, _, [title]} -> title end)
  end
end
