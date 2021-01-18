# zsh-web-open
custom oh-my-zsh plugin
This plugin adds aliases for opening web pages.

# installation

1) Clone repo:
`git clone https://github.com/AndrewHaluza/zsh-web-open.git ~/.oh-my-zsh/custom/plugins/web-open/`

2) Open your `~/.zshrc` file and enable the `web-open` plugin:
```zsh
plugins=( ... web-open)
```

## Usage

You can use the `web-open` plugin in form:
* `wo <url> <protocol=optional>`

For example, these two are equivalent:

```zsh
$ wo localhost 1
$ o-localhost
```

Available protocol values are:

| Context               | URL                                      |
|-----------------------|------------------------------------------|
| `0`                   | `https`                                  |
| ``                    | `https`                                  |
| `1`                   | `http`                                   |
| any                   | `http`                                   |


Examples:

* `wo duckduckgo.com` -> https://duckduckgo.com
* `wo not-secured.com 1` -> http://not-secured.com


## Dependencies
Fully compatible with ubuntu 20.04
