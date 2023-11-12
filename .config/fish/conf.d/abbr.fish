if status is-interactive
	abbr              ,sysupgrade  'yay -Syyuu --noconfirm  && yes | yay -Scc && parallel sudo sbctl sign ::: (sudo sbctl verify | awk \'/signed/ {print $2}\')'
	abbr --set-cursor ,bad         'docker run --name bad --rm% -v="$PWD:/bad/" -e=DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:ro -ti ghcr.io/0xf61/bad:main'
	abbr --set-cursor ,feroxbuster 'feroxbuster -w /opt/onelistforallmicro.txt -u $url% -k'
	abbr --set-cursor ,ffuf        'ffuf -w /usr/share/seclists/Discovery/Web-Content/combined_words.txt:FUZZ -w $urlsf%:URL -u URL/FUZZ -mc 200 -of csv -o multiple_ffuf.csv'
	abbr --set-cursor ,httpx       'httpx -l $domainsf% -sc -title --tech-detect -p 80,81,8080,443,445,457,3000,5000,8443,8888,7001,8008,8015 -t 10 -o httpx.out'
	abbr --set-cursor ,katana      'katana -u $url% -jc -d 5 -c 50 -ef css,woff,woff2,eot,ttf,tiff,tif -kf robotstxt,sitemapxml -o OUT'
	abbr --set-cursor ,masscan     'masscan --rate 1000 -p- -iL $scopef%'
	abbr --set-cursor ,nmapsweep   'nmap -sn -d -oG scope.sweep -iL $scopef%'
	abbr --set-cursor ,nmap        'nmap --min-rate 6666 -d -vv -iL $scopef% --max-rtt-timeout 500 -p-'
	abbr --set-cursor ,nuclei      'nuclei -et $HOME/nuclei-templates/misconfiguration/http-missing-security-headers.yaml -l $listf% -rl 100 -c 20 -o nuclei.log'
	abbr --set-cursor ,sqlmap      'sqlmap -r $PWD/req.txt% # -D $db -T $tb -C $clmn --dump'
	abbr --set-cursor ,xfreerdp    'xfreerdp /dynamic-resolution /v:$ip% /u:$user /p:$pass'
end
