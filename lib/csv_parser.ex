defmodule CsvParser do
  @moduledoc """
  Documentation for `CsvParser`.
  """

  @doc """
  Read data from CSV

  ## Examples

      iex> CsvParser.parse("valid_csv.csv")

  """
  def parse(file_path, options \\ []) do
    if File.exists?(file_path) do
      file_path
      |> File.stream!
      |> CSV.decode!([headers: true, validate_row_length: true])
      |> Enum.map(& (Map.put(&1, "status", :pending)))
    end
  end
end
