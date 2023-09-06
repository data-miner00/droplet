defmodule FileReaderTest do
  use ExUnit.Case
  import Droplet.Docs.IO.FileReader
  import Mock

  test "Passing a file should return a string" do
    str = read_strings_or_fail(Path.join("#{:code.priv_dir(:)}", "text.md"))
    assert str != nil
  end

  test "With mock" do
    with_mock File, [read!: fn(_) -> "mock str" end] do
      str = read_strings_or_fail("random.txt")
      assert str == "mock str"
    end
  end
end
