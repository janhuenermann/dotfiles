# Some useful commands!
# 
# Requirements: fzf awk 
#
# Find files
ff()
{
    find . -iname "*$1*" ${@:2} 2>&1 | grep -vE "Permission denied|Operation not permitted"
}

# Find dir
fd() {
    local dir
    dir=$(find ${1:-.} -path '*/\.*' -prune \
                       -o -type d -print 2> /dev/null | fzf +m) &&
    cd "$dir"
}

# Search zsh history
fh() {
    eval $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}

# ch - browse chrome history
ch() {
    local cols sep
    cols=$(( COLUMNS / 3 ))
    sep='{::}'

    cp -f ~/Library/Application\ Support/Google/Chrome/Default/History /tmp/chrome_history

    sqlite3 -separator $sep /tmp/chrome_history \
                       "select substr(title, 1, $cols), url
                        from urls order by last_visit_time desc" |
    awk -F $sep '{printf "%-'$cols's  \x1b[36m%s\x1b[m\n", $1, $2}' |
    fzf --ansi --multi --tiebreak index | sed 's#.*\(https*://\)#\1#' | xargs open
}

killtouchbar() {
    touchbar_pid=$(ps aux | grep TouchBar | awk '$11 == "/usr/libexec/TouchBarServer" { print $2 }' -)
    sudo kill $touchbar_pid
    echo "DONE"
}