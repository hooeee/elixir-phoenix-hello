defmodule RpgCharacterSheet do
  def welcome() do
    IO.puts("Welcome! Let's fill out your character sheet together.")
    :ok
  end

  def ask_name() do
    input = IO.gets("What is your character's name?\n")
    input
    |> String.trim()
  end

  def ask_class() do
    IO.gets("What is your character's class?\n") |> String.trim()
  end

  def ask_level() do
    IO.gets("What is your character's level?\n") |> String.trim() |> String.to_integer()
  end

  def run() do
    welcome()
    character = %{
      name: ask_name(),
      class: ask_class(),
      level: ask_level()
    }
    IO.puts("Your character: #{inspect(character)}")
    character
  end
end
