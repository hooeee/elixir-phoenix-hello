defmodule NameBadge do
  def print(id, name, department \\ "owner") do
    department = if department == nil do "owner" else department end
    if (id == nil) do
      "#{name} - #{department|> String.upcase()}"
    else
      "[#{id}] - #{name} - #{department|> String.upcase()}"
    end
  end
end
