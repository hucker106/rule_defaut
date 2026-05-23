#RequireAdmin
#include <Array.au3>
#include <File.au3>
#include '_ckRequest.au3'


Global $gSettings = FileRead(@ScriptDir & '\Settings\Settings.txt')
Global $gCase = StringRegExp($gSettings, 'Case=(.+)', 3)[0]
Global $g_UserAgent = StringRegExp($gSettings, 'UserAgent=(.+)', 3)[0]
Global $g_LinkExec_Total = StringRegExp($gSettings, 'Linkexec_Total=(.+)', 3)[0]

Local $sHTTP_GGS = Ck_HttpCreate()

$sAPIGG_Data = _GGSheet_GetValue_Multi($sHTTP_GGS, 'APIGG', '{"Case":"' & $gCase & '"}')
ConsoleWrite($sAPIGG_Data & @CRLF)
Local $s_LinkExec_Case = StringRegExp($sAPIGG_Data, '"LinkExec":"(.*?)"', 3)[0]
$sFileopen = FileOpen(@ScriptDir & '\Settings\Linkexec_Case.txt', 2)
FileWrite($sFileopen, $s_LinkExec_Case)
FileClose($sFileopen)




Func _GGSheet_GetValue_Multi($sHTTP, $sSheetTab, $sFilter)
	Local $sRes = 'False'
	Local $sUrl = $g_LinkExec_Total
	Local $sDataPost = '{"get":[{"sheet":"' & $sSheetTab & '","FilterMulti":' & $sFilter & '}]}'
	Local $s_GGSheet_Post = _GGSheet_Post($sHTTP, $sUrl, $sDataPost)
;~ 	ConsoleWrite($s_GGSheet_Post & @CRLF)
	Local $oJson = _HttpRequest_ParseJSON($s_GGSheet_Post)
	$sRes = $oJson.get_results.item(0).data.toStr()
;~ 	ConsoleWrite($sRes & @CRLF)
	Return $sRes
EndFunc   ;==>_GGSheet_GetValue_Multi


Func _GGSheet_Post($sHTTP, $sUrl, $sDataPost)
	$sRes = 'False'
	For $i = 1 To 3
		Local $sRq1 = Ck_HttpRequest($sHTTP, 'POST ' & $sUrl, $sDataPost)
		ConsoleWrite($sRq1 & @CRLF)
		If StringInStr($sRq1, '"status":"success"') Then
			$sRes = $sRq1
			ExitLoop
		EndIf
	Next
	Return $sRes
EndFunc   ;==>_GGSheet_Post
