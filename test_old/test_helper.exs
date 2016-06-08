ExUnit.start

Mix.Task.run "ecto.create", ~w(-r AllianceBuddy.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r AllianceBuddy.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(AllianceBuddy.Repo)

