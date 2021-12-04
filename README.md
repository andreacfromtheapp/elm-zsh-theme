# Elm zsh Theme

a simple zsh theme with some useful ```git``` information, and date and clock to the right.

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

- Create the custom themes directory if needed:

```bash
mkdir -p $ZSH_CUSTOM/themes
```

- Download the theme into oh-my-zsh's custom themes directory:

```bash
curl -sLJ https://raw.githubusercontent.com/gacallea/elm-zsh-theme/master/themes/elm.zsh-theme -o $ZSH_CUSTOM/themes/elm.zsh-theme
```

- Set ```elm``` as your theme in ```~/.zshrc```:

```text
ZSH_THEME="elm"
```

## CUSTOMIZATION

This theme is easy to modify and customize.

Suppose you don't really fancy the date and clock on the right, just empty ```RPROMPT```:

```text
RPROMPT=""
```

Don't like to be reminded about how functional programming is great, everyday? Change the leading character from **λ** to whatever you fancy:

```text
# Leading Character
local lead_char='%{$WHITE_BOLD%}λ%{$RESET_COLOR%}'
```

Same for the separator **::** character:

```text
# Separator Char
local separator='%{$WHITE%}::%{$RESET_COLOR%}'
```

## LICENSE

This theme is licensed under the terms of the [GPLv3](https://www.gnu.org/licenses/gpl-3.0.en.html) or later license. A copy of the GPLv3 is included [here](LICENSE).
