function fish_greeting
    if test -f ~/Share/git/mywiki/content/_index.md
        paste (cal|psub) (sed -n "5,12p" ~/Share/git/mywiki/content/_index.md|psub)
    else
        cal
    end
end
