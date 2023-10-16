# Droplet

A sandbox project to dip my toes in the Elixir ecosystem.

## Usage

To run the interactive Elixir shell, type `iex` in the terminal.

```
Interactive Elixir (1.13.1) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> 0xff
255
iex(2)> 0xff + 0x02
257
```

To check for a type of a variable, prefix with `i<space>` in the interactive shell.

```
iex(1)> i 10_000

Term
  10000
Data type
  Integer
Reference modules
  Integer
Implemented protocols
  IEx.Info, Inspect, List.Chars, String.Chars
```

To run a script file, use the `elixir` command with the targeted script file.

```
elixir example.exs
```

## Linting

To lint the source code, use `credo`.

```
mix credo
```

## Install dependencies

Specify the dependencies in `mix.exs`. The dependencies can be browsed through [hex.pm](https://hex.pm) website.

```
mix deps.get
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `droplet` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:droplet, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc) and published on [HexDocs](https://hexdocs.pm). Once published, the docs can be found at <https://hexdocs.pm/droplet>.

## Compile Elixir Script

To compile an Elixir script file and run it, use `elixirc` followed by the script file.

```
elixirc hello.exs
```
