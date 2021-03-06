defmodule Mix.Tasks.Hexoku do
  use Mix.Task
  @moduledoc """

  mix hexoku.app                                # Get application info
  mix hexoku.config                             # List configuration variables
  mix hexoku.log [--tail]                       # Show applications log
  mix hexoku --help                             # This help
  """
  @shortdoc "List Hexoku tasks"

  def app_name do
    Mix.Project.config[:heroku_app] || Mix.Project.config[:app]
  end

  def run([]) do
    help
  end

  def run(["--help"]) do
    help
  end

  defp help do
    Mix.shell.info """
    Help:

    mix hexoku.app                                # Get application info
    mix hexoku.config                             # List configuration variables
    mix hexoku.log [--tail]                       # Show applications log
    mix hexoku --help                             # This help
    """
  end
end
