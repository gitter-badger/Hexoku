Hexoku
======
Basic API support and MIX tasks for Heroku support.

For full API docs please visit [http://jongretar.com/Hexoku/](http://jongretar.com/Hexoku/).

## Warning

This is early work and few API and Mix commands have been finished. I am adding more every week(ish) though.
Some API functions *might* completely change between versions.

## Examples

	client = Hexoku.toolbelt
	client |> Hexoku.API.Apps.list

For complete info read the [Heroku API Reference](https://devcenter.heroku.com/articles/platform-api-reference)

## Mix Support

Hexoku adds some common Heroku commands to your Mix. It relies on [Heroku Toolbet](toolbelt.heroku.com) being installed and logged in.

The application name is read from the heroku_app key in your `mix.exs` files project.
If that is not defined it falls back to the :app key.

	def project do
		[
			app: :uberweb,
			heroku_app: "uberweb-staging"
			version: "0.0.1",
			elixir: "~> 1.0.0",
			deps: deps
		]
	end

### Examples

	bash> mix hexoku.config
		DOWNSTREAM_APP = myapp-production
		REDIS_HOST = somehost.redistogo.com
