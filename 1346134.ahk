ID := "88"
Token := "e0fb4fb73d95d64d4cbfe46c387f728480c79454f1dc9030d6810538f57d6543da5c51276ed776a5aa00c"
Text := "тi пидор"

1::
	URLDownloadToFile, https://api.vk.com/method/messages.send.xml?chat_id=88&message=%Text%&v=5.37&access_token=%Token%, 125.txt
return
2::
	ExitApp
return

