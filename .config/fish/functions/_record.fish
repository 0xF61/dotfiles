function _record
	set pwd_fish_logs ~/.local/cache/fish_logs

	if not test -d $pwd_fish_logs
		mkdir -p $pwd_fish_logs
	end

	if not test -f $pwd_fish_logs/(date +"%Y-%m-%d-%T")
		script $pwd_fish_logs/(date +"%Y-%m-%d-%T")
	end
end
