--アプリケーションの起動、マシン終了などのスケジュール用
--ファイル>書き出し＞自動的に終了〜にチェックを外し>アプリケーションとして書き出す
property appNamePath : ""

on idle
	try
		set theTime to time of (current date)
		set Hr to (theTime div 3600)
		set theTime to theTime - Hr * 3600
		set Min to (theTime div 60)
		set theTime to theTime - Min * 60
		set Sec to theTime
		
		if Hr = 20 and Min = 0 and Sec = 0 then
			macQuit()
		end if
		
		if Hr = 6 and Min = 0 and Sec = 0 then
			macRestart()
		end if
		if Hr = 9 and Min = 0 and Sec = 0 then
			activeApp()
		end if
		
		return 1
	on error
		
	end try
end idle


on macQuit()
	try
		(*tell application "appdeadchecker"
			quit
		end tell*)
		delay 15
		tell application "System Events"
			shut down
		end tell
	on error
		
	end try
	
end macQuit

on macRestart()
	try
		(*tell application "appdeadchecker"
			quit
		end tell*)
		delay 15
		tell application "System Events"
			restart
		end tell
	on error
		
	end try
	
end macRestart

on activeApp()
	try
		tell application appNamePath
			activate
		end tell
	on error
		
	end try
end activeApp
