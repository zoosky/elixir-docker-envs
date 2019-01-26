defmodule Starter do
   use Application
  
  def start(_type, _args) do
    IO.puts("... hey fuchsbau")
    Starter.echo_variables
  end

  @doc """
    Echo defined environment variables from config.exs
  """
  def echo_variables do 
    owner = Application.get_env(:fuchsbau, :config)[:fuchsbau_owner]
    street =  Application.get_env(:fuchsbau, :config)[:fuchsbau_street]
    phone =  Application.get_env(:fuchsbau, :config)[:fuchsbau_phone]

    IO.inspect(owner)
    IO.inspect(street)
    IO.inspect(phone)

    {:ok, self()}
  end

end