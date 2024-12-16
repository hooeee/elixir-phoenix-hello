defmodule FreelancerRates do
  @working_time 8.0
  @working_day 22

  def daily_rate(hourly_rate) do
    hourly_rate * @working_time
    # Please implement the daily_rate/1 function
  end

  def apply_discount(before_discount, discount) do
    # Please implement the apply_discount/2 function
    before_discount - (before_discount * (discount / 100))
  end

  def monthly_rate(hourly_rate, discount) do
    # Please implement the monthly_rate/2 function
    apply_discount(daily_rate(hourly_rate) , discount) * @working_day
      |> ceil()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    # Please implement the days_in_budget/3 function
    budget+ hourly_rate+ discount

  end
end
