-->キー入力でスタートする、アプリの稼働テスト用
-->テストセット指定回数分、自動で指定キーを入力し>テストを回す。


-->１体験全体の秒数
set wait_time to 30

-->自動キー入力したいキー
set key_str to "b"

-->テストの繰り返しの回数
set repeat_count to 100

-->アプリのキー入力シーンまでの秒数
set key_scenetime to 20
-->自動キー入力テストにかけたいアプリ名

set app_name to "@@@@.app"

repeat repeat_count times
	
	tell application app_name
		
		activate
		tell application "System Events"
			
			tell application process app_name
				
				delay key_scenetime
				
				keystroke key_str
				
			end tell
		end tell
	end tell
	delay wait_time
	
end repeat
