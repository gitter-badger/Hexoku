defmodule Hexoku.API.Apps do
	alias Hexoku.Request
	@moduledoc """
	An app represents the program that you would like to deploy and run on Heroku.

	For more info read the [Heroku API Reference](https://devcenter.heroku.com/articles/platform-api-reference#app)
	"""

	@spec list(Hexoku.Client.t) :: Hexoku.Response.t
	def list(client) do
		Request.get(client, "/apps")
	end

	@spec info(Hexoku.Client.t, binary) :: Hexoku.Response.t
	def info(client, app) do
		Request.get(client, "/apps/#{app}")
	end

	@spec create(Hexoku.Client.t, binary, binary, binary) :: Hexoku.Response.t
	def create(client, name, region, stack \\ "cedar") do
		Request.post(client, "/apps", %{
			name: name,
			stack: stack,
			region: region
		})
	end

	@spec create(Hexoku.Client.t, map) :: Hexoku.Response.t
	def create(client, body) do
		Request.post(client, "/apps", body)
	end

	@spec delete(Hexoku.Client.t, binary) :: Hexoku.Response.t
	def delete(client, app) do
		Request.delete(client, "/apps/#{app}")
	end


end
