defmodule Primeiro.UFRGSClient do
  def request(path) do
    parent = self()

    spawn(fn ->
      IO.inspect(self())

      body =
        [base_url: "https://www.ufrgs.br"]
        |> Req.new()
        |> Req.get!(url: path)
        |> Map.get(:body)

      send(parent, {:news_body, body})
    end)

    receive do
      {:news_body, body} -> Floki.parse_document!(body)
    end

    # await
    # |> Floki.parse_document!()
  end

  def get_titles(html) do
    html
    |> Floki.find(".blog-shortcode-post-title.entry-title a")
    |> Enum.map(fn {_, _, [title]} -> title end)
  end
end
