defmodule Username do
  @ascii_diff ?a - ?A
  @german_char [?ü, ?ä, ?ö, ?ß]
  @spec sanitize(charlist()) :: String.t


  def sanitize(username) do
    username
    |> change_eng()
    |> Enum.filter(&lower_char_filter/1)
  end

  defp lower_char_filter(char_pointer) do
    case char_pointer do
      c when c in ?a..?z -> true
      c when c == ?_ -> true
      c when c in @german_char -> true
      _ -> false
    end
  end

  defp change_eng(username) do
    username
    |> String.replace("ä", "ae")
    |> String.replace("ö", "oe")
    |> String.replace("ü", "ue")
    |> String.replace("ß", "ss")
  end
end
