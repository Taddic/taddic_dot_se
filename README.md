# TaddicDotSe

My company website.

## Development

Prerequisites: Elixir and Erlang as specified in `mix.exs` (`elixir: "~> 1.15"`).

1. **Install dependencies and build assets**

   ```bash
   make build
   ```

   Equivalent: `mix dev_setup` (runs `deps.get`, `assets.setup`, and `assets.build`).

2. **Start the app**

   ```bash
   make start
   ```

   That runs `iex -S mix phx.server` so you get a shell and live reload in development.

3. **Open the site**

   [http://localhost:4000](http://localhost:4000) (default port; override with `PORT` if needed).

### Useful dev commands

| Command          | What it does                                                                      |
| ---------------- | --------------------------------------------------------------------------------- |
| `make precommit` | `mix dev_precommit` — compile with warnings as errors, unlock unused deps, format |
| `make prepush`   | `mix dev_prepush` — runs precommit steps then tests (defaults to `MIX_ENV=test`)  |

## Production

Production settings load from `config/runtime.exs`. You must set **`SECRET_KEY_BASE`** (generate with `mix phx.gen.secret`) before starting in `MIX_ENV=prod`.

1. **Build** (production deps, asset pipeline, digest static files):

   ```bash
   make prod-build
   ```

   Equivalent: `mix prod_build`.

2. **Run** the release-style server (HTTP listener enabled via `PHX_SERVER`):

   ```bash
   make prod-start
   ```

   Equivalent:

   ```bash
   MIX_ENV=prod PHX_SERVER=true mix phx.server
   ```
