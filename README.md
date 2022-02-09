![Example usage](https://raw.githubusercontent.com/taboulot/fzf-idb/master/example.gif)

# Dependencies

- [fzf](https://github.com/junegunn/fzf)

> on macOS: `brew install fzf`

- [idb](https://stedolan.github.io/jq/)

> on macOS: `brew tap facebook/fb && brew install idb-companion && pip3.6 install fb-idb`

- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

# Installation

Clone the repo in `.oh-my-zsh/plugins/fzf-idb`

```bash
git clone https://github.com/taboulot/fzf-idb ~/.oh-my-zsh/plugins/fzf-idb
```

Then add the plugin to your `.zshrc`

```bash
# In your .zshrc
plugins=(... fzf-idb ...)
```

# Usage

If you don't like the `**` prefix (which is a fzf thing), you may change it in your `zshrc`:

```bash
export FZF_COMPLETION_TRIGGER='**'
```

I personally put `,` instead :wink:

## Scripts list

```bash
idb boot ,
```

or if you change the config like I did

```bash
# If you change the fzf completion trigger to ','
idb boot ,<TAB>
```
