# Normal If-Else flow
def first(list) do
  if length(list) == 0 do
    nil
  else
    hd(list)
  end
end

# Unless: Do when the condition not met
def safeFirst(list) do
  unless length(list) == 0 do
    hd(list)
  end
end

# There is no `else if` statement;
# Each `else if` needs to be translated to nested `if else`
def age_check(age) do
  if age < 6 do
    "Baby"
  else
    if age < 12 do
      "Child"
    else
      if age < 18 do
        "Teen"
      else
        if age < 30 do
          "Adult"
        else
          if age < 50 do
            "Uncle"
          else
            if age < 120 do
              "Old"
            else
              "Invalid"
            end
          end
        end
      end
    end
  end
end
