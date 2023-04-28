defmodule AnagramSolver do
  @doc """
  Return a list of all string permutations to solve for all anagrams.

  ## Examples

    iex> AnagramSolver.solve("a")
    ["a"]

    iex> AnagramSolver.solve("ab")
    ["ab", "ba"]

    iex> AnagramSolver.solve("abc")
    ["abc", "acb", "bac", "bca", "cab", "cba"]
  """
  def solve(string) do
    list_str = String.split(string, "", trim: true)
    do_swap(string, string)
  end

  def swap(string) do
    "#{String.slice(string, 1..(String.length(string) - 1))}#{String.slice(string, 0, 1)}"
  end

  defp do_swap(string, string), do: [string]
  defp do_swap(string, _sstring) do
    [ string, String.reverse(string) | do_swap(string, swap(string)) ]
  end
end

IO.inspect(AnagramSolver.solve("abc"))
