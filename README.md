# Elm Zsh Theme

```Elm``` is a simple Zsh theme that I fancy and that I've created for personal use. Its name (which is a tribute to [Elm Lang](https://elm-lang.org)), and the leading λ and separator :: characters, are an expression of my love for functional programming.

![Elm Zsh Theme](elm.zsh-theme.png)

## FEATURES

PROMPT:

- leading character
- user @ hostname
- separator character
- path: 1up/current dir
- git_super_status
- branch_info

RPROMPT:

- date and clock

## USAGE

- Download the theme into OhMyZsh custom themes directory:

```bash
curl -sLJ https://raw.githubusercontent.com/gacallea/elm-zsh-theme/master/elm.zsh-theme -o $ZSH_CUSTOM/themes/elm.zsh-theme
```

- Set ```elm``` as your theme in ```~/.zshrc```:

```text
ZSH_THEME="elm"
```

### YOU MAY NEED

- To install and use [OhMyZsh](https://ohmyz.sh/).
- To enable the ```git-prompt``` plugin.
- To install and use [Fira Code](https://github.com/tonsky/FiraCode).

## CUSTOMIZATION

This theme is easy to modify and customize.

Suppose you don't really fancy the date and clock on the right, just empty ```RPROMPT```:

```text
RPROMPT=""
```

Or that you don't care about [why functional programming matters](https://www.youtube.com/watch?v=IyR04U66z7E), just change the leading ```λ``` to whatever you fancy:

```text
# Leading Character
local lead_char='%{$WHITE_BOLD%}λ%{$RESET_COLOR%}'
```

Same for the separator ```::``` character:

```text
# Separator Char
local separator='%{$WHITE%}::%{$RESET_COLOR%}'
```

## LICENSE

This theme is licensed under the terms of the [GPLv3](https://www.gnu.org/licenses/gpl-3.0.en.html) or later license. A copy of the GPLv3 is included [here](LICENSE).
