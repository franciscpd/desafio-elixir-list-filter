defmodule ListFilter do
  def call(list) do
    list |> filter_numbers_odd |> Enum.count()
  end

  defp filter_numbers_odd(list) do
    Enum.filter(list, fn it ->
      case Integer.parse(it) do
        {int, _rest} -> rem(int, 2) != 0
        :error -> false
      end
    end)
  end
end
