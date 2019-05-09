
# highlight only grep
function grepe {
    grep --color -E "$1|$" $2
}