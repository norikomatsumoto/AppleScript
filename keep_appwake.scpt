on idle
--書き出す→アプリケーション：ハンドラの実行後に終了しないにチェック：起動項目に入れる
	try
		tell application "Finder"
			
			 --稼働しているかチェック
			set deadorlive to application "xxx.app" is running
		
			if deadorlive is false then
      --念の為終了をかける
				tell application "xxx.app" to quit
        
				delay 10
				
				tell application "xxx.app"
					activate
				end tell
			end if
			
		end tell
		
	on error
		return 1
	end try
	
end idle
