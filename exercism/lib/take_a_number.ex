defmodule TakeANumber do
  def start() do
    spawn(__MODULE__, :loop, [0])
  end


  def loop(number) do
    receive do
      {:take_a_number, sender} ->
        new_number = number;
        send(sender, new_number)
    end
  end
end

machine_pid = TakeANumber.start()
send(machine_pid, {:take_a_number, self()})

receive do
  msg -> IO.puts("#{msg}")
after
  100 ->
    IO.puts("No response received")
end
