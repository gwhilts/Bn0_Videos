defmodule Pythagorean do
  @spec trips(pos_integer) :: list
  @doc """
  Returns a list of 3-tuples containing all the integers
  that for Pythagorean triples below a given limit.any()

  ## Examples

  iex> Pythagorean.trips(10)
  [{3, 4, 5}, {6, 8, 10}]
  """
  def trips(limit) do
    for(
      z <- 1..limit, y <- 1..z, x <- 1..y,
      (x * x) + (y * y) == z * z,
      do: {x, y, z}
    )
    |> Enum.sort()
  end
end
