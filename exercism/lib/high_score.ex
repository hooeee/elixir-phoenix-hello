defmodule HighScore do
  def new() do
    %{}
  end

  def add_player(scores, name, score \\ 0) do
    Map.put(scores, name, score)
  end

  def remove_player(scores, name) do
    Map.delete(scores, name)
  end

  def reset_score(scores, name) do
    case Map.has_key?(scores, name) do
      true -> Map.update!(scores, name, fn _ -> 0 end)
      false -> Map.put(scores, name, 0)
    end
  end

  def update_score(scores, name, score) do
    Map.update(scores, name, score, fn current_score -> current_score + score end)
  end


  def get_players(scores) do
    Map.keys(scores)
    |> Enum.map(fn s -> s end)
    # Please implement the get_players/1 function
  end
end
