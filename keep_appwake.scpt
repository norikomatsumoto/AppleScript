-->on idle：常駐監視で、指定アプリをの生き死にをチェック>終了していたら　指定アプリを立ち上げる：
-->ファイル→書き出し→アプリケーション：ハンドラの実行後に終了しないにチェック：できたアプリケーションを起動項目に入れる

-->byNorikomatsUMoto 2013
on idle
	try
		tell application "Finder"
			
			 --稼働しているかチェック
			set deadorlive to application "xxx.app" is running
		
			if deadorlive is false then
     			 --念の為終了をかける
				tell application "xxx.app" to quit
        
				delay 10
			   --起動終了をかける

				tell application "xxx.app"
					activate
				end tell
			end if
			
		end tell
		
	on error
		return 1
	end try
	
end idle
