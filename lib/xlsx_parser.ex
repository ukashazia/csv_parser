defmodule XlsxParser do
  import Xlsxir, only: [stream_list: 3]

  @doc """
  Read data from xlsx file

  ## Examples

      iex> XlsxParser.parse("valid_xlsx.xlsx")

  """

  def parse(file_path, rows \\ nil, options \\ []) do
    if File.exists?(file_path) do
      stream = stream_list(file_path, 0, options)

      [head] = stream |> Enum.take(1)

      stream
      |> Stream.drop(1)
      |> take_rows(rows)
      |> Enum.map(&to_map(head, &1))
    end
  end

  defp take_rows(stream, rows) do
    case rows do
      nil -> stream
      _ -> Stream.take(stream, rows)
    end
  end

  defp to_map(head, list) do
    head
    |> Enum.zip(list)
    |> Enum.drop(1)
    |> Map.new()
  end
end
