defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "count odd list elements" do
      list1 = ["1", "3", "6", "43", "banana", "6", "abc"]
      list2 = ["3", "5", "8", "10", "12", "15", "18", "21"]

      assert ListFilter.call(list1) == 3
      assert ListFilter.call(list2) == 4
    end

    test "passing an emptu list" do
      list = []

      assert ListFilter.call(list) == 0
    end
  end
end
