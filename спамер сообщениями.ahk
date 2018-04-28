F1::
	Loop, 153
	{
		whr.Open("POST", "https://api.vk.com/method/messages.send?chat_id=88&message=тi%20пидор&v=5.37&access_token=e0fb4fb73d95d64d4cbfe46c387f728480c79454f1dc9030d6810538f57d6543da5c51276ed776a5aa00c", true)
	}
return
	
ComObjError(false)
whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")

;MsgBox, , , "https://api.vk.com/method/messages.send?chat_id=88&message=" %texter% "%&v=5.37&access_token=%Token%

;https://api.vk.com/method/messages.send?user_id=172076547message=тi пидор&v=5.37&access_token=e0fb4fb73d95d64d4cbfe46c387f728480c79454f1dc9030d6810538f57d6543da5c51276ed776a5aa00c

;docs.getMessagesUploadServer?peer_id=" ID "&type=doc&access_token=" Token, true)
whr.SetRequestHeader("User-Agent", "Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36")
whr.SetRequestHeader("Content-Type","application/x-www-form-urlencoded")
whr.Send()
whr.WaitForResponse(60)
if (whr.Status != 200) {
	return
}
F2::
	ExitApp
return