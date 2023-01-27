defmodule PyTest do
  use ExUnit.Case
  doctest Py

  describe "trips/1" do
    test "returns list of all the Pythagorean triples with integers below the given limit" do
      expected = [
        {3, 4, 5},
        {5, 12, 13},
        {6, 8, 10},
        {7, 24, 25},
        {8, 15, 17},
        {9, 12, 15},
        {12, 16, 20},
        {15, 20, 25}
      ]

      assert Py.trips(25) == expected
    end

    test "returns an empty list for values below which no triangles can be formed" do
      assert Py.trips(1) == []
      assert Py.trips(2) == []
      assert Py.trips(3) == []
    end
  end
end
