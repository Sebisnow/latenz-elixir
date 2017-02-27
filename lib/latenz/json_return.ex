defmodule Latenz.Json do
  import Plug.Conn

  def init(options), do: options

  def call(conn, _opts) do
    json = '{"something": "other", "anything": "else"}'
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, json)
  end
end

