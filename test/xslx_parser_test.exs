defmodule XlsxParserTest do
  use ExUnit.Case
  doctest XlsxParser

  test "parses the xlsx" do
    assert XlsxParser.parse("./examples/example.xlsx", 3) == [
             %{
               "Age" => 32,
               "Country" => "United States",
               "Date" => "15/10/2017",
               "First Name" => "Dulce",
               "Gender" => "Female",
               "Id" => 1562,
               "Last Name" => "Abril"
             },
             %{
               "Age" => 25,
               "Country" => "Great Britain",
               "Date" => "16/08/2016",
               "First Name" => "Mara",
               "Gender" => "Female",
               "Id" => 1582,
               "Last Name" => "Hashimoto"
             },
             %{
               "Age" => 36,
               "Country" => "France",
               "Date" => "21/05/2015",
               "First Name" => "Philip",
               "Gender" => "Male",
               "Id" => 2587,
               "Last Name" => "Gent"
             }
           ]
  end
end
