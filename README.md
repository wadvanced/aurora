<p align="center">
  <img src="guides/images/aurora-fullsize-logo.svg" width="400" alt="Aurora">
</p>

# Aurora

Aurora is a low-code toolset for Elixir applications that simplifies common development tasks through a set of specialized modules.

## Core Tools

- **Ctx**: Streamlines schema registration within context modules
- **Uix**: Enables rapid UI development with low-code approaches
- **Menux**: Provides easy menu configuration and management
- **Grantx**: Implements fine-grained permission control

## Installation

[Available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `aurora` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:aurora, "~> 0.1.0"}
  ]
end
```

## Usage

### Ctx
Use Ctx to easily define and manage your context schemas:
```elixir
defmodule MyApp.Accounts do
  use Aurora.Ctx
  
  schema "users" do
    field :name, :string
    field :email, :string
    timestamps()
  end
  
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email])
    |> validate_required([:name, :email])
  end
end
```

Among the many automatically generated functions, you'll find common CRUD operations such as:
- `list_users/0`
- `get_user!/1`
- `create_user/1`
- `update_user/2`
- `delete_user/1`
- `change_user/1`

The library also includes built-in support for:
- Pagination
- Filtering
- Sorting

For more detailed documentation and examples, visit [Aurora.Ctx Documentation](https://hexdocs.pm/aurora_ctx).

### Uix
Create UIs with minimal code:
```elixir
defmodule MyAppWeb.UserLive do
  use Aurora.Uix
  
  ui_for MyApp.Accounts.User do
    field :name
    field :email
  end
end
```

This will automatically generate:
- A live view with listing and CRUD operations
- Forms for creating and updating users
- Search and filtering capabilities

For more detailed documentation and examples, visit [Aurora.Uix Documentation](https://hexdocs.pm/aurora_uix).

### Menux
Configure menus effortlessly:
```elixir
# Example coming soon
```

### Grantx
Manage permissions with precision:
```elixir
# Example coming soon
```

## Documentation

The docs can be found at <https://hexdocs.pm/aurora>.

