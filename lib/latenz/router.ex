defmodule Latenz.Router do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do 
      Latenz.Json.call(conn, "nothing")
    end
    
  match _, do: send_resp(conn, 404, "Oops!")
end

