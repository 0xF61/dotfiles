function onlinehashcrack
    curl -X POST -F "email=test@mail.com" -F "file=@"$argv https://api.onlinehashcrack.com --progress-bar
end
