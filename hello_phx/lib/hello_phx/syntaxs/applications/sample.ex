defmodule HelloPhx.Syntaxs.Applications.Sample do

  @env Application.compile_env(:hello_phx, :hello_phx)
  @db_env Application.get_env(:hello_phx, HelloPhx.Repo)
  @app_env Application.get_all_env(:hello_phx)

  def run() do

    IO.inspect(@env ,label: "compile_env")
    IO.inspect(@db_env ,label: "db_env")
    IO.inspect(@app_env ,label: "app_all_env")

  end

end
