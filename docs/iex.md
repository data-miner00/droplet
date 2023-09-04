## iex Usage

To load a file into iex,

```
iex "/path/to/file.ex"
```

To reload without exiting the shell,

```
r(MyModule)
```

## Check AST

The abstract syntax tree of a piece of code can be inspected via the `quote` function.

```
quote do <your-code-here> end
```

Replace the placeholder content `<your-code-here>` with the actual code for inspection.

Example,

```
iex(1)> quote do if length(list) == 0, do: nil, else: hd(list) end
{:if, [context: Elixir, import: Kernel],
 [
   {:==, [context: Elixir, import: Kernel],
    [
      {:length, [context: Elixir, import: Kernel],
       [{:list, [if_undefined: :apply], Elixir}]},
      0
    ]},
   [
     do: nil,
     else: {:hd, [context: Elixir, import: Kernel],
      [{:list, [if_undefined: :apply], Elixir}]}
   ]
 ]}
```

## Change Directory

We can change directory directly within iex.

```
cd("<lib/your-folder>")
```

## Default

Run default command

```
iex -S mix
```
