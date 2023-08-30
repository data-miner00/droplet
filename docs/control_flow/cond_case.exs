# Same as match statement, last clause to match needs to be `true`
def better_age_check(age) do
  cond do
    age < 6 -> "Baby"
    age < 12 -> "Child"
    age < 18 -> "Teen"
    age < 30 -> "Adult"
    age < 50 -> "Uncle"
    age < 120 -> "Old"
    :true -> "Invalid"
  end
end

# We can choose between cond or pattern matching for these problems

# Case can be used to match literal values
def simple_age_check(age) do
  case age do
    1 -> "Newborn"
    2 -> "Newborn2"
    _ -> "Etc"
  end
end

# Case can be used to pattern matching
def describe_date(date) do
  case date do
    {1, _, _} -> "Brand new month!"
    {25, 12, _} -> "Merry Christmas"
    {25, month, _} -> "Its payday for #{month}!"
    {_, _, 2004} -> "Its old days"
    {_, month, _} when month <= 12 -> "Any any"
    {_, _, _} -> "Invalid month"
  end
end
