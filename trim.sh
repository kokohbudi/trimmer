#!/bin/bash
datecheck() {
    local format="$1" d="$2"
    [[ "$(date "+$format" -d "$d" 2>/dev/null)" == "$d" ]]
}

do_trim() {
    notify-send 'Trimming Disk';
	output=$(pkexec fstrim --fstab -v);
	notify-send 'Trim SSD' "$output";
	echo $output >> ~/ssdtrim;
}


mkdir ~/.ssdtrimmer
cd ~/.ssdtrimmer
last_trim_file=lasttrim
currendate=$(date +"%Y%m%d")
if [ -f "$last_trim_file" ]; then
	last_trim=$(cat $last_trim_file)
	if datecheck "%Y%m%d" $last_trim; then
		last_trim_date="$(date -d "$last_trim" '+%s')"
		todaydate="$(date '+%s')"
		diff_days=$(( ($todaydate - $last_trim_date) / (3600 * 24) ))
		echo $diff_days
		if [ $diff_days -gt 14 ] || [ $diff_days -eq 14 ]; then
			sleep 120
			do_trim
			echo $currendate > $last_trim_file
		fi
	else
    	echo $currendate > $last_trim_file
	fi
else
	touch $last_trim_file
	echo $currendate > $last_trim_file
	do_trim
fi
