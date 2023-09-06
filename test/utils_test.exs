defmodule UtilsTest do
  use ExUnit.Case
  import Droplet.Utils

  test "1900 is not a leap year" do
    assert is_leap_year(1900) == :false
  end

  test "2024 is a leap year" do
    assert is_leap_year(2024) == :true
  end

  test "2000 is a leap year" do
    assert is_leap_year(2000) == :true
  end
end
