defmodule Main do

# Funktion, die das  größte  Element einer Liste zurückgibt
  def max([head|tail]), do: _max(head, tail)
  defp _max(current, []), do: current
  defp _max(current, [head|tail]) when current < head do
    _max(head, tail)
  end
  defp _max(current, [_|tail]), do: _max(current, tail)

# Funktion, die das kleinste Element einer Liste zurückgibt
  def min([head|tail]), do: _min(head, tail)
  defp _min(current, []), do: current
  defp _min(current, [head|tail]) when current > head do
    _min(head, tail)
  end
  defp _min(current, [_|tail]), do: _min(current, tail)


end
