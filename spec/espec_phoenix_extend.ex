defmodule ESpec.Phoenix.Extend do
  def model do
    quote do
      alias AllianceBuddy.Repo
    end
  end

  def controller do
    quote do
      alias AllianceBuddy.Repo
      import AllianceBuddy.Router.Helpers
    end
  end

  def request do
    quote do
      alias AllianceBuddy.Repo
      import AllianceBuddy.Router.Helpers
    end
  end

  def view do
    quote do
      import AllianceBuddy.Router.Helpers
    end
  end

  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
