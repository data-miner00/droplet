use Mix.Config

config :droplet, Scheduler, jobs: [
  {"* * * *", fn ->
    Path.join("#{:code.priv_dir(:droplet)}", "text.md")
    |> IO.puts
  end}
]
