defmodule HelloPhx.Syntaxs.Conditionals.With do

  def run_1 do
    user = %{name: "starbucks_member", age: 20}
    with {:ok, name} <- Map.fetch(user, :name), ## 1. 해당 라인 실행하고 패턴매칭한다.
        {:ok, age} <- Map.fetch(user, :age), ## 2. 해당 라인 실행하고 패턴매칭한다.
        do: name <> " is " <> Integer.to_string(age) <> " years old" ## 3. 둘다 성공하면 실행된다.

    ## 이거 왜씀 ??
  end

  def run_2 do
    ## with 왜씀 ??
    ## 아래같은코드 안쓰려고!
    post = %{title: "Hello, Phoenix", body: "Hello, Phoenix is a web development framework written in Elixir."}
    claims = %{role: "admin"}
    important_stuff = fn token, full_claims -> {:ok, token, full_claims} end

    case Repo.insert(post) do
      {:ok, user} ->
        case Guardian.encode_and_sign(user, :token, claims) do
          {:ok, token, full_claims} ->
            important_stuff.(token, full_claims)

          error ->
            error
        end

      error ->
        error
    end


    ## 위에꺼랑 같은 코드임
    with {:ok, user} <- Repo.insert(post), ## 1. 해당 라인 실행하고 패턴매칭한다.
         {:ok, token, full_claims} <- Guardian.encode_and_sign(user, :token, claims), ## 2. 해당 라인 실행하고 패턴매칭한다.
         do: important_stuff.(token, full_claims) ## 3. 둘다 성공하면 실행된다.

  end

end
