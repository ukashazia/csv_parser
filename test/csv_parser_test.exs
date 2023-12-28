defmodule CsvParserTest do
  use ExUnit.Case
  doctest CsvParser

  test "parses the csv" do
    assert CsvParser.parse("./examples/example.csv") == [
             %{
               "Department" => "Engineering",
               "Education_Level" => "Masters",
               "Email" => "john.smith@example.com",
               "ID" => "101",
               "Location" => "New York",
               "Manager_ID" => "201",
               "Name" => "John Smith",
               "Phone" => "(123) 456-7890",
               "Salary" => "80000",
               "Start_Date" => "2022-05-15",
               "status" => :pending
             },
             %{
               "Department" => "Marketing",
               "Education_Level" => "Bachelors",
               "Email" => "alice.johnson@example.com",
               "ID" => "102",
               "Location" => "Los Angeles",
               "Manager_ID" => "202",
               "Name" => "Alice Johnson",
               "Phone" => "(234) 567-8901",
               "Salary" => "70000",
               "Start_Date" => "2022-03-20",
               "status" => :pending
             }
           ]
  end
end
