In ExUnit, we can add tags to a test that can be included or excluded during the test runs.

```elixir
@tag mytag: true
test "my test" do
    assert "str" == "str"
end
```

To include the tag **only**,

```
mix test --only mytag
```

To exclude the tag from running,

```
mix test --exclude mytag
```

The other way is to specify the includes or excludes inside the `test_helper.exs` config file as such:

```
ExUnit.configure exclude: [mytag: true]
```

For test to watch for changes, install [mix-test.watch](https://github.com/lpil/mix-test.watch) and run `test.watch`. Use `--only` or other test options as usual.

```
mix test.watch --exclude mytag
```
