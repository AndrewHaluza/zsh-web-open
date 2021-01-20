# zsh-web-open

custom oh-my-zsh plugin
This plugin adds aliases for opening web pages.

# installation

1. Clone repo:
   `git clone https://github.com/AndrewHaluza/zsh-web-open.git ~/.oh-my-zsh/custom/plugins/web-open/`

2. Open your `~/.zshrc` file and enable the `web-open` plugin:

```zsh
plugins=( ... web-open)
```
## Usage

You can use the `web-open` plugin in form:

- `wo <url> <protocol=[optional default https]>`
- `lo <port> <url> <protocol=[optional - default http]>`

For example, these two are equivalent:

```zsh
$ wo localhost 1                                # http://localhost
$ wo duckduckgo.com?q='how-to-download-ram?'    # https://duckduckgo.com?q='hot-to-download-ram?
$ lo 5432                                       # http://localhost:5432
$ lo 5454 blog/article-page-1/                  # http://localhost:5454/blog/article-page-1/
$ lo 4321 1                                     # https://localhost:4321
```

## Available protocol values:

| Command | Value   | Result  |
| ------- | ------- | ------- |
| `wo`    | `0`     | `https` |
| `wo`    | `1`     | `http`  |
| `wo`    | *empty* | `https` |
| `wo`    | *any*   | `http`  |
| `lo`    | `1`     | `https` |
| `lo`    | *empty* | `http`  |
| `lo`    | *any*   | `http`  |

Examples:

- `wo duckduckgo.com`    -> https://duckduckgo.com
- `wo not-secured.com 1` -> http://not-secured.com
- `lo 4378`              -> http://localhost:4378
- `lo 4668 dachboard/ 1` -> https://localhost:4668/dashboard/

## Dependencies

Fully compatible with ubuntu 20.04
