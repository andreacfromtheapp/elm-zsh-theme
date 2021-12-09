# Color shortcuts
RED=$fg[red]
YELLOW=$fg[yellow]
GREEN=$fg[green]
WHITE=$fg[white]
BLUE=$fg[blue]
RED_BOLD=$fg_bold[red]
YELLOW_BOLD=$fg_bold[yellow]
GREEN_BOLD=$fg_bold[green]
WHITE_BOLD=$fg_bold[white]
BLUE_BOLD=$fg_bold[blue]
RESET_COLOR=$reset_color

# Format for git_prompt_info()
ZSH_THEME_GIT_SHOW_UPSTREAM=1
ZSH_THEME_GIT_PROMPT_PREFIX="%{$YELLOW%}«"
ZSH_THEME_GIT_PROMPT_SUFFIX="» %{$RESET_COLOR%}"
ZSH_THEME_GIT_PROMPT_SEPARATOR="|"

# Format for git_prompt_status()
ZSH_THEME_GIT_PROMPT_ADDED="%{$GREEN%}added%{$RESET_COLOR%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$YELLOW%}modified%{$RESET_COLOR%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$YELLOW%}renamed%{$RESET_COLOR%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$RED%}deleted%{$RESET_COLOR%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$RED%}unmerged%{$RESET_COLOR%}"
ZSH_THEME_GIT_PROMPT_DIVERGED="%{$RED%}diverged%{$RESET_COLOR%}"

# Format for git_prompt_long_sha() and git_prompt_short_sha()
ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%{$WHITE%}[%{$YELLOW%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$WHITE%}]"

# Leading Character
local lead_char='%{$WHITE_BOLD%}λ%{$RESET_COLOR%}'

# Separator Char
local separator='%{$WHITE%}::%{$RESET_COLOR%}'

# Format root vs non-root user
if [[ $UID -eq 0 ]]; then
    local user_host='%{$RED%}%n@%m%{$RESET_COLOR%}'
    local user_path='%{$YELLOW%}%2~%{$RESET_COLOR%}'
    local user_symbol='%{$RED%}|>%{$RESET_COLOR%}'
else
    local user_host='%{$GREEN%}%n@%m%{$RESET_COLOR%}'
    local user_path='%{$BLUE%}%2~%{$RESET_COLOR%}'
    local user_symbol='%{$WHITE_BOLD%}|>%{$RESET_COLOR%}'
fi

# Git Super Status
local git_super_status='$(git_super_status)'

# Branch Info
local branch_info='%{$GREEN%}$(git_prompt_info) $(git_prompt_short_sha) $(git_prompt_status)%{$RESET_COLOR%}'

# Time and Date
local time_and_date='%{$GREEN%}[%D{%Y-%m-%d %L:%M:%S %p}]'; TMOUT=1; TRAPALRM(); { zle reset-prompt }

# Prompt format
PROMPT="${lead_char} ${user_host} ${separator} ${user_path} ${git_super_status} ${branch_info}
${user_symbol} "
RPROMPT="${time_and_date}"
