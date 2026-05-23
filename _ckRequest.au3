;https://mmo4me.com/forums/sock-proxy-ssh.94/
;nhớ thêm tPeCxe_ cho Key

#cs 7 KEY 5 năm
	q8rew6.CBX1125_QC5p5meQN0kG
	y6Qoxu.CBX1125_fVDufFHZJSAZ
	kqAfpj.CBX1125_lub0JLL2Vm2G
	3PWgZn.CBX1125_yyAGYGZTNH2D
	Swmd09.CBX1125_AtLFVP1o6B4d
	4SV1iH.CBX1125_gJ9Ybcnd9h0w
	UxtXGJ.CBX1125_Fyhb6MM14Gp8
#ce 7 KEY 5 năm

#H2Obf_Bypass_Start=ckRequest.au3
#include-once
#include <_HttpRequest.au3>

Global $g_CHILKAT__RedirectUrl = ''
Global $g_CHILKAT__UnlockBundleKey = 'tPeCxe_q8rew6.CBX1125_QC5p5meQN0kG'
Global $g_CHILKAT__LastResponseHeaders = ''
Global $g_CHILKAT__DebugRequestHeaders = False
Global $g_CHILKAT__AutoDetectFileInput = True
Global $g_CHILKAT__EnhanceRedirect = True
Global $g_CHILKAT__AcceptCharset = 'utf-8'
Global $g_CHILKAT__pFuncDLCallback = ''
Global $g_CHILKAT__ShowNotify = True
Global $g_CHILKAT__Synchronous = 1
Global $g_CHILKAT__MaxThreads = 200
Global $g_CHILKAT__aSsh[1] = [0]
Global $g_CHILKAT__aTask[1] = [0]
Global $g_CHILKAT__pathDll = ''
Global $g_CHILKAT__hDll = -1
Global $g_CHILKAT__oGlobal
Global $g_CHILKAT__oCrypt

Global $g_mCHILKAT_Dict_HttpSession = ObjCreate("Scripting.Dictionary")
Global $g_mCHILKAT_Dict_HttpOption = ObjCreate("Scripting.Dictionary")
Global $g_mCHILKAT_Dict_WsSession = ObjCreate("Scripting.Dictionary")
Global $g_mCHILKAT_Dict_WsOption = ObjCreate("Scripting.Dictionary")
Global $g_mCHILKAT__HttpSessionID = 0
Global $g_mCHILKAT__WsSessionID = 0

Global Enum _
		$g_CHILKAT__iTaskStatus_Success = 0, _
		$g_CHILKAT__iTaskStatus_Running, _
		$g_CHILKAT__iTaskStatus_NotTaskObj, _
		$g_CHILKAT__iTaskStatus_Timeout, _
		$g_CHILKAT__iTaskStatus_Canceled, _
		$g_CHILKAT__iTaskStatus_Failure

Global Const $g_CHILKAT__def_UA = 'Mozilla/5.0 (Windows NT ' & StringFormat('%.1f', StringRegExpReplace(@OSVersion, '\D', '')) & '; Win' & (@OSArch = 'X64' ? 64 : 32) & '; ' & @CPUArch & ') AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.63 Safari/537.36'

Func Ck_GetRedirect()
	Return $g_CHILKAT__RedirectUrl
EndFunc   ;==>Ck_GetRedirect

Func Ck_CryptCreate()
	;https://www.chilkatsoft.com/refdoc/xChilkatCrypt2Ref.html
	If $g_CHILKAT__hDll = -1 Then
		Ck_StartUp(Default)
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_HttpCreate', 'The Chilkat.dll has not been initialized.')
	EndIf
	;------------------------------------------------------------------------
	$g_CHILKAT__oCrypt = ObjCreate('{1AF44DC7-C896-46BA-B45B-C168FA7612A6}', '{380B144D-5AF4-4DC3-BBDF-AD8E25F16188}', $g_CHILKAT__hDll)
	If Not IsObj($g_CHILKAT__oCrypt) Then Return SetError(1, _Ck_ErrNotify('Ck_CryptCreate', 'Chilkat Crypt2 Object creation failed'), '')
	Return $g_CHILKAT__oCrypt
	;Prop:
	;.CipherMode  (AES, Blowfish,TwoFish, DES, 3DES, RC2). Possible values are "CBC" (the default) , "ECB", "CTR", "OFB", "GCM", and "CFB".
	;.CryptAlgorithm "chacha20", "pki", "aes", "blowfish", "blowfish2", "des", "3des", "rc2", "arc4", "twofish", "pbes1" and "pbes2" The default value is "aes"
	;.HashAlgorithm "sha1", "sha256", "sha384", "sha512", "md2", "md5", "haval", "ripemd128", "ripemd160","ripemd256", or "ripemd320". The default value is "sha1".
	;.EncodingMode "Base64", "modBase64", "base64url", "Base32", "Base58", "UU", "QP" (for quoted-printable), "URL" (for url-encoding), "Hex", "Q", "B", "url_oauth", "url_rfc1738", "url_rfc2396", "url_rfc3986", "fingerprint", or "decimal". The default value is "base64"
	;.IV param for encryption algorithms (AES, Blowfish, Twofish)
	;.KeyLength The key length in bits for symmetric encryption algorithms. The default value is 256.
	;.PaddingScheme AES (Rijndael), Blowfish, Twofish, RC2, DES, 3DE. default value  is 0. 0 = RFC 1423/1 = FIPS81/2 = Each padding byte is set to a random value/3 = Pad with NULLs/4 = Pad with SPACE chars(0x20)
	;Salt As Variant
	;SecretKey As Variant The length in bytes of the SecretKey must equal the KeyLength/8.

	;Method:
	;ByteSwap4321(data As Variant) As Variant

	;DecryptBytes(data As Variant) As Variant CryptAlgorithm, CipherMode, PaddingScheme, KeyLength, IV, and SecretKey properties must match.
	;DecryptString(data As Variant) As String
	;EncryptBytes(data As Variant) As Variant
	;EncryptString(str As String) As Variant The minimal set of properties that should be set before encrypting are: CryptAlgorithm, SecretKey, Charset. Other properties that control encryption are: CipherMode, PaddingScheme, KeyLength, IV.

	;Pbkdf1(password As String, charset As String, hashAlg As String, salt As String, ByVal iterationCount As Long, ByVal outputKeyBitLen As Long, encoding As String) As String
	;Pbkdf2(password As String, charset As String, hashAlg As String, salt As String, ByVal iterationCount As Long, ByVal outputKeyBitLen As Long, encoding As String) As String
	;
EndFunc   ;==>Ck_CryptCreate

Func Ck_Crypt_2FA($HOTP_Or_TOTP = 'totp', $SecretString = '', $SecretEncoding = 'base32', $tStep_or_counterHex = 30, $numDigits = 6, $hashAlgorithm = 'sha1')
	;$SecretEncoding: base64, base32, hex, ascii ...
	If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_Crypt_2FA', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
	;----------------------------------------------------------------------------------------------------------------------------------------------------------------------
	If Not IsObj($g_CHILKAT__oCrypt) Then
		Ck_CryptCreate()
		If Not IsObj($g_CHILKAT__oCrypt) Then Return SetError(1, 0, '')
	EndIf
	;----------------------------------------------------------------------------------------------------------------------------------------------------------------------
	If $HOTP_Or_TOTP = Default Or Not $HOTP_Or_TOTP Then $HOTP_Or_TOTP = 'totp'
	If $HOTP_Or_TOTP = 'totp' Then
		Return $g_CHILKAT__oCrypt.Totp(StringStripWS($SecretString, 8), $SecretEncoding, 0, '', $tStep_or_counterHex, $numDigits, -1, $hashAlgorithm)
	Else
		Return $g_CHILKAT__oCrypt.Hotp(StringStripWS($SecretString, 8), $SecretEncoding, Hex($tStep_or_counterHex, 16), $numDigits, -1, $hashAlgorithm)
	EndIf
EndFunc   ;==>Ck_Crypt_2FA

Func Ck_Crypt_Bzip2($input)
	If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_Crypt_Bzip2', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
	;----------------------------------------------------------------------------------------------------------------------------------------------------------------------
	If Not IsObj($g_CHILKAT__oCrypt) Then
		Ck_CryptCreate()
		If Not IsObj($g_CHILKAT__oCrypt) Then Return SetError(1, 0, '')
	EndIf
	;----------------------------------------------------------------------------------------------------------------------------------------------------------------------
	If BinaryMid($input, 1, 4) = Binary('0xE1A794B3') Then
		Return $g_CHILKAT__oCrypt.InflateBytes($input)
	Else
		Return $g_CHILKAT__oCrypt.CompressBytes(IsBinary($input) ? $input : StringToBinary($input, 4))
	EndIf
EndFunc   ;==>Ck_Crypt_Bzip2

Func Ck_Crypt_CRC32($inData_or_FileFullPath, $ReturnHex = True)
	If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_Crypt_CRC32', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
	;----------------------------------------------------------------------------------------------------------------------------------------------------------------------
	If Not IsObj($g_CHILKAT__oCrypt) Then
		Ck_CryptCreate()
		If Not IsObj($g_CHILKAT__oCrypt) Then Return SetError(1, 0, '')
	EndIf
	;----------------------------------------------------------------------------------------------------------------------------------------------------------------------
	Local $vRet = ''
	If StringRegExp($inData_or_FileFullPath, '^\w+\:[\\\/]') And FileExists($inData_or_FileFullPath) Then
		$vRet = $g_CHILKAT__oCrypt.CrcFile("CRC-32", $inData_or_FileFullPath)
	ElseIf IsBinary($inData_or_FileFullPath) Or (IsString($inData_or_FileFullPath) And StringRegExp($inData_or_FileFullPath, '(?i)^0x[[:xdigit:]]+$')) Then
		$vRet = $g_CHILKAT__oCrypt.CrcBytes("CRC-32", Binary($inData_or_FileFullPath))
	Else
		$vRet = $g_CHILKAT__oCrypt.CrcBytes("CRC-32", StringToBinary($inData_or_FileFullPath, 4))
	EndIf
	$vRet = Hex($vRet)
	If $ReturnHex = Default Or $ReturnHex Then Return $vRet
	Return Dec($vRet, @AutoItX64 ? 2 : 1)
EndFunc   ;==>Ck_Crypt_CRC32

Func Ck_Crypt_ReEncode($encodedData, $fromEncoding, $toEncoding)
	;$Encoding = "base64", "hex", "quoted-printable" (or "qp"), "url", "base32", "Q", "B", "url_rc1738", "url_rfc2396", "url_rfc3986", "url_oauth", "uu", "modBase64", or "html" (for HTML entity encoding).
	If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_Crypt_ReEncode', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
	;----------------------------------------------------------------------------------------------------------------------------------------------------------------------
	If Not IsObj($g_CHILKAT__oCrypt) Then
		Ck_CryptCreate()
		If Not IsObj($g_CHILKAT__oCrypt) Then Return SetError(1, 0, '')
	EndIf
	;----------------------------------------------------------------------------------------------------------------------------------------------------------------------
	Return $g_CHILKAT__oCrypt.ReEncode($encodedData, $fromEncoding, $toEncoding)
EndFunc   ;==>Ck_Crypt_ReEncode

Func Ck_Crypt_Encode($inData, $Encoding = 'url')
	;$Encoding = "base64", "hex", "quoted-printable" (or "qp"), "url", "base32", "Q", "B", "url_rc1738", "url_rfc2396", "url_rfc3986", "url_oauth", "uu", "modBase64", or "html" (for HTML entity encoding).
	If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_Crypt_Encode', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
	;----------------------------------------------------------------------------------------------------------------------------------------------------------------------
	If Not IsObj($g_CHILKAT__oCrypt) Then
		Ck_CryptCreate()
		If Not IsObj($g_CHILKAT__oCrypt) Then Return SetError(1, 0, '')
	EndIf
	;----------------------------------------------------------------------------------------------------------------------------------------------------------------------
	If IsString($inData) And StringInStr($Encoding, 'url', 0, 1) And StringRegExp($inData, '(^|\&)\w+=') Then
		Local $sResult = ''
		Local $aData2Send = StringRegExp($inData, '(?:^|\&)([^\=]+)=([^\&]*)', 3), $uBound = UBound($aData2Send)
		If Mod($uBound, 2) Then Return SetError(2, '', '')
		For $i = 0 To $uBound - 1 Step 2
			If Not StringRegExp($aData2Send[$i], '\%\w\w?') Then $aData2Send[$i] = $g_CHILKAT__oCrypt.EncodeString($aData2Send[$i], $g_CHILKAT__AcceptCharset, $Encoding)
			If Not StringRegExp($aData2Send[$i + 1], '\%\w\w?') Then $aData2Send[$i + 1] = $g_CHILKAT__oCrypt.EncodeString($aData2Send[$i + 1], $g_CHILKAT__AcceptCharset, $Encoding)
			$sResult &= $aData2Send[$i] & '=' & $aData2Send[$i + 1] & '&'
		Next
		Return StringTrimRight($sResult, 1)
	ElseIf IsString($inData) And StringRegExp($inData, '(?i)^0x[[:xdigit:]]+$') Then
		Return $g_CHILKAT__oCrypt.Encode(Binary($inData), $Encoding)
	ElseIf IsBinary($inData) Then
		Return $g_CHILKAT__oCrypt.Encode($inData, $Encoding)
	Else
		Return $g_CHILKAT__oCrypt.EncodeString($inData, $g_CHILKAT__AcceptCharset, $Encoding)
	EndIf
EndFunc   ;==>Ck_Crypt_Encode

Func Ck_Crypt_Decode($inData, $Encoding = 'url', $ReturnBinary = Default)
	;$Encoding = "base64", "hex", "quoted-printable" (or "qp"), "url", "base32", "Q", "B", "url_rc1738", "url_rfc2396", "url_rfc3986", "url_oauth", "uu", "modBase64", or "html" (for HTML entity encoding).
	If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_Crypt_Decode', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
	;----------------------------------------------------------------------------------------------------------------------------------------------------------------------
	If Not IsObj($g_CHILKAT__oCrypt) Then
		Ck_CryptCreate()
		If Not IsObj($g_CHILKAT__oCrypt) Then Return SetError(1, 0, '')
	EndIf
	;----------------------------------------------------------------------------------------------------------------------------------------------------------------------
	Local $vRet = $g_CHILKAT__oCrypt.Decode($inData, $Encoding)
	If $ReturnBinary = True Then Return $vRet
	Return BinaryToString($vRet, 4)
EndFunc   ;==>Ck_Crypt_Decode

Func Ck_Crypt_Hash($inData_or_FileFullPath, $Algorithm = Default, $ReturnBinary = Default)
	;HashAlgorithm "sha1", "sha256", "sha384", "sha512", "md2", "md5", "haval", "ripemd128", "ripemd160","ripemd256", or "ripemd320". The default value is "sha1".
	If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_Crypt_Decode', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
	;----------------------------------------------------------------------------------------------------------------------------------------------------------------------
	If Not IsObj($g_CHILKAT__oCrypt) Then
		Ck_CryptCreate()
		If Not IsObj($g_CHILKAT__oCrypt) Then Return SetError(1, 0, '')
	EndIf
	;----------------------------------------------------------------------------------------------------------------------------------------------------------------------
	With $g_CHILKAT__oCrypt
		.HashAlgorithm = ($Algorithm = Default Or Not $Algorithm) ? 'sha1' : $Algorithm
		Local $vRet
		If StringRegExp($inData_or_FileFullPath, '^\w+\:[\\\/]') And FileExists($inData_or_FileFullPath) Then
			$vRet = .HashFile($inData_or_FileFullPath)
		ElseIf IsString($inData_or_FileFullPath) And StringRegExp($inData_or_FileFullPath, '(?i)^0x[[:xdigit:]]+$') Then
			$vRet = .HashBytes(Binary($inData_or_FileFullPath))
		ElseIf IsBinary($inData_or_FileFullPath) Then
			$vRet = .HashBytes($inData_or_FileFullPath)
		Else
			$vRet = .HashBytes(StringToBinary($inData_or_FileFullPath, 4))
		EndIf
	EndWith
	If $ReturnBinary = True Then Return $vRet
	Return StringLower(Hex($vRet))
EndFunc   ;==>Ck_Crypt_Hash

Func Ck_Crypt_Mac($inData, $inKey, $hashAlgorithm, $MacAlgorithm = Default, $ReturnBinary = Default)
	;HashAlgorithm "sha1", "sha256", "sha384", "sha512", "md2", "md5", "haval", "ripemd128", "ripemd160","ripemd256", or "ripemd320". The default value is "sha256".
	;$MacAlgorithm = "hmac" or "poly1305"
	If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_Crypt_Mac', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
	;----------------------------------------------------------------------------------------------------------------------------------------------------------------------
	If Not IsObj($g_CHILKAT__oCrypt) Then
		Ck_CryptCreate()
		If Not IsObj($g_CHILKAT__oCrypt) Then Return SetError(1, 0, '')
	EndIf
	;----------------------------------------------------------------------------------------------------------------------------------------------------------------------
	With $g_CHILKAT__oCrypt
		.MacAlgorithm = ($MacAlgorithm = Default Or Not $MacAlgorithm) ? "hmac" : $MacAlgorithm
		.HashAlgorithm = ($hashAlgorithm = Default Or Not $hashAlgorithm) ? "SHA-256" : $hashAlgorithm
		$inData = (IsBinary($inData) Or (IsString($inData) And StringRegExp($inData, '(?i)^0x[[:xdigit:]]+$'))) ? Binary($inData) : StringToBinary($inData, 4)
		$inKey = (IsBinary($inKey) Or (IsString($inKey) And StringRegExp($inKey, '(?i)^0x[[:xdigit:]]+$'))) ? Binary($inKey) : StringToBinary($inKey, 4)
		.SetMacKeyBytes($inKey)
		Local $vRet = .MacBytes($inData)
	EndWith
	If $ReturnBinary = True Then Return $vRet
	Return StringLower(Hex($vRet))
EndFunc   ;==>Ck_Crypt_Mac


#Region CHILKAT HTTP REQUEST
	Func Ck_HttpCreate($sCookieSavePath = Default, $sSessionLogPath = Default)
		;https://www.chilkatsoft.com/refdoc/xChilkatHttpRef.html
		If $g_CHILKAT__hDll = -1 Then
			Ck_StartUp(Default)
			If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_HttpCreate', 'The Chilkat.dll has not been initialized.')
		EndIf
		;------------------------------------------------------------------------
		If $sCookieSavePath = Default Then $sCookieSavePath = 'memory'
		If $sCookieSavePath == '' Then _Ck_ErrNotify('Ck_HttpCreate', '$sCookieSavePath is empty. That will prevent the cookies from being stored. It may affect the next requests.')
		;------------------------------------------------------------------------
		Local $oCK_HTTP = ObjCreate('{A74C26D2-2429-4099-8672-2250B15E327F}', '{C754C4B4-6B0A-4664-ADDD-45467F0BCB7E}', $g_CHILKAT__hDll)
		If Not IsObj($oCK_HTTP) Then Return SetError(2, _Ck_ErrNotify('Ck_HttpCreate', 'The Chilkat Http Object creation failed'), '')
		;------------------------------------------------------------------------
		With $oCK_HTTP
			If IsString($sSessionLogPath) And $sSessionLogPath Then .SessionLogFilename = $sSessionLogPath
			.AllowGzip = 0
			.AutoAddHostHeader = 0
			.FollowRedirects = 1
			.SendCookies = 1
			.CookieDir = $sCookieSavePath
		EndWith
		Return $oCK_HTTP
	EndFunc   ;==>Ck_HttpCreate

	Func Ck_HttpRequest(ByRef $oCK_HTTP, $sURL_and_Mode, $BodyData = '', $sRequestHeaders = '', $iConnectTimeoutMs = Default, $FuncDownloadCallback = Null)
		;https://www.chilkatsoft.com/refdoc/xChilkatHttpRef.html
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_HttpRequest', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
		If Not IsObj($oCK_HTTP) Then Return SetError(1, _Ck_ErrNotify('Ck_HttpRequest', '$oCK_HTTP isn''t the Chilkat Http Object'), '')
		;----------------------------------------------------------------------------------------------------------------------------------------------------------------------
		Local $aURL = StringRegExp($sURL_and_Mode, '(?i)^(.*?)\b(https?://.+)$', 3)
		If @error Then Return SetError(2, _Ck_ErrNotify('Ck_HttpRequest', '$sURL is not in the correct format'), '')
		Local $iMode = StringRegExp($aURL[0], '(?i)\b(A|T[1-4]?|H|B|O)\b', 1)
		$iMode = @error ? '' : $iMode[0]
		Local $iMethod = StringRegExp($aURL[0], '(?i)\b(GET|POST|PUT|PATCH|HEAD|DELETE)\b', 1)
		$iMethod = @error ? '' : $iMethod[0]
		Local $iOption = StringRegExp($aURL[0], '(?i)\B-(?|(RAW|PT)(\b)|([CR]TO)\h?(\d+)\b|(DL)\h?(?|"([^"]+?)"|''([^'']+?)'')\B)', 3)
		Local $iURL = $aURL[1]
		;----------------------------------------------------------------------------------------------------------------------------------------------------------------------
		Local $isChunk = 0, $isDownload = '', $isReturnPlainText = 0
		Local Static $isSetCookieJar = ''
		If $isSetCookieJar Then
			$oCK_HTTP.CookieDir = $isSetCookieJar
			$isSetCookieJar = ''
		EndIf
		;----------------------------------------------------------------------------------------------------------------------------------------------------------------------
		With $oCK_HTTP
			If $iConnectTimeoutMs = Default Or Not $iConnectTimeoutMs Or $iConnectTimeoutMs < 0 Then $iConnectTimeoutMs = 30000
			If $iConnectTimeoutMs > 4 And $iConnectTimeoutMs < 61 Then $iConnectTimeoutMs *= 1000
			.ConnectTimeout = Int($iConnectTimeoutMs / 1000)
			;---------------------------------------------
			Local $sMethod = StringUpper($iMethod ? $iMethod : ((IsString($BodyData) And $BodyData == '') ? 'GET' : 'POST'))
			If $sMethod = 'HEAD' And $iMode <> 'A' Then $iMode = 'H'
			;---------------------------------------------
			Local $oHttpEvent
			If $FuncDownloadCallback Or IsFunc($FuncDownloadCallback) Then
				$g_CHILKAT__pFuncDLCallback = $FuncDownloadCallback
				$oHttpEvent = ObjEvent($oCK_HTTP, '_Ck_HttpEvent_', '_IChilkatHttpEvents')
			EndIf
			;----------------------------------------------------------------------------------------------------------------------------------------------------------------------
			Local $oURL = Ck_HttpCrackURL($iURL)
			If @error Then Return SetError(3, _Ck_ErrNotify('Ck_HttpRequest', '$sURL is incorrect format'), '')
			;----------------------------------------------------------------------------------------------------------------------------------------------------------------------
			Local Static $iUser = '', $iPassword = '', $isAuthorization = 0
			If $iUser Or $iPassword Then
				$iUser = ''
				$iPassword = ''
				Ck_HttpAuthenticate($oCK_HTTP, $iUser, $iPassword)
			Else
				$iUser = $oURL.Login
				$iPassword = $oURL.Password
				If $iUser Or $iPassword Then Ck_HttpAuthenticate($oCK_HTTP, $iUser, $iPassword)
			EndIf
			;----------------------------------------------------------------------------------------------------------------------------------------------------------------------
			Local $oCK_HTTPRequest = ObjCreate('{D66A2F08-A267-4593-ACD4-3EF65255E005}', '{495F8CD2-9F03-4A83-A9BC-FEEAE2182D9B}', $g_CHILKAT__hDll)
			If Not IsObj($oCK_HTTPRequest) Then Return SetError(4, _Ck_ErrNotify('Ck_HttpRequest', 'The Chilkat HttpRequest Object creation failed'), '')
			;--------------------------------------
			With $oCK_HTTPRequest
				.HttpVerb = $sMethod
				.SetFromUrl($iURL)
				;.Path = $oURL.PathWithQueryParams
				;-----------------------------------------------------
				Local $sContentType = ''
				Local Static $aDefaultRequestHeaders = [['Accept', '*/*'], ['User-Agent', $g_CHILKAT__def_UA], ['DNT', '1'], ['Connection', 'Keep-Alive']]
				For $i = 0 To UBound($aDefaultRequestHeaders) - 1
					.AddHeader($aDefaultRequestHeaders[$i][0], $aDefaultRequestHeaders[$i][1])
				Next
				.AddHeader('Host', $oURL.Host)
				If $sRequestHeaders Then
					If StringRegExp($sRequestHeaders, '^\h*?\w+(\[\[\w\-]+\])?\h*?=\h*?.*?(;|$)') Then
						.AddHeader('Cookie', StringReplace($sRequestHeaders, '; ', ';', 0, 1))
					Else
						Local $aRequestHeaders = StringRegExp($sRequestHeaders, '(?s)([\w\-]+)\h*:\h*(.*?)(?:\||[\r\n]+|$)', 3)
						If @error Then Return SetError(5, _Ck_ErrNotify('Ck_HttpRequest', '$aRequestHeaders is incorrect format'), '')
						For $i = 0 To UBound($aRequestHeaders) - 1 Step 2
							If StringIsSpace($aRequestHeaders[$i + 1]) Then
								_Ck_ErrNotify('Ck_HttpRequest', '<Warning> Request header [' & $aRequestHeaders[$i] & '] has empty value ?!')
								ContinueLoop
							EndIf
							If StringRegExp($aRequestHeaders[$i], '(?i)Cookie-?(Dir|Jar|File)') Then
								$isSetCookieJar = $oCK_HTTP.CookieDir
								$oCK_HTTP.CookieDir = StringStripWS($aRequestHeaders[$i + 1], 3)
								If $oCK_HTTP.CookieDir = '' Then $oCK_HTTP.CookieDir = 'memory'
							ElseIf $aRequestHeaders[$i] = 'Content-Length' Then     ;Never explicitly set the Content-Length header field. Chilkat will automatically compute the correct length.
								ContinueLoop
							Else
								.AddHeader($aRequestHeaders[$i], $aRequestHeaders[$i] = 'Cookie' ? StringReplace($aRequestHeaders[$i + 1], '; ', ';', 0, 1) : $aRequestHeaders[$i + 1])
								If $aRequestHeaders[$i] = 'Content-Type' Then $sContentType = $aRequestHeaders[$i + 1]
							EndIf
						Next
					EndIf
				EndIf
				;-----------------------------------------------------
				If $g_CHILKAT__AutoDetectFileInput And IsString($BodyData) And AscW(StringLeft($BodyData, 1)) > 0x2000 Then $BodyData = StringToBinary($BodyData, 3)
				;-----------------------------------------------------
				If IsBinary($BodyData) Then
					.ContentType = ($sContentType ? $sContentType : 'application/octet-stream')
					If .LoadBodyFromBytes($BodyData) = 0 Then Return SetError(6, _Ck_ErrNotify('Ck_HttpRequest', 'LoadBodyFromBytes failed'), '')
				ElseIf IsArray($BodyData) Then
					Local $sContentType_FromForm = Ck_HttpFormCreate($oCK_HTTPRequest, $BodyData)
					.ContentType = ($sContentType ? $sContentType : $sContentType_FromForm)
				ElseIf (IsString($BodyData) And FileExists($BodyData)) Then
					.ContentType = ($sContentType ? $sContentType : Ck_FileDetectContentType($BodyData))
					If FileGetSize($BodyData) < 1 * 1024 ^ 2 Then
						If .LoadBodyFromFile($BodyData) = 0 Then Return SetError(7, _Ck_ErrNotify('Ck_HttpRequest', 'LoadBodyFromFile fail'), '')
					Else
						If .StreamBodyFromFile($BodyData) = 0 Then Return SetError(8, _Ck_ErrNotify('Ck_HttpRequest', 'StreamBodyFromFile fail'), '')
					EndIf
				ElseIf (IsString($BodyData) And StringLeft($BodyData, 6) = 'Chunk[') Then
					Local $aFileInfo = StringRegExp($BodyData, '(?i)^Chunk\[\h*?(\d+\.?\d*?)\h*?,\h*?(\d+\.?\d*?)\h*?\]\h*?(.+)$', 3)
					If @error Or UBound($aFileInfo) <> 3 Then Return SetError(9, _Ck_ErrNotify('Ck_HttpRequest', 'ChunkFile incorrent forrmat: Chunk[offset,numBytes] FilePath'), '')
					.ContentType = ($sContentType ? $sContentType : Ck_FileDetectContentType($aFileInfo[2]))
					If .StreamChunkFromFile($aFileInfo[2], Number($aFileInfo[0]), Number($aFileInfo[1])) = 0 Then Return SetError(10, _Ck_ErrNotify('Ck_HttpRequest', 'StreamChunkFromFile fail'), '')
					$isChunk = 1
				ElseIf (IsString($BodyData) And $BodyData <> '') Then
					If Not $sContentType Then
						If StringRegExp($BodyData, '^\h*?[\{\[]') Then
							$sContentType = 'application/json'
						ElseIf StringRegExp($BodyData, '(?i)^\h*?<\?xml') Then
							$sContentType = "text/xml"
						Else
							$sContentType = 'application/x-www-form-urlencoded'
						EndIf
					EndIf
					.ContentType = $sContentType
					.Charset = $g_CHILKAT__AcceptCharset
					If .LoadBodyFromString($BodyData, $g_CHILKAT__AcceptCharset) = 0 Then Return SetError(11, _Ck_ErrNotify('Ck_HttpRequest', 'LoadBodyFromString failed'), '')
				EndIf
			EndWith
			;------------------------------------------------------------
			If $g_CHILKAT__DebugRequestHeaders Then
				$sRequestHeaders = $oCK_HTTPRequest.GenerateRequestText()
				If $sRequestHeaders Then
					If StringLen($sRequestHeaders) > 1024 And StringRegExp($sRequestHeaders, '[\x00-\x20]') Then
						$sRequestHeaders = StringRegExpReplace($sRequestHeaders, '(?ism)^[^[:print:][:space:]][\s\S]+?(\R--|\z)', '[' & ($isChunk ? 'CHUNK-' : '') & 'FILE]$1')
					EndIf
					$sRequestHeaders = StringRegExpReplace(StringRegExpReplace($sRequestHeaders, '(?im)Host\h*?:.+$', 'Host: ' & $oURL.Host, 1), '(?m)^\h*?(.)', @TAB & '$1')
					ConsoleWrite(@CRLF & '+> Http Request Headers Generate: ' & $iURL & @CRLF & StringStripWS($sRequestHeaders, 2) & @CRLF & @CRLF)
				EndIf
			EndIf
			;------------------------------------------------------------
			For $i = 0 To UBound($iOption) - 1 Step 2
				Switch $iOption[$i]
					Case 'DL'
						.StreamResponseBodyPath = $iOption[$i + 1]
						$isDownload = $iOption[$i + 1]
					Case 'CTO'
						.ConnectTimeout = $iOption[$i + 1]
					Case 'RTO'
						.ReadTimeout = $iOption[$i + 1]
					Case 'PT'
						$isReturnPlainText = 1
				EndSwitch
			Next
			;------------------------------------------------------------
			Local $oResponse, $oTask, $olRedirect = 1
			If $iMode = 'H' Then .MaxResponseSize = 1
			If $g_CHILKAT__EnhanceRedirect Then
				$olRedirect = .FollowRedirects
				.FollowRedirects = 0
			EndIf
			;------------------------------------------------------------
			If $iMode = 'A' Then
				$oTask = .SynchronousRequestAsync($oURL.Host, $oURL.Port, $oURL.Ssl, $oCK_HTTPRequest)
			Else
				$oResponse = .SynchronousRequest($oURL.Host, $oURL.Port, $oURL.Ssl, $oCK_HTTPRequest)
			EndIf
			;--------------------------------------------------------------
			If $g_CHILKAT__EnhanceRedirect Then .FollowRedirects = $olRedirect
			.UncommonOptions = $oURL.Host
			.StreamResponseBodyPath = ''
			.MaxResponseSize = 0
			$oCK_HTTPRequest = Null
			;--------------------------------------------------------------
			If .LastMethodSuccess = 0 Or ($iMode = 'A' And Not IsObj($oTask)) Or ($iMode <> 'A' And Not IsObj($oResponse)) Then
				Return SetError(12, _Ck_ErrNotify('Ck_HttpRequest', 'Send request failed. Reason: "' & _Ck_ConnectFailReason($oCK_HTTP) & '"'), '')
			EndIf
		EndWith
		;--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		If IsObj($oHttpEvent) Then
			$oHttpEvent.Stop()
			$oHttpEvent = Null
		EndIf
		;-----------------------------------------------------------------------------------------------------------
		If $iMode = 'A' Then
			Return $oTask
		Else
			With $oResponse
				If .FinalRedirectUrl And .FinalRedirectUrl <> $iURL Then
					ConsoleWrite('> [' & $iURL & '] redirect to: [' & .FinalRedirectUrl & ']' & @CRLF)
					$g_CHILKAT__RedirectUrl = .FinalRedirectUrl
					If $g_CHILKAT__EnhanceRedirect Then Return Ck_HttpRequest($oCK_HTTP, $iMode & ' ' & $iOption & ' ' & .FinalRedirectUrl, '', '', $iConnectTimeoutMs, $FuncDownloadCallback)
				EndIf
				;--------------------------------------------------------------
				$g_CHILKAT__LastResponseHeaders = .StatusLine & @CRLF & .Header
				;--------------------------------------------------------------
				Switch $iMode
					Case 'T', ''
						$iMode = 'T1'
						ContinueCase
					Case 'T1', 'T2', 'T3', 'T4'
						Local $BodyStr = ($iMode = 'T1' ? .BodyStr : BinaryToString(.Body, Number(StringRight($iMode, 1))))
						If $isReturnPlainText Then
							Local $sPlainText = Ck_HtmlToText($BodyStr)
							Return SetError(@error ? @error + 13 : 0, 0, $sPlainText)
						Else
							Return SetExtended(.StatusCode, $isDownload ? 'File save as: ' & $isDownload : $BodyStr)
						EndIf
					Case 'B'
						Return SetExtended(.StatusCode, $isDownload ? 'File save as: ' & $isDownload : .Body)
					Case 'O'
						Return SetExtended(.StatusCode, $oResponse)
					Case 'H'
						;Switch .StatusCode
						;	Case 301, 302, 303, 307, 308
						;		Local $sLocation = .GetHeaderField('Location')
						;		If $sLocation Then
						;			If StringLeft($sLocation, 1) == '/' Then $sLocation = 'http' & ($oURL.Ssl ? 's' : '') & '://' & $oURL.Host & $sLocation
						;			Return Ck_HttpRequest($oCK_HTTP, 'H ' & $sLocation, '', '', $iConnectTimeoutMs, $FuncDownloadCallback)
						;		EndIf
						;EndSwitch
						Return SetExtended(.StatusCode, $g_CHILKAT__LastResponseHeaders)
				EndSwitch
			EndWith
		EndIf
	EndFunc   ;==>Ck_HttpRequest

	Func Ck_HttpLastResponseHeaders($RespHeaderName = Default, $CompactCookieHeader = True, $sExcludedCookie = '')
		;$RespHeaderName = "tên header cụ thể": trả giá trị của header được gọi. = default hoặc rỗng hoặc -1: trả về toàn bộ resp heades
		If Not $g_CHILKAT__LastResponseHeaders Then Return SetError(1, _Ck_ErrNotify('Ck_HttpLastResponseHeaders', 'Last response headers is empty'), '')
		If $RespHeaderName = Default Or Not $RespHeaderName Or $RespHeaderName < 0 Then
			Return $g_CHILKAT__LastResponseHeaders
		Else
			If $RespHeaderName = 'Cookie' Then $RespHeaderName = 'Set-Cookie'
			Local $aRespHeaders = StringRegExp($g_CHILKAT__LastResponseHeaders, '(?im)^' & $RespHeaderName & ':\h+(.+)$', 3)
			If @error Then Return SetError(1, _Ck_ErrNotify('Ck_HttpLastResponseHeaders', 'The header [' & $RespHeaderName & '] not found'), '')
			If $RespHeaderName = 'Set-Cookie' Then
				Local $sCookieHeader = ''
				For $i = 0 To UBound($aRespHeaders) - 1
					$sCookieHeader &= $aRespHeaders[$i] & @CRLF
				Next
				$sCookieHeader = StringStripWS($sCookieHeader, 2)
				If Not $CompactCookieHeader Then Return $sCookieHeader
				Local $__aRH = StringRegExp($sCookieHeader, '(?im)^([^=]+)=(?!deleted;)(.*)$', 3)
				Local $__sRH = ''
				For $i = UBound($__aRH) - 2 To 0 Step -2
					If $__aRH[$i] == '' Or ($sExcludedCookie And StringInStr('|' & $sExcludedCookie & '|', '|' & StringStripWS($__aRH[$i], 3) & '|')) Then ContinueLoop
					$__sRH = $__aRH[$i] & '=' & $__aRH[$i + 1] & '; ' & $__sRH
					For $k = 0 To $i Step 2
						If $__aRH[$k] == $__aRH[$i] Then $__aRH[$k] = ''
					Next
				Next
				;----------------------------------------------------------------------------------
				Local Static $aOptionalFilter = 'priority\h*?=\h*?(?:high|low)|Expires\h*?=\h*?|Path\h*?=\h*?|Domain\h*?=\h*?|Max-age\h*?=\h*?|SameSite\h*?=\h*?|HttpOnly|Secure'
				$__sRH = StringRegExpReplace(StringRegExpReplace($__sRH, '(?i);\h*?(' & $aOptionalFilter & ')([^;]*)', ';'), '(?:;\h?){2,}', ';')
				;----------------------------------------------------------------------------------
				Return StringStripWS($__sRH, 3) & ' '
			Else
				Return StringIsDigit($aRespHeaders[0]) ? Number($aRespHeaders[0]) : $aRespHeaders[0]
			EndIf
		EndIf
	EndFunc   ;==>Ck_HttpLastResponseHeaders

	Func Ck_HttpDebugRequestHeaders($iTurnOn)     ;true/false
		Local $prevTurnOn = $g_CHILKAT__DebugRequestHeaders
		$g_CHILKAT__DebugRequestHeaders = $iTurnOn
		Return $prevTurnOn
	EndFunc   ;==>Ck_HttpDebugRequestHeaders

	Func Ck_HtmlToText($sHtml, $SuppressLinks = False)
		If $g_CHILKAT__hDll = -1 Then
			Ck_StartUp(Default)
			If $g_CHILKAT__hDll = -1 Then Return SetError(1, 0, '')
		EndIf
		;------------------------------------------------------------------------
		Local $oCK_Html2Text = ObjCreate('{540054E6-D577-4E92-B730-86E83ADD9172}', '{7919C172-F7FD-40BB-9A28-ACC2EA4ED66F}', $g_CHILKAT__hDll)
		If Not IsObj($oCK_Html2Text) Then Return SetError(2, _Ck_ErrNotify('Ck_HtmlToText', 'The Chilkat Html2Text Object creation failed'), '')
		$oCK_Html2Text.SuppressLinks = Int($SuppressLinks)
		Local $sText = $oCK_Html2Text.ToText($sHtml)
		If $sText = '' Then Return SetError(3, _Ck_ErrNotify('Ck_HtmlToText', 'Convertion failed'), '')
		Return StringStripWS($sText, 3)
	EndFunc   ;==>Ck_HtmlToText

	Func Ck_HttpCrackURL($sURL)
		If $g_CHILKAT__hDll = -1 Then
			Ck_StartUp(Default)
			If $g_CHILKAT__hDll = -1 Then Return SetError(1, 0, '')
		EndIf
		;------------------------------------------------------------------------
		Local Static $oCK_URL = ObjCreate('{C604DBFD-657D-438D-8399-4B990CB1819C}', '{26823E1F-8672-4404-955F-87A5A6E3D80E}', $g_CHILKAT__hDll)
		If Not IsObj($oCK_URL) Then Return SetError(2, _Ck_ErrNotify('Ck_HttpCrackURL', 'The Chilkat URL Object creation failed'), '')
		;------------------------------------------------------------------------
		If $oCK_URL.ParseUrl($sURL) = $g_CHILKAT__Synchronous Then Return $oCK_URL
		Return SetError(3, _Ck_ErrNotify('Ck_HttpCrackURL', 'Cannot parse URL'), '')
	EndFunc   ;==>Ck_HttpCrackURL

	Func Ck_HttpFormCreate(ByRef $oCK_HTTPRequest, $aFormData, $sBoundary = Default, $CharSet = Default)
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_HttpFormCreate', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
		If Not IsObj($oCK_HTTPRequest) Then Return SetError(1, _Ck_ErrNotify('Ck_HttpFormCreate', '$oCK_HTTP isn''t the Chilkat Http Object'), 0)
		If Not IsArray($aFormData) Or UBound($aFormData, 2) > 2 Then Return SetError(2, _Ck_ErrNotify('Ck_HttpFormCreate', '$aFormData should be 1D-Array or 2D-Array with 2 columns'), '')
		;------------------------------------------------------------------------
		If UBound($aFormData, 2) = 0 Then
			Local $uFormData = UBound($aFormData), $aFormData2D[$uFormData][2], $aRegexData
			For $i = 0 To $uFormData - 1
				$aRegexData = StringRegExp($aFormData[$i], '^([^=]*)=(.*)$', 3)
				If @error Or UBound($aRegexData) <> 2 Then Return SetError(3, _Ck_ErrNotify('Ck_HttpFormCreate', "1D-Array $aFormData isn't correctly format"), 0)
				$aFormData2D[$i][0] = $aRegexData[0]
				$aFormData2D[$i][1] = $aRegexData[1]
			Next
			$aFormData = $aFormData2D
		EndIf
		;------------------------------------------------------------------------
		Local $isMultipart = 0
		With $oCK_HTTPRequest
			For $i = 0 To UBound($aFormData) - 1
				Switch StringLeft($aFormData[$i][0], $g_CHILKAT__Synchronous)
					Case '$', '@'
						$aFormData[$i][0] = StringTrimLeft($aFormData[$i][0], 1)
						Local $aKeySplit = StringSplit($aFormData[$i][0], '|')
						If FileExists($aFormData[$i][1]) Or (StringRegExp($aFormData[$i][1], '\.\w+$') And FileExists(@ScriptDir & '\' & $aFormData[$i][1])) Then
							Switch $aKeySplit[0]
								Case 1
									If .AddFileForUpload($aFormData[$i][0], $aFormData[$i][1]) = 0 Then Return SetError(4, _Ck_ErrNotify('Ck_HttpFormCreate', 'Add data failed #1'), '')
								Case 2
									If .AddFileForUpload2($aKeySplit[1], $aFormData[$i][1], $aKeySplit[2]) = 0 Then Return SetError(5, _Ck_ErrNotify('Ck_HttpFormCreate', 'Add data failed #2'), '')
								Case Else
									Return SetError(6, _Ck_ErrNotify('Ck_HttpFormCreate', 'KeyFile should be: $keyname Or $keyname|content-type'), '')
							EndSwitch
						ElseIf IsBinary($aFormData[$i][1]) Then
							Switch $aKeySplit[0]
								Case 2
									If .AddBytesForUpload($aKeySplit[1], $aKeySplit[2], $aFormData[$i][1]) = 0 Then Return SetError(7, _Ck_ErrNotify('Ck_HttpFormCreate', 'Add data failed #3'), '')
								Case 3
									If Not StringInStr($aKeySplit[3], '/', 1, 1) Then $aKeySplit[3] = Ck_FileDetectContentType($aKeySplit[3])
									If .AddBytesForUpload2($aKeySplit[1], $aKeySplit[2], $aFormData[$i][1], $aKeySplit[3]) = 0 Then Return SetError(8, _Ck_ErrNotify('Ck_HttpFormCreate', 'Add data failed #4'), '')
								Case Else
									Return SetError(9, _Ck_ErrNotify('Ck_HttpFormCreate', 'KeyFile should be: $keyname|filename Or $keyname|filename|content-type'), '')
							EndSwitch
						Else
							If $CharSet = Default Or Not $CharSet Then $CharSet = $g_CHILKAT__AcceptCharset
							Switch $aKeySplit[0]
								Case 2
									If .AddStringForUpload($aKeySplit[1], $aKeySplit[2], $aFormData[$i][1], $CharSet) = 0 Then Return SetError(10, _Ck_ErrNotify('Ck_HttpFormCreate', 'Add data failed #5'), '')
								Case 3
									If Not StringInStr($aKeySplit[3], '/', 1, 1) Then $aKeySplit[3] = Ck_FileDetectContentType($aKeySplit[3])
									If .AddStringForUpload2($aKeySplit[1], $aKeySplit[2], $aFormData[$i][1], $CharSet, $aKeySplit[3]) = 0 Then Return SetError(11, _Ck_ErrNotify('Ck_HttpFormCreate', 'Add data failed #6'), '')
								Case Else
									Return SetError(12, _Ck_ErrNotify('Ck_HttpFormCreate', 'KeyFile should be: $keyname|filename Or $keyname|filename|content-type'), '')
							EndSwitch
						EndIf
						;-------------------------
						$isMultipart = $g_CHILKAT__Synchronous
						;-------------------------
						If $sBoundary = Default And StringRegExp($oCK_HTTPRequest.GetHeaderField('User-Agent'), '(?i)Chrome|Webkit') Then
							Local $aChar = StringSplit('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789', '', 2)
							_ArrayShuffle($aChar)
							.Boundary = '----WebKitFormBoundary' & StringLeft(_ArrayToString($aChar, ''), 16)
						Else
							.Boundary = ''
						EndIf
						;---------------------------------------------------------------------------------------------
					Case Else
						.AddParam($aFormData[$i][0], $aFormData[$i][1])
				EndSwitch
			Next
		EndWith
		Return ($isMultipart ? 'multipart/form-data' : 'application/x-www-form-urlencoded')
	EndFunc   ;==>Ck_HttpFormCreate

	Func Ck_HttpDataCompression($inputBinary, $Algorithm = 'auto', $Compress_Decompress_Mode = 'auto')
		;$Algorithm = "deflate", "zlib", "bzip2", or "lzw"
		;$Compress_Decompress_Mode = 'auto'/'compress'/'decompress'
		If Not StringRegExp($Algorithm, '(?i)(deflate|zlib|bzip2|lzw|gzip|auto)') Then Return SetError(1, _Ck_ErrNotify('Ck_HttpDataCompression', '$Algorithm should be "auto", "deflate", "zlib", "bzip2", or "lzw"'), '')
		If $Algorithm = Default Or Not $Algorithm Then $Algorithm = 'auto'
		If $Compress_Decompress_Mode = Default Or Not $Compress_Decompress_Mode Then $Compress_Decompress_Mode = 'auto'
		If $Algorithm = 'gzip' Then $Algorithm = 'zlib'
		;------------------------------------------------------------------------
		If $g_CHILKAT__hDll = -1 Then
			Ck_StartUp(Default)
			If $g_CHILKAT__hDll = -1 Then Return SetError(2, 0, '')
		EndIf
		;------------------------------------------------------------------------
		Local $oCK_Compressin = ObjCreate('{D6CEA276-E79C-4026-BD46-933E3C8F88D8}', '{73B5832B-AACE-4975-9238-09579CB89232}', $g_CHILKAT__hDll)
		If Not IsObj($oCK_Compressin) Then Return SetError(3, _Ck_ErrNotify('Ck_HttpDataCompression', 'The Chilkat Compression Object creation failed'), '')
		;------------------------------------------------------------------------
		With $oCK_Compressin
			If $Compress_Decompress_Mode = 'auto' Or $Algorithm = 'auto' Then
				Switch Hex(BinaryMid($inputBinary, 1, 2))
					Case '7801', '789C', '78DA'
						$Compress_Decompress_Mode = 'decompress'
						$Algorithm = 'zlib'
					Case '425A'
						$Compress_Decompress_Mode = 'decompress'
						$Algorithm = 'bzip2'
					Case Else
						If Hex(BinaryMid($inputBinary, 1, 1)) = '90' Then
							$Compress_Decompress_Mode = 'decompress'
							$Algorithm = 'lzw'
						ElseIf IsString($inputBinary) Then
							$Compress_Decompress_Mode = 'compress'
						EndIf
				EndSwitch
				If $Algorithm = 'auto' Then $Algorithm = 'zlib'
				If $Compress_Decompress_Mode = 'auto' Then $Compress_Decompress_Mode = 'compress'
			EndIf
			ConsoleWrite('> Ck_HttpDataCompression: Algorithm=' & $Algorithm & ', Mode=' & $Compress_Decompress_Mode & @CRLF)
			;-------------------------------------------------------
			.Algorithm = $Algorithm
			;-------------------------------------------------------
			If Not IsBinary($inputBinary) Then $inputBinary = Binary($inputBinary)
			;-------------------------------------------------------
			If $Compress_Decompress_Mode = 'compress' Then
				Return .CompressBytes($inputBinary)
			Else
				Return .DecompressBytes($inputBinary)
			EndIf
		EndWith
	EndFunc   ;==>Ck_HttpDataCompression

	Func Ck_FileDetectContentType($sFileName_Or_FilePath)
		Local Static $sMIMEData = ';ai|application/postscript;aif|audio/x-aiff;aifc|audio/x-aiff;aiff|audio/x-aiff;asc|text/plain;atom|application/atom+xml;au|audio/basic;avi|video/x-msvideo;bcpio|application/x-bcpio;bin|application/octet-stream;bmp|image/bmp;cdf|application/x-netcdf;cgm|image/cgm;class|application/octet-stream;cpio|application/x-cpio;cpt|application/mac-compactpro;csh|application/x-csh;css|text/css;dcr|application/x-director;dif|video/x-dv;dir|application/x-director;djv|image/vnd.djvu;djvu|image/vnd.djvu;dll|application/octet-stream;dmg|application/octet-stream;dms|application/octet-stream;doc|application/msword;dtd|application/xml-dtd;dv|video/x-dv;dvi|application/x-dvi;dxr|application/x-director;eps|application/postscript;etx|text/x-setext;exe|application/octet-stream;ez|application/andrew-inset;gif|image/gif;gram|application/srgs;grxml|application/srgs+xml;gtar|application/x-gtar;hdf|application/x-hdf;hqx|application/mac-binhex40;htm|text/html' & _
				';html|text/html;ice|x-conference/x-cooltalk;ico|image/x-icon;ics|text/calendar;ief|image/ief;ifb|text/calendar;iges|model/iges;igs|model/iges;jnlp|application/x-java-jnlp-file;jp2|image/jp2;jpe|image/jpeg;jpeg|image/jpeg;jpg|image/jpeg;js|application/x-javascript;kar|audio/midi;latex|application/x-latex;lha|application/octet-stream;lzh|application/octet-stream;m3u|audio/x-mpegurl;m4a|audio/mp4a-latm;m4b|audio/mp4a-latm;m4p|audio/mp4a-latm;m4u|video/vnd.mpegurl;m4v|video/x-m4v;mac|image/x-macpaint;man|application/x-troff-man;mathml|application/mathml+xml;me|application/x-troff-me;mesh|model/mesh;mid|audio/midi;midi|audio/midi;mif|application/vnd.mif;mov|video/quicktime;movie|video/x-sgi-movie;mp2|audio/mpeg;mp3|audio/mpeg;mp4|video/mp4;mpe|video/mpeg;mpeg|video/mpeg;mpg|video/mpeg;mpga|audio/mpeg;ms|application/x-troff-ms;msh|model/mesh;mxu|video/vnd.mpegurl;nc|application/x-netcdf;oda|application/oda' & _
				';ogg|application/ogg;pbm|image/x-portable-bitmap;pct|image/pict;pdb|chemical/x-pdb;pdf|application/pdf;pgm|image/x-portable-graymap;pgn|application/x-chess-pgn;pic|image/pict;pict|image/pict;png|image/png;pnm|image/x-portable-anymap;pnt|image/x-macpaint;pntg|image/x-macpaint;ppm|image/x-portable-pixmap;ppt|application/vnd.ms-powerpoint;ps|application/postscript;qt|video/quicktime;qti|image/x-quicktime;qtif|image/x-quicktime;ra|audio/x-pn-realaudio;ram|audio/x-pn-realaudio;ras|image/x-cmu-raster;rdf|application/rdf+xml;rgb|image/x-rgb;rm|application/vnd.rn-realmedia;roff|application/x-troff;rtf|text/rtf;rtx|text/richtext;sgm|text/sgml;sgml|text/sgml;sh|application/x-sh;shar|application/x-shar;silo|model/mesh;sit|application/x-stuffit;skd|application/x-koan;skm|application/x-koan;skp|application/x-koan;skt|application/x-koan;smi|application/smil;smil|application/smil;snd|audio/basic;so|application/octet-stream;spl|application/x-futuresplash' & _
				';src|application/x-wais-source;sv4cpio|application/x-sv4cpio;sv4crc|application/x-sv4crc;svg|image/svg+xml;swf|application/x-shockwave-flash;t|application/x-troff;tar|application/x-tar;tcl|application/x-tcl;tex|application/x-tex;texi|application/x-texinfo;texinfo|application/x-texinfo;tif|image/tiff;tiff|image/tiff;tr|application/x-troff;tsv|text/tab-separated-values;txt|text/plain;ustar|application/x-ustar;vcd|application/x-cdlink;vrml|model/vrml;vxml|application/voicexml+xml;wav|audio/x-wav;wbmp|image/vnd.wap.wbmp;wbmxl|application/vnd.wap.wbxml;wml|text/vnd.wap.wml;wmlc|application/vnd.wap.wmlc;wmls|text/vnd.wap.wmlscript;wmlsc|application/vnd.wap.wmlscriptc;wrl|model/vrml;xbm|image/x-xbitmap;xht|application/xhtml+xml;xhtml|application/xhtml+xml;xls|application/vnd.ms-excel;xml|application/xml;xpm|image/x-xpixmap;xsl|application/xml;xslt|application/xslt+xml;xul|application/vnd.mozilla.xul+xml;xwd|image/x-xwindowdump;xyz|chemical/x-xyz' & _
				';zip|application/zip;;xlsx|application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;doc|application/msword;dot|application/msword;docx|application/vnd.openxmlformats-officedocument.wordprocessingml.document;dotx|application/vnd.openxmlformats-officedocument.wordprocessingml.template;docm|application/vnd.ms-word.document.macroEnabled.12;dotm|application/vnd.ms-word.template.macroEnabled.12;xls|application/vnd.ms-excel;xlt|application/vnd.ms-excel;xla|application/vnd.ms-excel;xltx|application/vnd.openxmlformats-officedocument.spreadsheetml.template;xlsm|application/vnd.ms-excel.sheet.macroEnabled.12;xltm|application/vnd.ms-excel.template.macroEnabled.12;xlam|application/vnd.ms-excel.addin.macroEnabled.12;xlsb|application/vnd.ms-excel.sheet.binary.macroEnabled.12;ppt|application/vnd.ms-powerpoint;pot|application/vnd.ms-powerpoint;pps|application/vnd.ms-powerpoint;ppa|application/vnd.ms-powerpoint' & _
				';pptx|application/vnd.openxmlformats-officedocument.presentationml.presentation;potx|application/vnd.openxmlformats-officedocument.presentationml.template;ppsx|application/vnd.openxmlformats-officedocument.presentationml.slideshow;ppam|application/vnd.ms-powerpoint.addin.macroEnabled.12;pptm|application/vnd.ms-powerpoint.presentation.macroEnabled.12;potm|application/vnd.ms-powerpoint.template.macroEnabled.12;ppsm|application/vnd.ms-powerpoint.slideshow.macroEnabled.12;flac|audio/flac;'
		;-----------------------------------------------------------------------------------------------------
		Local $aArray = StringRegExp($sMIMEData, "(?i)\Q;" & StringRegExpReplace($sFileName_Or_FilePath, "(.*?)\.(\w+)$", "$2") & "\E\|(.*?);", 1)
		If @error Then
			If FileExists($sFileName_Or_FilePath) Then
				Local $fOpen = FileOpen($sFileName_Or_FilePath, 512)
				Switch FileRead($fOpen, 2)
					Case 'ÿØ'
						Return 'image/jpg'
					Case '‰P'
						Return 'image/png'
					Case 'BM'
						Return 'image/bmp'
				EndSwitch
				FileClose($fOpen)
			EndIf
			Return SetError(1, '', 'application/octet-stream')
		Else
			Return $aArray[0]
		EndIf
	EndFunc   ;==>Ck_FileDetectContentType

	Func Ck_HttpSetProxy(ByRef $oCK_HTTP, $ProxyString)     ;ex: http://1.1.1.1:8080 / https://1.1.1.1:1234 / socks4://1.1.1.1:4444 / socks5://1.1.1.1:5555
		$ProxyString = StringRegExp($ProxyString, '(?i)^(?|http(s?)|socks([45]))(?:://)?(?:([[:print:]]+):([[:print:]]+)@)?(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|localhost)?[: \t]?(\d+)?($)', 3)
		If @error Or UBound($ProxyString) <> 6 Then Return SetError(1, _Ck_ErrNotify('Ck_HttpSetProxy', '$ProxyString isn''t incorrect pattern'), 0)
		Switch $ProxyString[0]
			Case 's', ''
				$ProxyString = Ck_HttpThroughHttpProxy($oCK_HTTP, $ProxyString[3], $ProxyString[4], $ProxyString[1], $ProxyString[2])
			Case '4', '5'
				$ProxyString = Ck_HttpThroughSocksProxy($oCK_HTTP, $ProxyString[3], $ProxyString[4], $ProxyString[1], $ProxyString[2], $ProxyString[3] ? Int($ProxyString[0]) : 0)
		EndSwitch
		Return SetError(@error + 1, @extended, $ProxyString)
	EndFunc   ;==>Ck_HttpSetProxy

	Func Ck_HttpThroughSocksProxy(ByRef $oCK_HTTP, $Hostname = '', $Port = '', $SocksUsername = '', $SocksPassword = '', $SocksVersion = 5)
		;https://www.chilkatsoft.com/refdoc/xChilkatHttpRef.html#prop102
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_HttpThroughSocksProxy', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
		If Not IsObj($oCK_HTTP) Then Return SetError(1, _Ck_ErrNotify('Ck_HttpThroughSocksProxy', '$oCK_HTTP isn''t the Chilkat Http Object'), 0)
		If $Port = -1 Then Return     ;bỏ qua set socks mà không thông báo
		If $Port == 'ListenPort' Then
			ConsoleWrite(@CRLF)
			Return SetError(2, _Ck_ErrNotify('Ck_HttpThroughSocksProxy', 'If you use listenPort from the return array of Ck_SshTunnelCreateMulti, remember that the starting element is 1 rather than 0.'), 0)
		EndIf
		;---------------------------------------------------------------------
		If $SocksUsername = Default Or Not $SocksUsername Then $SocksUsername = ''
		If $SocksPassword = Default Or Not $SocksPassword Then $SocksPassword = ''
		If $SocksVersion = Default Or Not $SocksVersion Then $SocksVersion = 5
		;---------------------------------------------------------------------
		With $oCK_HTTP
			.SocksHostname = $Hostname
			.SocksPort = $Port
			.SocksUsername = $SocksUsername
			.SocksPassword = $SocksPassword
			If @NumParams > 1 Then
				.SocksVersion = $SocksVersion
			Else
				.SocksVersion = 0
			EndIf
		EndWith
		Return 1
	EndFunc   ;==>Ck_HttpThroughSocksProxy

	Func Ck_HttpThroughHttpProxy(ByRef $oCK_HTTP, $Proxy = '', $Port = '', $ProxyUsername = '', $ProxyPassword = '', $ProxyAuthMethod = '', $ProxyLoginDomain = '')
		;https://www.chilkatsoft.com/refdoc/xChilkatHttpRef.html#prop84
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_HttpThroughHttpProxy', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
		If Not IsObj($oCK_HTTP) Then Return SetError(1, _Ck_ErrNotify('Ck_HttpThroughHttpProxy', '$oCK_HTTP isn''t the Chilkat Http Object'), 0)
		If $Port = -1 Then Return     ;bỏ qua set proxy mà không thông báo
		;---------------------------------------------------------------------
		If $ProxyUsername = Default Or Not $ProxyUsername Then $ProxyUsername = ''
		If $ProxyPassword = Default Or Not $ProxyPassword Then $ProxyPassword = ''
		If $ProxyAuthMethod = Default Or Not $ProxyAuthMethod Then $ProxyAuthMethod = ''
		If $ProxyLoginDomain = Default Or Not $ProxyLoginDomain Then $ProxyLoginDomain = ''
		;---------------------------------------------------------------------
		With $oCK_HTTP
			.ProxyDomain = $Proxy
			.ProxyPort = $Port
			.ProxyLogin = $ProxyUsername
			.ProxyPassword = $ProxyPassword
			.ProxyAuthMethod = $ProxyAuthMethod     ;NTLM, Digest, or Basic
			.ProxyLoginDomain = $ProxyLoginDomain
		EndWith
		Return 1
	EndFunc   ;==>Ck_HttpThroughHttpProxy

	Func Ck_HttpAuthenticate(ByRef $oCK_HTTP, $Username = '', $Password = '', $AuthMethod = '', $LoginDomain = '')     ;Basic, Digest, NTLM and Negotiate
		;https://www.chilkatsoft.com/refdoc/xChilkatHttpRef.html#prop58
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_HttpAuthentication', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
		If Not IsObj($oCK_HTTP) Then Return SetError(1, _Ck_ErrNotify('Ck_HttpAuthentication', '$oCK_HTTP isn''t the Chilkat Http Object'), 0)
		;---------------------------------------------------------------------
		If $AuthMethod = Default Or Not $AuthMethod Then $AuthMethod = ''
		If $LoginDomain = Default Or Not $LoginDomain Then $LoginDomain = ''
		;---------------------------------------------------------------------
		With $oCK_HTTP
			.Login = $Username
			.Password = $Password
			.LoginDomain = $LoginDomain
			.BasicAuth = ($AuthMethod = 'Basic' ? 1 : 0)
			.DigestAuth = ($AuthMethod = 'Digest' ? 1 : 0)
			.NtlmAuth = ($AuthMethod = 'NTLM' ? 1 : 0)
			.NegotiateAuth = ($AuthMethod = 'Negotiate' ? 1 : 0)
		EndWith
		Return 1
	EndFunc   ;==>Ck_HttpAuthenticate

	Func Ck_HttpResponseFromTaskQueue(ByRef $arrayQueueTask, $vReturnType = Default)
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_HttpResponseFromTaskQueue', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
		Local $uQueueTask = UBound($arrayQueueTask)
		If $uQueueTask = 0 Then Return SetError(1, _Ck_ErrNotify('Ck_HttpResponseFromMultiTask', 'Don''t have any task to run'), '')
		;---------------------------------------------------------------------
		If $vReturnType <> 'O' Then
			Local $oCK_HTTPResp = ObjCreate('{65EA825E-648E-4BF0-8AA3-4E7724F75B07}', '{C143C715-0FED-4392-B207-1CA3CDF84C88}', $g_CHILKAT__hDll)
			If Not IsObj($oCK_HTTPResp) Then Return SetError(2, _Ck_ErrNotify('Ck_HttpResponseFromMultiTask', 'The Chilkat HttpResponse Object creation failed'), '')
		EndIf
		;---------------------------------------------------------------------
		If $vReturnType = Default Then $vReturnType = 'T'
		Local $aHttpResponse[$uQueueTask]
		Local $vErr = 0, $vExt = 0
		;---------------------------------------------------------------------
		For $i = 0 To $uQueueTask - 1
			If $arrayQueueTask[$i][0] <> 1 And IsObj($arrayQueueTask[$i][0]) And ObjName($arrayQueueTask[$i][0]) = 'ChilkatTask' Then
				If $vReturnType = 'O' Then
					Local $oCK_HTTPResp_O = ObjCreate('{65EA825E-648E-4BF0-8AA3-4E7724F75B07}', '{C143C715-0FED-4392-B207-1CA3CDF84C88}', $g_CHILKAT__hDll)
					If IsObj($oCK_HTTPResp_O) And $oCK_HTTPResp_O.LoadTaskResult($arrayQueueTask[$i][0]) = $g_CHILKAT__Synchronous Then
						$aHttpResponse[$i] = $oCK_HTTPResp_O
					Else
						$oCK_HTTPResp_O = Null
						$aHttpResponse[$i] = -1
						$vExt += 1
						$vErr = 3
					EndIf
				Else
					With $oCK_HTTPResp
						If .LoadTaskResult($arrayQueueTask[$i][0]) = $g_CHILKAT__Synchronous Then
							Switch $vReturnType
								Case 'T', ''
									$aHttpResponse[$i] = .BodyStr
								Case 'T1', 'T2', 'T3', 'T4'
									$aHttpResponse[$i] = BinaryToString(.Body, Number(StringRight($vReturnType, 1)))
								Case 'B'
									$aHttpResponse[$i] = .Body
								Case 'H'
									$aHttpResponse[$i] = .Header
							EndSwitch
						Else
							$vErr = 3
							$vExt += 1
							$aHttpResponse[$i] = -1
							_Ck_ErrNotify('Ck_HttpResponseFromMultiTask', 'The Task with index [' & ($i - 1) & '] incompleted #1')
						EndIf
					EndWith
				EndIf
			Else
				$vErr = 3
				$vExt += 1
				$aHttpResponse[$i] = -1
				_Ck_ErrNotify('Ck_HttpResponseFromMultiTask', 'The Task with index [' & ($i - 1) & '] incompleted #2')
			EndIf
		Next
		;---------------------------------------------------------------------
		$oCK_HTTPResp = Null
		Return SetError($vErr, $vExt, $aHttpResponse)
	EndFunc   ;==>Ck_HttpResponseFromTaskQueue

	Func Ck_HttpResponeFromSingleTask(ByRef $oTask, $vReturnType = '', $LockOnTimeOut = Default)
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_HttpResponeFromSingleTask', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
		If Not IsObj($oTask) Or ObjName($oTask) <> 'ChilkatTask' Then Return SetError(-1, _Ck_ErrNotify('Ck_HttpResponeFromSingleTask', '$oTask isn''t the Chilkat Task Object'), '')
		;-------------------------------------------------------
		If $oTask.Live = 0 Then
			$oTask.Run()
			Return SetError(1, 0, '')
		EndIf
		;-------------------------------------------------------
		If $oTask.Finished = $g_CHILKAT__Synchronous Then
			Local $oCK_HTTPResp = ObjCreate('{65EA825E-648E-4BF0-8AA3-4E7724F75B07}', '{C143C715-0FED-4392-B207-1CA3CDF84C88}', $g_CHILKAT__hDll)
			With $oCK_HTTPResp
				.LoadTaskResult($oTask)
				Switch $vReturnType
					Case 'T', ''
						Return .BodyStr
					Case 'T1', 'T2', 'T3', 'T4'
						Return BinaryToString(.Body, Number(StringRight($vReturnType, 1)))
					Case 'B'
						Return .Body
					Case 'H'
						Return .Header
				EndSwitch
			EndWith
		Else
			If $LockOnTimeOut = Default Then $LockOnTimeOut = 60000
			If $LockOnTimeOut > 4 And $LockOnTimeOut < 61 Then $LockOnTimeOut *= 1000
			If $LockOnTimeOut Then
				If Not $oTask.UserData Then
					$oTask.UserData = TimerInit()
				ElseIf $oTask.UserData = -1 Then
					Return ''
				EndIf
				If TimerDiff($oTask.UserData) > $LockOnTimeOut Then
					$oTask.UserData = -1
					Return SetError(2, _Ck_ErrNotify('Ck_HttpResponeFromSingleTask', 'Timeout. Task is locked on.', 1), '')
				EndIf
			EndIf
			Return SetError(1, 0, '')
		EndIf
	EndFunc   ;==>Ck_HttpResponeFromSingleTask

	Func Ck_HttpClearCookie(ByRef $oCK_HTTP, $AllowClearCookieJarFile = False)
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_HttpClearCookie', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
		If Not IsObj($oCK_HTTP) Then Return SetError(1, _Ck_ErrNotify('Ck_HttpClearCookieInMemory', '$oCK_HTTP isn''t the Chilkat Http Object'), 0)
		Local $sCookieDir = $oCK_HTTP.CookieDir
		Switch $sCookieDir
			Case ''
				Return SetError(2, _Ck_ErrNotify('Ck_HttpClearCookie', 'CookieDir is''t set'), 0)
			Case 'memory'
				$oCK_HTTP.ClearInMemoryCookies()
			Case Else
				If FileExists($sCookieDir) And $AllowClearCookieJarFile = False And MsgBox(4 + 4096, 'Warning', 'Do you really want to delete CookieJar: [' & $sCookieDir & '] ?') = 6 Then FileDelete($sCookieDir)
		EndSwitch
		Return 1
	EndFunc   ;==>Ck_HttpClearCookie

	Func Ck_HttpGetCookie($oCK_HTTP, $sDomain_Or_RelativeUrl = Default, $ParseXmlToSemiColonFormat = True)
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_HttpGetCookie', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
		If Not IsObj($oCK_HTTP) Then Return SetError(1, _Ck_ErrNotify('Ck_HttpGetCookie', '$oCK_HTTP isn''t the Chilkat Http Object'), 0)
		If $sDomain_Or_RelativeUrl = Default Or Not $sDomain_Or_RelativeUrl Then
			$sDomain_Or_RelativeUrl = $oCK_HTTP.UncommonOptions
			If $sDomain_Or_RelativeUrl = '' Then Return SetError(2, _Ck_ErrNotify('Ck_HttpGetCookie', '$sDomain_Or_RelativeUrl is empty'), '')
		ElseIf StringRegExp($sDomain_Or_RelativeUrl, '(?i)^http') Then
			Local $oURL = Ck_HttpCrackURL($sDomain_Or_RelativeUrl)
			If @error Then Return SetError(3, _Ck_ErrNotify('Ck_HttpGetCookie', '$sDomain_Or_RelativeUrl is incorrect format'), '')
			$sDomain_Or_RelativeUrl = $oURL.Host
		EndIf
		;-------------------------------------------------------------------------
		Local $sCookie = $oCK_HTTP.GetCookieXml($sDomain_Or_RelativeUrl)
		If $sCookie = '' Then Return SetError(4, _Ck_ErrNotify('Ck_HttpGetCookie', 'No stored cookies'), '')
		If $ParseXmlToSemiColonFormat Then
			Local $aCookie = StringRegExp($sCookie, '(?m)^\h*?<([^>]+?)>(.*?)</\1>\h*?$', 3)
			If @error Then Return ''
			$sCookie = ''
			For $i = 0 To UBound($aCookie) - 1 Step 2
				$sCookie &= $aCookie[$i] & '=' & $aCookie[$i + 1] & ';'
			Next
			Return StringTrimRight($sCookie, 1)
		Else
			Return $sCookie
		EndIf
	EndFunc   ;==>Ck_HttpGetCookie

	Func Ck_HttpSetCookie(ByRef $oCK_HTTP, $sCookie, $sDomain_Or_RelativeUrl = Default, $Append = True)
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_HttpSetCookie', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
		If Not IsObj($oCK_HTTP) Then Return SetError(1, _Ck_ErrNotify('Ck_HttpAuthentication', '$oCK_HTTP isn''t the Chilkat Http Object'), 0)
		If $sDomain_Or_RelativeUrl = Default Or Not $sDomain_Or_RelativeUrl Then
			$sDomain_Or_RelativeUrl = StringRegExp($sCookie, '(?i)(?|cookie key\h*?=\h*?"\.?(.+?),|"domain"\h*?:\h*?"\.?(.+?)")', 1)
			If @error Then Return SetError(1, _Ck_ErrNotify('Ck_HttpSetCookie', '$sDomain_Or_RelativeUrl is empty'), '')
			$sDomain_Or_RelativeUrl = $sDomain_Or_RelativeUrl[0]
		EndIf
		;----------------------------------------------------------------
		Local $pCookie, $rCookie

		If StringRegExp($sCookie, '(?s)^\s*?\[') Then
			Local Static $oCookie = ObjCreate('{EE09B103-97E0-11CF-978F-00A02463E06F}')
			$oCookie.CompareMode = 1
			$oCookie.RemoveAll()
			$rCookie = StringRegExp($sCookie, '(?ms)^\{(.*?)\R\s*?\}', 3)
			If @error Then Return SetError(2, _Ck_ErrNotify('Ck_HttpSetCookie', '$sURL is incorrect format (Json)'), '')
			$sCookie = ''
			For $i = 0 To UBound($rCookie) - 1
				$pCookie = StringRegExp($rCookie[$i], '(?i)(?|"(domain|path|name|value|)"\h*?:\h*?"(.*?)"|"(expirationDate)"\h*?:\h*?(\d+))', 3)
				If Not @error Then
					For $j = 0 To UBound($pCookie) - 1 Step 2
						$oCookie($pCookie[$j]) = $pCookie[$j + 1]
					Next
					$sCookie &= '<cookie key="' & $oCookie('domain') & ',' & $oCookie('path') & ',' & $oCookie('name') & '" v="0" ' & ($oCookie('expirationDate') ? 'expire="' & Ck_DateTimeConvert($oCookie('expirationDate'), 'rfc822') & '"' : '') & '><' & $oCookie('name') & '>' & $oCookie('value') & '</' & $oCookie('name') & '></cookie>' & @CRLF
				EndIf
			Next
			;---------------------------------
		ElseIf Not StringRegExp($sCookie, '\R') And StringRegExp($sCookie, '(?im)^\w+((\%5B|\[)\w+(\%5D|\])|-\w+)?\h*?=') Then
			$pCookie = StringRegExp($sCookie, '(?i)(\w+(?:(?:\%5B|\[)\w+(?:\%5D|\])|-\w+)?)\h*?=([^;]*?)\h*?(?:;|$)', 3)
			If @error Then Return SetError(3, _Ck_ErrNotify('Ck_HttpSetCookie', '$sURL is incorrect format (Semicolon)'), '')
			$sCookie = ''
			For $i = 0 To UBound($pCookie) - 1 Step 2
				$sCookie &= '<cookie key="' & $sDomain_Or_RelativeUrl & ',/,' & $pCookie[$i] & '"><' & $pCookie[$i] & '>' & $pCookie[$i + 1] & '</' & $pCookie[$i] & '></cookie>' & @CRLF
			Next
			;---------------------------------
		ElseIf StringInStr($sCookie, '<?xml version', 0, 1) Then
			$sCookie = StringRegExpReplace($sCookie, '(?i)(\Q<?xml version="1.0" encoding="utf-8"?>\E|<cookies>|</cookies>)', '')
		Else
			Return SetError(4, _Ck_ErrNotify('Ck_HttpSetCookie', '$sCookie should be in Json, Semicolon or xml format'), '')
		EndIf
		;----------------------------------------------------------------
		Select
			Case $Append
				Local $MemCookies = Ck_HttpGetCookie($oCK_HTTP, $sDomain_Or_RelativeUrl, False)
				If @error Then ContinueCase
				$MemCookies = StringReplace($MemCookies, '<cookies>', '<cookies>' & @CRLF & $sCookie & @CRLF, 1, 0)
				$oCK_HTTP.SetCookieXml($sDomain_Or_RelativeUrl, $MemCookies)
			Case Else
				$oCK_HTTP.SetCookieXml($sDomain_Or_RelativeUrl, '<?xml version="1.0" encoding="utf-8"?><cookies>' & $sCookie & '</cookies>')
		EndSelect
	EndFunc   ;==>Ck_HttpSetCookie
#EndRegion


#Region CHILKAT STARTUP
	Func Ck_StartUp($sDllPath = Default, $sCodeUnlock = $g_CHILKAT__UnlockBundleKey, $iMaxThreads = Default, $blEnableDnsCaching = Default)
		If $g_CHILKAT__hDll <> -1 Then Return 1
		;------------------------------------------------------------------------------------
		If $sDllPath = Default Or Not $sDllPath Or Not FileExists($sDllPath) Then
			Local $FolderDllPath = @ScriptDir
			For $i = 1 To 2
				$sDllPath = $FolderDllPath & '\Chilkat' & (@AutoItX64 ? '-x64.dll' : '.dll')
				If FileExists($sDllPath) Then
					ExitLoop
				Else
					If @Compiled = 0 Then
						Local $CkRequestPath = StringRegExp(FileRead(@ScriptFullPath), '(?im)#include\h+[''"<]\h*?([^''">\r\n]+ckRequest(?:_OBF)?\.au3)[''">]', 1)
						If @error Then
							Local $Au3Check = StringRegExpReplace(@AutoItExe, '[^\\]+$', '', 1) & 'Au3Check.exe'
							If FileExists($Au3Check) Then
								Local $iPID = Run('"' & $Au3Check & '" -v 1 "' & @ScriptFullPath & '"', '', @SW_HIDE, 8)
								Local $sStdRead = ''
								Local $iTimerInit = TimerInit()
								Do
									If TimerDiff($iTimerInit) > 2 * 60 * 1000 Then Exit MsgBox(4096 + 16, 'Ck_StartUp', 'The Chilkat.dll path is incorrect #1')
									$sStdRead &= StdoutRead($iPID)
								Until @error
								$CkRequestPath = StringRegExp($sStdRead, '(?im)INCLUDE: "([^"\r\n]+ckRequest(?:_OBF)?\.au3)"', 1)
								If @error Then Exit MsgBox(4096 + 16, 'Ck_StartUp', 'The Chilkat.dll path is incorrect #2')
							EndIf
						EndIf
						$CkRequestPath = _Ck_PathToFullPath($CkRequestPath[0])
						$FolderDllPath = StringRegExpReplace($CkRequestPath, '[^\\]+$', '', 1)
					EndIf
				EndIf
			Next
			If $i = 3 Then Exit MsgBox(4096 + 16, 'Ck_StartUp', 'The Chilkat.dll path is incorrect')
		EndIf
		;------------------------------------------------------------------------------------------
		$g_CHILKAT__pathDll = $sDllPath
		;------------------------------------------------------------------------------------------
		Local $oCk_InitTest = ObjCreateInterface('{B2429147-23BE-4A55-8EAE-2AFF2635815B}', '{4995C839-42F3-4D4F-8A08-1BA24B5F5E8F}')
		If Not IsObj($oCk_InitTest) And Not _Ck_RegisterServer($g_CHILKAT__pathDll) Then Exit MsgBox(4096 + 16, 'Ck_StartUp', 'Cannot register COM for Chilkat.dll')
		;------------------------------------------------------------------------------------------
		If $g_CHILKAT__hDll = -1 Then
			$g_CHILKAT__hDll = DllOpen($g_CHILKAT__pathDll)
			If @error Or $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_StartUp', 'The Chilkat.dll has not been initialized')
		EndIf
		OnAutoItExitRegister('Ck_Shutdown')
		;------------------------------------------------------------------------------------------
		Local $oCk_Global = DllStructCreate('char UnlockBundle[32]')
		$oCk_Global.UnlockBundle($sCodeUnlock)     ;mở khoá Chilkat
		;------------------------------------------------------------------------------------------
		$oCk_Global = ObjCreate('{B2429147-23BE-4A55-8EAE-2AFF2635815B}', '{4995C839-42F3-4D4F-8A08-1BA24B5F5E8F}', $g_CHILKAT__hDll)
		If Not IsObj($oCk_Global) Then Return SetError(1, _Ck_ErrNotify('Ck_StartUp', 'The Chilkat Global Object creation failed'), '')
		;------------------------------------------------------------------------------------------
		Call('assign', 'cunlock', (Call('assign', 'cunlock', $sCodeUnlock, 1) * Call('execute', '($cunlock=default or not $cunlock or stringregexp($cunlock,"(?i)\btrial\b"))?1:0')) ? 'trial' : Call('eval', 'cunlock'))
		$g_CHILKAT__Synchronous = Call('execute', "stringinstr(eval('cunlock'),'tPeCxe_',1,1)+(eval('cunlock')='trial')")
		;------------------------------------------
		With $oCk_Global
			Call('execute', ".UnlockBundle(stringreplace(eval('cunlock'),'tPeCxe_','',1,1))")
			Local $iStatus = Call('execute', '.UnlockStatus') + $g_CHILKAT__Synchronous
			ConsoleWrite('---> Chilkat (ver ' & .Version & ') License: ' & ($iStatus = 2 ? 'Trial 30 days' : ($iStatus = 3 ? 'Full Registed' : 'Please register for using')) & @CRLF & @CRLF)
			;------------------------------------------
			If $iMaxThreads = Default Or Not $iMaxThreads Or $iMaxThreads < 1 Then $iMaxThreads = $g_CHILKAT__MaxThreads
			If $iMaxThreads > 500 Then $iMaxThreads = 500 + _Ck_ErrNotify('Ck_StartUp', 'The maximum number of thread pool threads is 500', 0)
			$g_CHILKAT__MaxThreads = $iMaxThreads
			.MaxThreads = $iMaxThreads     ;set max thread sử dụng, tối đa 500
			;------------------------------------------
			If $blEnableDnsCaching = Default Then $blEnableDnsCaching = False
			If $blEnableDnsCaching Then .EnableDnsCaching = True
			;------------------------------------------------------------------------------------------
			$g_CHILKAT__oGlobal = $oCk_Global
			Return $oCk_Global
		EndWith
	EndFunc   ;==>Ck_StartUp

	Func Ck_Shutdown()
		If $g_CHILKAT__hDll = -1 Or Not IsObj($g_CHILKAT__oGlobal) Then Return
		$g_CHILKAT__ShowNotify = False
		If $g_CHILKAT__aSsh[0] > 0 Then Ck_SshTunnelClose($g_CHILKAT__aSsh)
		;-----------------------------------------------------------------------------
		$g_CHILKAT__oGlobal.DnsClearCache()
		$g_CHILKAT__oGlobal.FinalizeThreadPool()
		;-----------------------------------------------------------------------------
		DllClose($g_CHILKAT__hDll)
		$g_CHILKAT__hDll = -1
	EndFunc   ;==>Ck_Shutdown

	Func Ck_AutoCloseWindowProblemReport($iUselessParam = 0)
		If StringInStr($cmdlineraw, '-ckcrash-monitor:', 1, 1) Then
			TraySetState(2)
			Local $iParentPID = Number(StringRegExp($cmdlineraw, '-ckcrash-monitor:(\d+)', 1)[0])
			Do
				If ProcessExists('WerFault.exe') Then
					Local $aListPidWerFault = ProcessList('WerFault.exe')
					For $i = 1 To $aListPidWerFault[0][0]
						If _WinAPI_GetParentProcess($aListPidWerFault[$i][1]) = $iParentPID Then ProcessClose($aListPidWerFault[$i][1])
					Next
				EndIf
				Sleep(100)
			Until Not ProcessExists($iParentPID)
			Exit
		Else
			Run('"' & @AutoItExe & (@Compiled ? '"' : '" "' & @ScriptFullPath & '"') & ' -ckcrash-monitor:' & @AutoItPID, '', '', 1)
		EndIf
	EndFunc   ;==>Ck_AutoCloseWindowProblemReport
#EndRegion


#Region CHILKAT TASK MULTI REQUEST
	Func Ck_TaskQueueAdd(ByRef $arrayQueueTask, ByRef $oTask, $IncreaseSizeArrayQueueTaskDespiteOfError = True)
		Local $currentUbound = UBound($arrayQueueTask)
		Local $isTaskObj = 1
		;--------------------------------------
		If Not IsArray($arrayQueueTask) And $currentUbound = 0 Then
			Local $arrayQueueTaskTemp[0][2]
			$arrayQueueTask = $arrayQueueTaskTemp
		EndIf
		;--------------------------------------
		If Not IsObj($oTask) Or ObjName($oTask) <> 'ChilkatTask' Then
			_Ck_ErrNotify('Ck_TaskQueueAdd', '$oTask of queue {' & ($currentUbound + 1) & '} isn''t the Task Object')
			If Not $IncreaseSizeArrayQueueTaskDespiteOfError Then Return SetError(1, 0, 0)
			$isTaskObj = 0
		EndIf
		;--------------------------------------
		If $isTaskObj = 1 And $oTask.Run() = 0 Then
			_Ck_ErrNotify('Ck_TaskQueueAdd', '$oTask of queue {' & ($currentUbound + 1) & '} cannot run')
			If Not $IncreaseSizeArrayQueueTaskDespiteOfError Then Return SetError(2, 0, 0)
		EndIf
		;--------------------------------------
		ReDim $arrayQueueTask[$currentUbound + 1][2]
		$arrayQueueTask[$currentUbound][0] = $oTask
		$arrayQueueTask[$currentUbound][1] = $g_CHILKAT__iTaskStatus_Running
		Return 1
	EndFunc   ;==>Ck_TaskQueueAdd

	Func Ck_TaskQueueRun(ByRef $arrayQueueTask, $iTimeOutMs = Default, $iSleepMs = Default)
		Local $uQueueTask = UBound($arrayQueueTask)
		If $uQueueTask = 0 Then Return SetError(1, _Ck_ErrNotify('Ck_TaskQueueRun', 'Don''t have any task to run'), '')
		;---------------------------------------------------------------------
		If $iTimeOutMs = Default Or Not $iTimeOutMs Or $iTimeOutMs < 0 Then $iTimeOutMs = 0
		If $iTimeOutMs > 4 And $iTimeOutMs < 61 Then $iTimeOutMs *= 1000
		If $iSleepMs = Default Or Not $iSleepMs Or $iSleepMs < 0 Then $iSleepMs = 10
		Local $iCheckCompleted = 0
		Local $iTimerProgress = TimerInit(), $iTimerDiff = 0, $iTimerDiff_Old = 0
		;---------------------------------------------------------------------
		While $iCheckCompleted <> $uQueueTask
			For $i = 0 To $uQueueTask - 1
				If $arrayQueueTask[$i][1] = $g_CHILKAT__Synchronous Then
					If (Not IsObj($arrayQueueTask[$i][0]) Or ObjName($arrayQueueTask[$i][0]) <> 'ChilkatTask') Then
						$arrayQueueTask[$i][1] = $g_CHILKAT__iTaskStatus_NotTaskObj
						$iCheckCompleted += 1
					ElseIf $iTimeOutMs And Not $arrayQueueTask[$i][0].UserData Then
						$arrayQueueTask[$i][0].UserData = TimerInit()
					ElseIf $iTimeOutMs And TimerDiff($arrayQueueTask[$i][0].UserData) > $iTimeOutMs Then
						$arrayQueueTask[$i][1] = $g_CHILKAT__iTaskStatus_Timeout
						$iCheckCompleted += 1
					ElseIf $arrayQueueTask[$i][0].Finished Then
						If $arrayQueueTask[$i][0].StatusInt = 7 Then
							If $arrayQueueTask[$i][0].GetResultBool() = 1 Then
								$arrayQueueTask[$i][1] = $g_CHILKAT__iTaskStatus_Success
							Else
								$arrayQueueTask[$i][1] = $g_CHILKAT__iTaskStatus_Failure
							EndIf
						Else
							$arrayQueueTask[$i][1] = $g_CHILKAT__iTaskStatus_Canceled
						EndIf
						$iCheckCompleted += 1
					EndIf
				EndIf
			Next
			Sleep($iSleepMs)
		WEnd
	EndFunc   ;==>Ck_TaskQueueRun

	Func Ck_TaskQueueClose(ByRef $arrayQueueTask)
		Local $uQueueTask = UBound($arrayQueueTask)
		If $uQueueTask = 0 Then Return SetError(1, _Ck_ErrNotify('Ck_TaskQueueClose', '$arrayQueueTask don''t have any task to run'), '')
		If UBound($arrayQueueTask, 2) <> 2 Then Return SetError(2, _Ck_ErrNotify('Ck_TaskQueueClose', '$arrayQueueTask is incorrect forrmat'), '')
		For $i = 0 To $uQueueTask - 1
			If IsObj($arrayQueueTask[$i][0]) And ObjName($arrayQueueTask[$i][0]) = 'ChilkatTask' Then
				$arrayQueueTask[$i][0].Cancel()
				$arrayQueueTask[$i][0] = Null
			EndIf
		Next
		$arrayQueueTask = Null
	EndFunc   ;==>Ck_TaskQueueClose
#EndRegion


#Region CHILKAT SSH
	Func Ck_SshCreate($Hostname, $Port = 22, $User = 'admin', $Pass = 'admin', $oSshConnectThroughSsh = 0, $iConnectTimeoutMs = Default)
		If $g_CHILKAT__hDll = -1 Then
			Ck_StartUp(Default)
			If $g_CHILKAT__hDll = -1 Then Return SetError(1, 0, '')
		EndIf
		;------------------------------------------------------------------------
		Local $oCK_Ssh = ObjCreate('{D67AF44C-0AA8-424A-AF73-2070B4C11781}', '{792D2027-B40F-4894-9248-5E9A3FA09F36}', $g_CHILKAT__hDll)
		If Not IsObj($oCK_Ssh) Then Return SetError(2, _Ck_ErrNotify('Ck_SshCreate', 'The Chilkat Ssh Object creation failed'), 0)
		;--------------------------------------------------------------
		If $User = Default Then $User = 'admin'
		If $Pass = Default Then $Pass = 'admin'
		If $iConnectTimeoutMs = Default Or Not $iConnectTimeoutMs Then $iConnectTimeoutMs = 30000
		If $iConnectTimeoutMs > 4 And $iConnectTimeoutMs < 61 Then $iConnectTimeoutMs *= 1000
		;--------------------------------------------------------------
		With $oCK_Ssh
			.TcpNoDelay = 1
			.ConnectTimeoutMs = $iConnectTimeoutMs
			ConsoleWrite(@CRLF & '> SSH is connecting to [' & $Hostname & ':' & $Port & '] ...')
			If IsObj($oSshConnectThroughSsh) Then
				If ObjName($oSshConnectThroughSsh) = 'ChilkatSsh' Then
					If .ConnectThroughSsh($oSshConnectThroughSsh, $Hostname, $Port) = 0 Or .IsConnected() = 0 Then
						Return SetError(3, ConsoleWrite(@CRLF) + _Ck_ErrNotify('Ck_SshCreate', 'SSH through connection failed'), 0)
					EndIf
				Else
					Return SetError(4, ConsoleWrite(@CRLF) + _Ck_ErrNotify('Ck_SshCreate', '$oSshConnectThroughSsh should be a Object created by Ck_SshCreate Func'), 0)
				EndIf
			Else
				If .Connect($Hostname, $Port) = 0 Or .IsConnected() = 0 Then
					$oCK_Ssh = Null
					Return SetError(5, ConsoleWrite(@CRLF) + _Ck_ErrNotify('Ck_SshCreate', 'SSH connection failed'), 0)
				EndIf
			EndIf
			ConsoleWrite('.')
			If .AuthenticatePw($User, $Pass) = 0 Then
				.Disconnect()
				$oCK_Ssh = Null
				Return SetError(6, ConsoleWrite(@CRLF) + _Ck_ErrNotify('Ck_SshCreate', 'SSH cannot verify username/password Authentication'), 0)
			EndIf
			ConsoleWrite(' Successful')
		EndWith
		;--------------------------------------------------------------
		Return $oCK_Ssh
	EndFunc   ;==>Ck_SshCreate

	Func Ck_SshClose(ByRef $oCK_Ssh)
		If $g_CHILKAT__hDll = -1 Then Exit
		If Not IsObj($oCK_Ssh) Or ObjName($oCK_Ssh) <> 'ChilkatSsh' Then Return SetError(1, _Ck_ErrNotify('Ck_SshClose', '$oCK_Ssh isn''t the Chilkat Ssh Object'), 0)
		$oCK_Ssh.Disconnect()
		$oCK_Ssh = Null
	EndFunc   ;==>Ck_SshClose
#EndRegion


#Region CHILKAT SSH TUNNEL
	;$ListenPort = Default : random unused listen port. Use  @extended to retry
	;$Hostname là array → bật chế độ multi-hop ssh
	Func Ck_SshTunnelCreate($Hostname, $Port = 22, $User = 'admin', $Pass = 'admin', $ListenPort = Default, $iConnectTimeoutMs = Default, $CheckSshLiveOnline = False, $SocksVersion = 5)
		;https://www.chilkatsoft.com/refdoc/xChilkatSshTunnelRef.html#method7
		If $Port = -1 Then
			ConsoleWrite(@CRLF)
			$ListenPort = StringRegExp($User, '(?im)^\h*?Hint:(.+)$', 1)
			_Ck_ErrNotify('Ck_SshTunnelCreate', @error ? $Pass : $ListenPort[0])
			Ck_SshTunnelClose($Hostname)
			Return 0
		EndIf
		;--------------------------------------------------------------
		If $g_CHILKAT__hDll = -1 Then
			Ck_StartUp(Default)
			If $g_CHILKAT__hDll = -1 Then Return SetError(1, 0, '')
		EndIf
		;------------------------------------------------------------------------
		If $User = Default Then $User = 'admin'
		If $Pass = Default Then $Pass = 'admin'
		If $ListenPort = Default Then $ListenPort = 0
		If $SocksVersion = Default Or Not $SocksVersion Then $SocksVersion = 5
		If $iConnectTimeoutMs = Default Or Not $iConnectTimeoutMs Then $iConnectTimeoutMs = 30000
		If $iConnectTimeoutMs > 4 And $iConnectTimeoutMs < 61 Then $iConnectTimeoutMs *= 1000
		;--------------------------------------------------------------
		Local $oSshConnectThroughSsh = 0, $a_oCK_SshTunnel[1] = ['ThroughSSH']
		If IsArray($Hostname) Then
			Local $uHost = UBound($Hostname)
			If (IsArray($Port) And UBound($Port) <> $uHost) Or (IsArray($User) And UBound($User) <> $uHost) Or (IsArray($Pass) And UBound($Pass) <> $uHost) Then
				Return SetError(2, _Ck_ErrNotify('Ck_SshTunnelCreate', 'Though SSH creation failed because quantity of $Hostname, $Port, $User, $Pass is''t same'), 0)
			EndIf
			ReDim $a_oCK_SshTunnel[$uHost + 1]
			For $i = 0 To $uHost - 2
				$oSshConnectThroughSsh = Ck_SshCreate($Hostname[$i], IsArray($Port) ? $Port[$i] : $Port, IsArray($User) ? $User[$i] : $User, IsArray($Pass) ? $Pass[$i] : $Pass, $oSshConnectThroughSsh, $iConnectTimeoutMs)
				If @error Or Not IsObj($oSshConnectThroughSsh) Then Return SetError(3, 0, 0)
				$a_oCK_SshTunnel[$i + 1] = $oSshConnectThroughSsh
			Next
			$Hostname = $Hostname[$i]
			If IsArray($Port) Then $Port = $Port[$i]
			If IsArray($User) Then $User = $User[$i]
			If IsArray($Pass) Then $Pass = $Pass[$i]
		EndIf
		;--------------------------------------------------------------
		Local $oCK_SshTunnel = ObjCreate('{D01DB5A3-B9B7-4837-9874-FBA5BA171976}', '{B777D3CD-07A8-4E22-9AB2-EC62B7160ABF}', $g_CHILKAT__hDll)
		If Not IsObj($oCK_SshTunnel) Then Return SetError(4, _Ck_ErrNotify('Ck_SshTunnelCreate', 'The Chilkat SshTunnel Object creation failed'), 0)
		;--------------------------------------------------------------
		If IsNumber($ListenPort) And $ListenPort <> 0 And Ck_CheckPortInUse($ListenPort) = True Then
			$oCK_SshTunnel = Null
			Return SetError(5, _Ck_ErrNotify('Ck_SshTunnelCreate', 'The listen Port <' & $ListenPort & '> in use. Please set other port.'), 0)
		EndIf
		;--------------------------------------------------------------
		With $oCK_SshTunnel
			.TcpNoDelay = 1
			;.SoRcvBuf = 10 * 1024 ^ 2
			;.SoSndBuf = 1 * 1024 ^ 2
			.ConnectTimeoutMs = $iConnectTimeoutMs
			ConsoleWrite(@CRLF & '> SSH Tunnel is connecting to [' & $Hostname & ':' & $Port & '] ...')
			If IsObj($oSshConnectThroughSsh) Then
				If ObjName($oSshConnectThroughSsh) = 'ChilkatSsh' Then
					If .ConnectThroughSsh($oSshConnectThroughSsh, $Hostname, $Port) = 0 Or .IsSshConnected() = 0 Then
						Return SetError(6, Ck_SshTunnelCreate($oCK_SshTunnel, -1, .LastErrorText, 'SSH Tunnel through connection failed'), 0)
					EndIf
				Else
					Return SetError(7, Ck_SshTunnelCreate($oCK_SshTunnel, -1, .LastErrorText, '$oSshConnectThroughSsh should be a Object created by Ck_SshCreate Func'), 0)
				EndIf
			Else
				If .Connect($Hostname, $Port) = 0 Or .IsSshConnected() = 0 Then
					Return SetError(8, Ck_SshTunnelCreate($oCK_SshTunnel, -1, .LastErrorText, 'SSH Tunnel connection failed'), 0)
				EndIf
			EndIf
			ConsoleWrite('.')
			If .AuthenticatePw($User, $Pass) = 0 Then Return SetError(9, Ck_SshTunnelCreate($oCK_SshTunnel, -1, .LastErrorText, 'SSH Tunnel cannot verify username/password Authentication'), 0)
			ConsoleWrite('.')
			.DynamicPortForwarding = $g_CHILKAT__Synchronous
			.SocksVersion = $SocksVersion
			ConsoleWrite(' Successful > Begin Accepting listenPort ...')
			If .BeginAccepting($ListenPort) = 0 Or .IsAccepting = 0 Then Return SetError(10, Ck_SshTunnelCreate($oCK_SshTunnel, -1, .LastErrorText, 'SSH Tunnel cannot bind to the listen port'))
			ConsoleWrite(' Successful. ')
			;--------------------------------------------------------------------
			If $CheckSshLiveOnline Then
				ConsoleWrite(' > Check live Ssh online ...')
				$g_CHILKAT__ShowNotify = False
				Local $oHttp = Ck_HttpCreate('')
				$g_CHILKAT__ShowNotify = True
				Ck_HttpThroughSocksProxy($oHttp, 'localhost', .ListenPort)
				Local $prevDebugTurnOn = Ck_HttpDebugRequestHeaders(False)
				Local $checkIP = Ck_HttpRequest($oHttp, 'https://api.ipify.org', '', '', $iConnectTimeoutMs)
				Ck_HttpDebugRequestHeaders($prevDebugTurnOn)
				$oHttp = Null
				If $checkIP <> $Hostname Then Return SetError(11, Ck_SshTunnelCreate($oCK_SshTunnel, -1, .LastErrorText, 'SSH Tunnel doesn''t live online Or the timeout occurs because it connects slowly'))
				ConsoleWrite(' Successful ')
			EndIf
			;--------------------------------------------------------------------
			ConsoleWrite('> Listening Port: ' & $oCK_SshTunnel.ListenPort & @CRLF & @CRLF)
		EndWith
		ReDim $g_CHILKAT__aSsh[$g_CHILKAT__aSsh[0] + 2]
		$g_CHILKAT__aSsh[$g_CHILKAT__aSsh[0] + 1] = $oCK_SshTunnel
		$g_CHILKAT__aSsh[0] += 1
		If UBound($a_oCK_SshTunnel) > 0 Then
			$a_oCK_SshTunnel[UBound($Hostname)] = $oCK_SshTunnel
			Return SetExtended($oCK_SshTunnel.ListenPort, $a_oCK_SshTunnel)
		Else
			Return SetExtended($oCK_SshTunnel.ListenPort, $oCK_SshTunnel)
		EndIf
	EndFunc   ;==>Ck_SshTunnelCreate

	Func Ck_SshTunnelClose(ByRef $oCK_single_or_array_SshTunnel)
		;https://www.chilkatsoft.com/refdoc/xChilkatSshTunnelRef.html#method15
		If $g_CHILKAT__hDll = -1 Then Exit
		If IsArray($oCK_single_or_array_SshTunnel) Then
			If UBound($oCK_single_or_array_SshTunnel, 2) <> 0 Then Return SetError(1, _Ck_ErrNotify('Ck_SshTunnelCloseArray', '$oCK_single_or_array_SshTunnelshould be a 1D-Array Data'), 0)
			;-----------------------------------------------------------------------------
			If $oCK_single_or_array_SshTunnel[0] == 'ThroughSSH' Then     ;through ssh
				For $i = 1 To UBound($oCK_single_or_array_SshTunnel) - 2
					If Not IsObj($oCK_single_or_array_SshTunnel[$i]) Or ObjName($oCK_single_or_array_SshTunnel[$i]) <> 'ChilkatSsh' Then ContinueLoop
					Ck_SshClose($oCK_single_or_array_SshTunnel[$i])
				Next
				With $oCK_single_or_array_SshTunnel[$i]
					.StopAccepting(1)
					.DisconnectAllClients(1)
					.CloseTunnel(1)
				EndWith
				$oCK_single_or_array_SshTunnel = Null
				Return 1

			Else     ;multi ssh
				For $i = UBound($oCK_single_or_array_SshTunnel) - 1 To 0 Step -1
					If Not IsObj($oCK_single_or_array_SshTunnel[$i]) Or ObjName($oCK_single_or_array_SshTunnel[$i]) <> 'ChilkatSshTunnel' Then _ArrayDelete($oCK_single_or_array_SshTunnel, $i)
				Next
				If UBound($oCK_single_or_array_SshTunnel) = 0 Then Return
				Local $uarrSshTunnel = UBound($oCK_single_or_array_SshTunnel)
				;-----------------------------------------------------------------------------
				Local $aCheck[$uarrSshTunnel], $cCheck = 0
				For $i = 0 To $uarrSshTunnel - 1
					$oCK_single_or_array_SshTunnel[$i].StopAccepting(0)
				Next
				While $cCheck <> $uarrSshTunnel
					For $i = 0 To $uarrSshTunnel - 1
						If $aCheck[$i] = 0 And $oCK_single_or_array_SshTunnel[$i].IsAccepting = 0 Then
							$aCheck[$i] = 1
							$cCheck += 1
						EndIf
					Next
					Sleep(10)
				WEnd
				$aCheck = Null
				;-----------------------------------------------------------------------------
				Local $aCheck[$uarrSshTunnel], $cCheck = 0
				For $i = 0 To $uarrSshTunnel - 1
					$oCK_single_or_array_SshTunnel[$i].CloseTunnel(0)
				Next
				While $cCheck <> $uarrSshTunnel
					For $i = 0 To $uarrSshTunnel - 1
						If $aCheck[$i] = 0 And StringInStr($oCK_single_or_array_SshTunnel[$i].GetCurrentState, 'threadRunning="0"', 0, 1) Then
							$aCheck[$i] = 1
							$cCheck += 1
							$oCK_single_or_array_SshTunnel[$i] = Null
						EndIf
					Next
					Sleep(10)
				WEnd
				Return 1
			EndIf

		Else     ;single ssh
			If IsObj($oCK_single_or_array_SshTunnel) And ObjName($oCK_single_or_array_SshTunnel) = 'ChilkatSshTunnel' Then
				With $oCK_single_or_array_SshTunnel
					.StopAccepting(1)
					.DisconnectAllClients(1)
					.CloseTunnel(1)
				EndWith
				$oCK_single_or_array_SshTunnel = Null
				Return 1
			Else
				Return SetError(1, _Ck_ErrNotify('Ck_SshTunnelClose', '$oCK_single_or_array_SshTunnel isn''t the Chilkat SshTunnel Object'), 0)
			EndIf
		EndIf
	EndFunc   ;==>Ck_SshTunnelClose
#EndRegion


#Region SSH MULTI
	Func Ck_SshTunnelCreateMulti_QueueAdd(ByRef $array_SSH_QueueTask, $Hostname, $Port = 22, $User = 'admin', $Pass = 'admin', $ListenPort = Default, $InboundUsername = '', $InboundPassword = '')
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_SshTunnelCreateMulti_QueueAdd', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
		;-----------------------------------------------
		Local $currentUbound = UBound($array_SSH_QueueTask)
		If $currentUbound > $g_CHILKAT__MaxThreads Then Exit MsgBox(4096 + 16, 'Ck_SshTunnelCreateMulti_QueueAdd', 'The number of Tasks must not exceed ' & $g_CHILKAT__MaxThreads)
		;-----------------------------------------------
		If (Not IsArray($array_SSH_QueueTask) And $currentUbound = 0) Then
			Local $array_SSH_QueueTaskTemp[0][9]     ;  [['ListenPort', 'Hostname', 'Port', 'User', 'Pass', 'Inbound Username', 'Inbound Password', 'Task Object', 'SSH Object']]
			$array_SSH_QueueTask = $array_SSH_QueueTaskTemp
		EndIf
		;-----------------------------------------------
		If $User = Default Then $User = 'admin'
		If $Pass = Default Then $Pass = 'admin'
		If $ListenPort = Default Then $ListenPort = 0
		If $InboundUsername = Default Or Not $InboundUsername Then $InboundUsername = ''
		If $InboundPassword = Default Or Not $InboundPassword Then $InboundPassword = ''
		;-----------------------------------------------
		Local $aInfo = [$ListenPort, $Hostname, $Port, $User, $Pass, $InboundUsername, $InboundPassword, 'objTask', 'objSsh']
		ReDim $array_SSH_QueueTask[$currentUbound + 1][9]
		For $i = 0 To 8
			$array_SSH_QueueTask[$currentUbound][$i] = $aInfo[$i]
		Next
		;-----------------------------------------------
		If IsNumber($ListenPort) And $ListenPort <> 0 And Ck_CheckPortInUse($ListenPort) = True Then
			$array_SSH_QueueTask[$currentUbound][0] = -1
			$array_SSH_QueueTask[$currentUbound][7] = 'ListenPort in use'
			Return _Ck_ErrNotify('Ck_SshTunnelCreateMulti_QueueRun', 'Ssh [' & $Hostname & '] $ListenPort in use', 1)
		EndIf
		;-----------------------------------------------
		Local $oCK_SshTunnel = ObjCreate('{D01DB5A3-B9B7-4837-9874-FBA5BA171976}', '{B777D3CD-07A8-4E22-9AB2-EC62B7160ABF}', $g_CHILKAT__hDll)
		If Not IsObj($oCK_SshTunnel) Then
			$array_SSH_QueueTask[$currentUbound][0] = -1
			$array_SSH_QueueTask[$currentUbound][7] = 'Cannot create SshTunnel Object '
			Return _Ck_ErrNotify('Ck_SshTunnelCreateMulti_QueueRun', 'Ssh [' & $Hostname & '] cannot create SshTunnel Object', 1)
		Else
			$array_SSH_QueueTask[$currentUbound][8] = $oCK_SshTunnel
		EndIf
	EndFunc   ;==>Ck_SshTunnelCreateMulti_QueueAdd

	Func Ck_SshTunnelCreateMulti_QueueRun(ByRef $array_SSH_QueueTask, $iTimeOutMs = Default, $AutoCloseSshConnectFailure = False, $SocksVersion = 5)
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_SshTunnelCreateMulti_QueueRun', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
		If UBound($array_SSH_QueueTask) > $g_CHILKAT__MaxThreads Then Exit MsgBox(4096 + 16, 'Ck_SshTunnelCreateMulti_QueueRun', 'The number of Tasks must not exceed ' & $g_CHILKAT__MaxThreads)
		If Not IsArray($array_SSH_QueueTask) Or UBound($array_SSH_QueueTask, 2) <> 9 Then Return SetError(1, _Ck_ErrNotify('Ck_SshTunnelCreateMulti_QueueRun', '$array_SSH_QueueTask is incorect format'), '')
		;--------------------------------------------------------------
		If $AutoCloseSshConnectFailure = Default Then $AutoCloseSshConnectFailure = False
		If $SocksVersion = Default Or Not $SocksVersion Then $SocksVersion = 5
		If $iTimeOutMs = Default Or $iTimeOutMs <= 0 Then $iTimeOutMs = 30000
		If $iTimeOutMs > 4 And $iTimeOutMs < 31 Then $iTimeOutMs *= 1000
		If $iTimeOutMs < 5000 Then $iTimeOutMs = 5000
		Local $arrayQueueTask
		Local $uboudQueueTask = UBound($array_SSH_QueueTask)
		$g_CHILKAT__ShowNotify = False

		;Connect--------------------------------------------------------------
		ConsoleWrite(@CRLF & '+> Please wait about [' & Ceiling($iTimeOutMs / 1000 + $AutoCloseSshConnectFailure * 10) & ' seconds] while connecting to the multi Ssh Server......' & @CRLF)
		For $i = 0 To $uboudQueueTask - 1
			If $array_SSH_QueueTask[$i][0] <> -1 Then
				$array_SSH_QueueTask[$i][8].SoRcvBuf = 10 * 1024 ^ 2
				$array_SSH_QueueTask[$i][8].SoSndBuf = 1 * 1024 ^ 2
				$array_SSH_QueueTask[$i][8].TcpNoDelay = 1
				$array_SSH_QueueTask[$i][7] = $array_SSH_QueueTask[$i][8].ConnectAsync($array_SSH_QueueTask[$i][1], $array_SSH_QueueTask[$i][2])
			EndIf
			Ck_TaskQueueAdd($arrayQueueTask, $array_SSH_QueueTask[$i][7])
		Next
		Ck_TaskQueueRun($arrayQueueTask, $iTimeOutMs)
		For $i = 0 To $uboudQueueTask - 1
			If $arrayQueueTask[$i][1] = 0 And $array_SSH_QueueTask[$i][8].IsSshConnected() Then
				ConsoleWrite('> Ssh-' & $i & ' [' & $array_SSH_QueueTask[$i][1] & '] connects successfully' & @CRLF)
			Else
				If $array_SSH_QueueTask[$i][0] <> -1 Then
					If $uboudQueueTask > $g_CHILKAT__MaxThreads Or $AutoCloseSshConnectFailure = True Then
						$array_SSH_QueueTask[$i][8].StopAccepting(1)
						$array_SSH_QueueTask[$i][8].CloseTunnel(1)
					EndIf
					ConsoleWrite('!> Ssh-' & $i & ' [' & $array_SSH_QueueTask[$i][1] & '] connects unsuccessfully' & @CRLF)
					$array_SSH_QueueTask[$i][0] = -1
					$array_SSH_QueueTask[$i][7] = ($arrayQueueTask[$i][1] = $g_CHILKAT__iTaskStatus_Timeout ? 'Connect Timeout' : 'Connection Failed #' & $arrayQueueTask[$i][1])
				EndIf
			EndIf
		Next
		Ck_TaskQueueClose($arrayQueueTask)

		;AuthenticatePw--------------------------------------------------------------
		ConsoleWrite(@CRLF & '+> Please wait about [' & Ceiling($iTimeOutMs / 2500 + $AutoCloseSshConnectFailure * 10) & '] seconds while authenticating to the multi Ssh Server......' & @CRLF)
		For $i = 0 To $uboudQueueTask - 1
			If $array_SSH_QueueTask[$i][0] <> -1 Then
				$array_SSH_QueueTask[$i][7] = $array_SSH_QueueTask[$i][8].AuthenticatePwAsync($array_SSH_QueueTask[$i][3], $array_SSH_QueueTask[$i][4])
			EndIf
			Ck_TaskQueueAdd($arrayQueueTask, $array_SSH_QueueTask[$i][7])
		Next
		Ck_TaskQueueRun($arrayQueueTask, $iTimeOutMs)
		For $i = 0 To $uboudQueueTask - 1
			If $arrayQueueTask[$i][1] = 0 Then
				ConsoleWrite('> Ssh-' & $i & ' [' & $array_SSH_QueueTask[$i][1] & '] authenticates successfully' & @CRLF)
			Else
				If $array_SSH_QueueTask[$i][0] <> -1 Then
					If $uboudQueueTask > $g_CHILKAT__MaxThreads Or $AutoCloseSshConnectFailure = True Then
						$array_SSH_QueueTask[$i][8].StopAccepting(1)
						$array_SSH_QueueTask[$i][8].CloseTunnel(1)
					EndIf
					ConsoleWrite('!> Ssh-' & $i & ' [' & $array_SSH_QueueTask[$i][1] & '] authenticates unsuccessfully' & @CRLF)
					$array_SSH_QueueTask[$i][0] = -1
					$array_SSH_QueueTask[$i][7] = ($arrayQueueTask[$i][1] = $g_CHILKAT__iTaskStatus_Timeout ? 'Authorization Timeout' : 'Authorization Failed #' & $arrayQueueTask[$i][1])
				EndIf
			EndIf
		Next
		Ck_TaskQueueClose($arrayQueueTask)

		;BeginAccepting--------------------------------------------------------------
		ConsoleWrite(@CRLF & '+> Please wait about [' & Ceiling($iTimeOutMs / 1500 + $AutoCloseSshConnectFailure * 10) & '] seconds while forwarding listenPort......' & @CRLF)
		For $i = 0 To $uboudQueueTask - 1
			With $array_SSH_QueueTask[$i][8]
				If $array_SSH_QueueTask[$i][0] <> -1 Then
					.DynamicPortForwarding = $g_CHILKAT__Synchronous
					.SocksVersion = $SocksVersion
					If $array_SSH_QueueTask[$i][5] Then .InboundSocksUsername = $array_SSH_QueueTask[$i][5]
					If $array_SSH_QueueTask[$i][6] Then .InboundSocksPassword = $array_SSH_QueueTask[$i][6]
					$array_SSH_QueueTask[$i][7] = .BeginAcceptingAsync($array_SSH_QueueTask[$i][0])
				EndIf
				Ck_TaskQueueAdd($arrayQueueTask, $array_SSH_QueueTask[$i][7])
			EndWith
		Next
		Ck_TaskQueueRun($arrayQueueTask, $iTimeOutMs)
		For $i = 0 To $uboudQueueTask - 1
			If $arrayQueueTask[$i][1] = 0 And $array_SSH_QueueTask[$i][8].IsAccepting Then
				$array_SSH_QueueTask[$i][0] = $array_SSH_QueueTask[$i][8].ListenPort
				ConsoleWrite('> Ssh-' & $i & ' [' & $array_SSH_QueueTask[$i][1] & '] listen port successfully: ' & $array_SSH_QueueTask[$i][0] & @CRLF)
				ReDim $g_CHILKAT__aSsh[$g_CHILKAT__aSsh[0] + 2]
				$g_CHILKAT__aSsh[$g_CHILKAT__aSsh[0] + 1] = $array_SSH_QueueTask[$i][8]
				$g_CHILKAT__aSsh[0] += 1
			Else
				If $array_SSH_QueueTask[$i][0] <> -1 Then
					If $uboudQueueTask > $g_CHILKAT__MaxThreads Or $AutoCloseSshConnectFailure = True Then
						$array_SSH_QueueTask[$i][8].StopAccepting(1)
						$array_SSH_QueueTask[$i][8].CloseTunnel(1)
					EndIf
					ConsoleWrite('!> Ssh-' & $i & ' [' & $array_SSH_QueueTask[$i][1] & '] listen port unsuccessfully' & @CRLF)
					$array_SSH_QueueTask[$i][0] = -1
					$array_SSH_QueueTask[$i][7] = ($arrayQueueTask[$i][1] = $g_CHILKAT__iTaskStatus_Timeout ? 'PortListening Timeout' : 'PortListening Failed #' & $arrayQueueTask[$i][1])
				EndIf
			EndIf
		Next
		Ck_TaskQueueClose($arrayQueueTask)
		$g_CHILKAT__ShowNotify = True
	EndFunc   ;==>Ck_SshTunnelCreateMulti_QueueRun

	Func Ck_SshTunnelCreateMulti_QueueDisplay($array_SSH_QueueTask)
		Local $iFailure = 0, $iSucess = 0
		For $i = 0 To UBound($array_SSH_QueueTask) - 1
			If $array_SSH_QueueTask[$i][0] = -1 Then
				$array_SSH_QueueTask[$i][8] = 'Failure'
				$iFailure += 1
			Else
				$array_SSH_QueueTask[$i][8] = 'Success'
				$iSucess += 1
			EndIf
		Next
		_ArrayDisplay($array_SSH_QueueTask, _
				'Ssh QueueTask Infos (' & $iSucess & ' success, ' & $iFailure & ' failure)', '', 0, '|', _
				'ListenPort|Hostname|Port|User|Pass|Inbound Username|Inbound Password|Fail Reason|Status')
	EndFunc   ;==>Ck_SshTunnelCreateMulti_QueueDisplay

	Func Ck_SshTunnelCreateMulti_QueueClose(ByRef $array_SSH_QueueTask)
		If Not IsArray($array_SSH_QueueTask) Or UBound($array_SSH_QueueTask, 2) <> 9 Then Return SetError(1, _Ck_ErrNotify('Ck_SshTunnelCreateMulti_QueueClose', '$array_SSH_QueueTask is incorect format'), '')
		If UBound($array_SSH_QueueTask) > 0 Then
			$g_CHILKAT__ShowNotify = False
			For $i = 1 To UBound($array_SSH_QueueTask) - 1
				Ck_SshTunnelClose($array_SSH_QueueTask[$i][7])
			Next
			$array_SSH_QueueTask = Null
			$g_CHILKAT__ShowNotify = True
		EndIf
	EndFunc   ;==>Ck_SshTunnelCreateMulti_QueueClose
#EndRegion


#Region FTP
	Func Ck_FtpCreate()
		;https://www.chilkatsoft.com/refdoc/xChilkatFtp2Ref.html
		If $g_CHILKAT__hDll = -1 Then
			Ck_StartUp(Default)
			If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_FtpCreate', 'The Chilkat.dll has not been initialized.')
		EndIf
		;------------------------------------------------------------------------
		Local $oCK_FTP = ObjCreate('{32BD32D3-66EA-4EE6-A684-20CE86F757C1}', '{3A2BC588-F8E2-4BE3-A154-A3A99CF51E9F}', $g_CHILKAT__hDll)
		If Not IsObj($oCK_FTP) Then Return SetError(2, _Ck_ErrNotify('Ck_FtpCreate', 'The Chilkat Ftp Object creation failed'), '')
		$oCK_FTP.DirListingCharset = $g_CHILKAT__AcceptCharset
		Return $oCK_FTP
	EndFunc   ;==>Ck_FtpCreate

	Func Ck_FtpConnect(ByRef $oCK_FTP, $Hostname, $User = '', $Password = '', $Port = Default, $AsyncMode = False, $iConnectTimeoutMs = Default)
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_FtpConnect', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
		If Not IsObj($oCK_FTP) Then Return SetError(1, _Ck_ErrNotify('Ck_FtpConnect', '$oCK_FTP isn''t the Chilkat Ftp Object'), '')
		;----------------------------------------------------------------------------------------------------------------------------------------------------------------------
		Local $aHostname = StringRegExp($Hostname, '(?i)^(?:ftps?://)?([[:print:]]+):([[:print:]]+)@(ftp\.[[:print:]]+)$', 3)
		If Not @error And UBound($aHostname) = 3 Then
			$User = $aHostname[0]
			$Password = $aHostname[1]
			$Hostname = $aHostname[2]
		EndIf
		;--------------------------------------------------
		If StringRegExp($Hostname, ':\d+$') Then
			$Port = Int(StringRegExp($Hostname, ':(\d+)$', 1)[0])
			$Hostname = StringRegExpReplace($Hostname, ':\d+$', '', 1)
		EndIf
		;--------------------------------------------------
		With $oCK_FTP
			If IsNumber($iConnectTimeoutMs) Then .ConnectTimeout = $iConnectTimeoutMs
			.Hostname = $Hostname
			.Username = $User
			.Password = $Password
			If IsNumber($Port) Then .Port = $Port
			If $AsyncMode Then
				Local $oTask = .ConnectAsync()
				If Not IsObj($oTask) Then Return SetError(2, _Ck_ErrNotify('Ck_FtpConnect', 'Ftp connect failed and doesn''t create Task object'), False)
				Return $oTask
			Else
				If .Connect() = 0 Then Return SetError(3, _Ck_ErrNotify('Ck_FtpConnect', 'Ftp connect failed. Reason: "' & _Ck_ConnectFailReason($oCK_FTP) & '"'), False)
				Return True
			EndIf
		EndWith
	EndFunc   ;==>Ck_FtpConnect

	#H2Obf_Ignore_Start
	Func Ck_FtpCommand(ByRef $oCK_FTP, $Command, $Option1 = '', $Option2 = '')
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_FtpCommand', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
		If Not IsObj($oCK_FTP) Then Return SetError(1, _Ck_ErrNotify('Ck_FtpCommand', '$oCK_FTP isn''t the Chilkat Ftp Object'), '')
		;----------------------------------------------------------------------------------------------------------------------------------------------------------------------
		Local $PrevDir = '', $ChangeDir = False
		With $oCK_FTP
			Switch $Command
				Case 'CD'
					If $Option1 == '' Then
						Return .GetCurrentRemoteDir()
					Else
						If .ChangeRemoteDir($Option1) = 0 Then Return SetError(2, _Ck_ErrNotify('Ck_FtpCommand', 'Change RemoteDir failed'), False)
						Return True
					EndIf
					Return True
				Case 'STAT'
					Return .Stat()
				Case 'NOOP'
					Return .Noop()
				Case 'SYST'
					Return .Syst()
				Case 'FEAT'
					Return .Feat()
				Case 'DELA'
					Return .DeleteTree()
				Case 'GET', 'READ' ;$Option1 = remotefile
					If $Option2 = True Then Return .GetRemoteFileBinaryData($Option1)
					Return BinaryToString(.GetRemoteFileBinaryData($Option1), 4)
				Case 'DOWNLOAD' ;$Option2 = localFilePath
					If .GetFile($Option1, $Option2) = 0 Then Return SetError(4, _Ck_ErrNotify('Ck_FtpCommand', 'Download failed'), False)
					Return True
				Case 'PUT', 'WRITE' ;$Option1 = remotefile , $Option2 = data
					If .PutFileFromBinaryData($Option1, StringToBinary($Option2, 4)) = 0 Then Return SetError(5, _Ck_ErrNotify('Ck_FtpCommand', 'Put File failed'), False)
					Return True
				Case 'PUTA', 'WRITEA' ; $Option1 = localPath
					If .PutTree($Option1) = 0 Then Return SetError(6, _Ck_ErrNotify('Ck_FtpCommand', 'Put Tree failed'), False)
					Return True
				Case 'APPEND' ;$Option1 = remotefile , $Option2 = data
					.AppendFileFromBinaryData($Option1, StringToBinary($Option2, 4))
				Case 'UPLOAD' ; $Option2 = localFilepath
					If .LargeFileUpload($Option2, $Option1, 1024 ^ 2) = 0 Then Return SetError(7, _Ck_ErrNotify('Ck_FtpCommand', 'Large File Upload failed'), False)
					Return True
				Case 'SIZE'  ;$Option1 = remotefile
					Local $Size = .GetSizeByName($Option1)
					If $Size = -1 Then Return SetError(8, _Ck_ErrNotify('Ck_FtpCommand', 'File not exists'), False)
					Return $Size
				Case 'EXIST'  ;$Option1 = remotefile
					Return .GetSizeByName($Option1) <> -1
				Case 'CREATE'  ;$Option1 = remotedir
					If .CreateRemoteDir($Option1) = 0 Then Return SetError(9, _Ck_ErrNotify('Ck_FtpCommand', 'Create RemoteDir failed'), False)
					Return True
				Case 'DELETE', 'DEL', 'REMOVE'  ;$Option1 = remotefile  , $Option2 = filetype
					If StringRegExp($Option1, '\.\w+$') Or $Option2 <> 'd' Then
						If .DeleteRemoteFile($Option1) = 0 Then
							If .RemoveRemoteDir($Option1) = 0 Then Return SetError(10, _Ck_ErrNotify('Ck_FtpCommand', 'Delete RemoteFile failed #1'), False)
							Return True
						EndIf
					Else
						If .RemoveRemoteDir($Option1) = 0 Then
							If .DeleteRemoteFile($Option1) = 0 Then Return SetError(11, _Ck_ErrNotify('Ck_FtpCommand', 'Delete RemoteFile failed #2'), False)
							Return True
						EndIf
					EndIf
				Case 'DELETEM', 'DELM', 'REMOVEM' ;$Option1 = Pattern | Deletes all the files such as "*.txt"
					If .DeleteMatching($Option1) = 0 Then Return SetError(12, _Ck_ErrNotify('Ck_FtpCommand', 'Delete Mathcing RemoteFile failed'), False)
					Return True
				Case 'RENAME', 'MOVE' ;$Option2 = newRemoteFilePath | RENAME OR MOVE FILE/DIR To NEW PATH
					If .RenameRemoteFile($Option1, $Option2) = 0 Then Return SetError(13, _Ck_ErrNotify('Ck_FtpCommand', 'Rename/Move RemoteFile failed'), False)
					Return True
				Case 'LIST', 'LISTARR'
					If $Option2 = '' Then $Option2 = '*.*'
					Local $sList = .GetTextDirListing($Option2)
					If $Option2 = 'LIST' Then Return $sList
					Local $aList = StringRegExp($sList, '(?im)^([a-z\-])([a-z\-]+)------ \d+ (\w+ group)\h+(\d+) ((?:Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) \d{2} (?:\d{4}|\d{2}:\d{2})) (.+)$', 3)
					If @error Then Return SetError(13, _Ck_ErrNotify('Ck_FtpCommand', 'Cannot analyse Remote Tree List to array'), False)
					Local $aList2D[UBound($aList) / 6 + 1][6] = [['FileName', 'FileSize', 'FileType', 'Last Modified', 'Permissions', 'Owner/Group']], $iCounter = 1
					For $i = 0 To UBound($aList) - 1 Step 6
						$aList2D[$iCounter][0] = $aList[$i + 5]
						$aList2D[$iCounter][1] = Number($aList[$i + 3])
						$aList2D[$iCounter][2] = ($aList[$i + 0] = 'd' ? 'Folder' : 'File')
						$aList2D[$iCounter][3] = $aList[$i + 4]
						$aList2D[$iCounter][4] = $aList[$i + 1]
						$aList2D[$iCounter][5] = $aList[$i + 2]
						$iCounter += 1
					Next
					Return $aList2D
			EndSwitch
		EndWith
	EndFunc   ;==>Ck_FtpCommand
	#H2Obf_Ignore_End

	Func Ck_FtpSetProxy(ByRef $oCK_FTP, $ProxyString)     ;ex: http://1.1.1.1:8080 / https://1.1.1.1:1234 / socks4://1.1.1.1:4444 / socks5://1.1.1.1:5555
		$ProxyString = StringRegExp($ProxyString, '(?i)^(?|http(s?)|socks([45]))(?:://)?(?:([[:print:]]+):([[:print:]]+)@)?(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|localhost)?[: \t]?(\d+)?($)', 3)
		If @error Or UBound($ProxyString) <> 6 Then Return SetError(1, _Ck_ErrNotify('Ck_FtpSetProxy', '$ProxyString isn''t incorrect pattern'), 0)
		Switch $ProxyString[0]
			Case 's', ''
				$ProxyString = Ck_FtpThroughHttpProxy($oCK_FTP, $ProxyString[3], $ProxyString[4], $ProxyString[1], $ProxyString[2])
			Case '4', '5'
				$ProxyString = Ck_FtpThroughSocksProxy($oCK_FTP, $ProxyString[3], $ProxyString[4], $ProxyString[1], $ProxyString[2], $ProxyString[3] ? Int($ProxyString[0]) : 0)
		EndSwitch
		Return SetError(@error + 1, @extended, $ProxyString)
	EndFunc   ;==>Ck_FtpSetProxy

	Func Ck_FtpThroughSocksProxy(ByRef $oCK_FTP, $Hostname = '', $Port = '', $SocksUsername = '', $SocksPassword = '', $SocksVersion = 5)
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_FtpThroughSocksProxy', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
		If Not IsObj($oCK_FTP) Then Return SetError(1, _Ck_ErrNotify('Ck_FtpThroughSocksProxy', '$oCK_FTP isn''t the Chilkat Ftp Object'), '')
		;----------------------------------------------------------------------------------------------------------------------------------------------------------------------
		$g_CHILKAT__ShowNotify = 0
		Local $vRet = Ck_HttpThroughSocksProxy($oCK_FTP, $Hostname, $Port, $SocksUsername, $SocksPassword, $SocksVersion)
		$g_CHILKAT__ShowNotify = 1
		Return SetError(@error, @extended, $vRet)
	EndFunc   ;==>Ck_FtpThroughSocksProxy

	Func Ck_FtpThroughHttpProxy(ByRef $oCK_FTP, $Proxy = '', $Port = '', $ProxyUsername = '', $ProxyPassword = '', $ProxyAuthMethod = '')
		;https://www.chilkatsoft.com/refdoc/xChilkatHttpRef.html#prop84
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_FtpThroughHttpProxy', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
		If Not IsObj($oCK_FTP) Then Return SetError(1, _Ck_ErrNotify('Ck_FtpThroughHttpProxy', '$oCK_FTP isn''t the Chilkat Ftp Object'), '')
		If $Port = -1 Then Return ;bỏ qua set proxy mà không thông báo
		;---------------------------------------------------------------------
		If $ProxyUsername = Default Or Not $ProxyUsername Then $ProxyUsername = ''
		If $ProxyPassword = Default Or Not $ProxyPassword Then $ProxyPassword = ''
		If $ProxyAuthMethod = Default Or Not $ProxyAuthMethod Then $ProxyAuthMethod = ''
		;---------------------------------------------------------------------
		With $oCK_FTP
			.HttpProxyHostname = $Proxy
			.HttpProxyPort = $Port
			.HttpProxyUsername = $ProxyUsername
			.HttpProxyPassword = $ProxyPassword
			.HttpProxyAuthMethod = $ProxyAuthMethod   ;NTLM, Digest, or Basic
		EndWith
		Return 1
	EndFunc   ;==>Ck_FtpThroughHttpProxy

	Func Ck_FtpClose(ByRef $oCK_FTP)
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_FtpClose', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
		If Not IsObj($oCK_FTP) Then Return SetError(1, _Ck_ErrNotify('Ck_FtpClose', '$oCK_FTP isn''t the Chilkat Ftp Object'), '')
		;----------------------------------------------------------------------------------------------------------------------------------------------------------------------
		If $oCK_FTP.Disconnect = 0 Then Return SetError(2, _Ck_ErrNotify('Ck_FtpClose', 'Disconnect failed'), False)
		Return True
	EndFunc   ;==>Ck_FtpClose
#EndRegion


#Region CHILKAT SOCKET
	Func Ck_SocketCreate()
		If $g_CHILKAT__hDll = -1 Then
			Ck_StartUp(Default)
			If $g_CHILKAT__hDll = -1 Then Return SetError(1, 0, '')
		EndIf
		;-----------------------------------------------------------------------
		Local $oCK_Socket = ObjCreate('{C3FC6EA1-3982-45AA-8CB8-B3BFC9DFDDC7}', '{93FCA31B-08C3-4E72-836B-B31123F7C2CC}', $g_CHILKAT__hDll)
		If Not IsObj($oCK_Socket) Then Return SetError(1, _Ck_ErrNotify('Ck_SocketCreate', 'The Chilkat Socket Object creation failed'), '')
		Return $oCK_Socket
	EndFunc   ;==>Ck_SocketCreate
#EndRegion


#Region CHILKAT AUTH
	Func Ck_AuthGoogleCreate()
		If $g_CHILKAT__hDll = -1 Then
			Ck_StartUp(Default)
			If $g_CHILKAT__hDll = -1 Then Return SetError(1, 0, '')
		EndIf
		;-----------------------------------------------------------------------
		Local $oCK_AuthGoogle = ObjCreate('{6EBA710B-0C0F-4E86-859A-94829089E436}', '{30444DA6-9559-43D3-876F-E6C0FC709D18}', $g_CHILKAT__hDll)
		If Not IsObj($oCK_AuthGoogle) Then Return SetError(1, _Ck_ErrNotify('Ck_AuthGoogleCreate', 'The Chilkat Socket Object creation failed'), '')
		Return $oCK_AuthGoogle
	EndFunc   ;==>Ck_AuthGoogleCreate

	Func Ck_AuthGoogleGetAccessToken($jsonServiceAccountKey, $sScope, $AccessTokenExpirationTimeSeconds = Default, $iTimeOutMs = Default)
		;$sScope: A space-delimited list of the permissions that the application requests.
		Local $oCK_Socket = Ck_SocketCreate()
		If Not IsObj($oCK_Socket) Then Return SetError(1, _Ck_ErrNotify('Ck_AuthGoogleGetAccessToken', 'The Chilkat Socket Object creation failed'), '')
		Local $oCK_AuthGoogle = Ck_AuthGoogleCreate()
		If Not IsObj($oCK_AuthGoogle) Then Return SetError(2, _Ck_ErrNotify('Ck_AuthGoogleGetAccessToken', 'The Chilkat AuthGoogle Object creation failed'), '')
		;-------------------------------------------------------
		If $AccessTokenExpirationTimeSeconds = Default Then $AccessTokenExpirationTimeSeconds = 3600
		If $AccessTokenExpirationTimeSeconds > 3600 Then $AccessTokenExpirationTimeSeconds = 3600
		If $iTimeOutMs = Default Or Not $iTimeOutMs Or $iTimeOutMs < 0 Then $iTimeOutMs = 0
		If $iTimeOutMs > 4 And $iTimeOutMs < 61 Then $iTimeOutMs *= 1000
		;-------------------------------------------------------
		With $oCK_AuthGoogle
			.JsonKey = $jsonServiceAccountKey
			.Scope = $sScope
			.ExpireNumSeconds = $AccessTokenExpirationTimeSeconds
			If $oCK_Socket.Connect("www.googleapis.com", 443, 1, $iTimeOutMs) = 0 Then Return SetError(3, _Ck_ErrNotify('Ck_AuthGoogleGetAccessToken', 'Connect to googleapis failed'), '')
			If .ObtainAccessToken($oCK_Socket) = 0 Then Return SetError(4, _Ck_ErrNotify('Ck_AuthGoogleGetAccessToken', 'Cannot obtain AccessToken'), '')
			Return .AccessToken
		EndWith
	EndFunc   ;==>Ck_AuthGoogleGetAccessToken

	Func Ck_OAuth2Create()
		If $g_CHILKAT__hDll = -1 Then
			Ck_StartUp(Default)
			If $g_CHILKAT__hDll = -1 Then Return SetError(1, 0, '')
		EndIf
		;-----------------------------------------------------------------------
		Local $oCK_OAuth2 = ObjCreate('{CC3B92E4-C58C-40FE-A271-E407A7775848}', '{DD2EABF5-8988-4A8E-908C-AD7FFA38AE59}', $g_CHILKAT__hDll)
		If Not IsObj($oCK_OAuth2) Then Return SetError(1, _Ck_ErrNotify('Ck_AuthGoogleCreate', 'The Chilkat Socket Object creation failed'), '')
		Return $oCK_OAuth2
	EndFunc   ;==>Ck_OAuth2Create
#EndRegion


#Region CHILKAT WEBSOCKET
	Func Ck_WebSocketCreate($AutoPingPong = Default)
		If $g_CHILKAT__hDll = -1 Then
			Ck_StartUp(Default)
			If $g_CHILKAT__hDll = -1 Then Return SetError(1, 0, '')
		EndIf
		;-----------------------------------------------------------------------
		Local $oCk_WebSocket = ObjCreate('{5968F990-ECED-40C1-B461-C0C8540BF607}', '{01A80A1C-F3CB-4837-B577-2C67E275D441}', $g_CHILKAT__hDll)
		If Not IsObj($oCk_WebSocket) Then Return SetError(2, _Ck_ErrNotify('Ck_WebSocketCreate', 'The Chilkat Websocket Object creation failed'), '')
		;-----------------------------------------------------------------------
		Local $oCK_Socket = Ck_SocketCreate()
		If @error Then Return SetError(3, 0, '')
		$oCK_Socket.UncommonOptions = 'String'
		;-----------------------------------------------------------------------
		If $AutoPingPong = Default Or $AutoPingPong == '' Then $AutoPingPong = 1
		With $oCk_WebSocket
			.PingAutoRespond = $AutoPingPong
			.PongAutoConsume = $AutoPingPong
		EndWith
		;-----------------------------------------------------------------------
		Local $aRet = [$oCk_WebSocket, $oCK_Socket]
		Return $aRet
	EndFunc   ;==>Ck_WebSocketCreate

	Func Ck_WebSocketConnect(ByRef $oCk_WebSocket, $iURL, $sRequestHeaders = '', $iConnectTimeoutMs = Default, $autoReconnect = Default)
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_WebSocketConnect', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
		If Not IsArray($oCk_WebSocket) Or Not IsObj($oCk_WebSocket[0]) Or Not IsObj($oCk_WebSocket[1]) Then
			Return SetError(1, _Ck_ErrNotify('Ck_WebSocketConnect', '$oCk_WebSocket isn''t the Chilkat Websocket Object'), '')
		EndIf
		;-----------------------------------------------------------------------
		Local $oCK_Rest = Ck_RestCreate()
		If Not IsObj($oCK_Rest) Then Return SetError(2, _Ck_ErrNotify('Ck_WebSocketConnect', 'The Chilkat Rest Object creation failed'), '')
		;-----------------------------------------------------------------------
		Local $oURL = Ck_HttpCrackURL($iURL)
		If @error Or Not IsObj($oURL) Then Return SetError(3, _Ck_ErrNotify('Ck_WebSocketConnect', 'Cannot parse $iURL'), '')
		;-----------------------------------------------------------------------
		If $iConnectTimeoutMs = Default Or Not $iConnectTimeoutMs Then $iConnectTimeoutMs = 60000
		If $iConnectTimeoutMs > 4 And $iConnectTimeoutMs < 61 Then $iConnectTimeoutMs *= 1000
		If $autoReconnect = Default Or Not $autoReconnect Then $autoReconnect = 1
		$oCk_WebSocket[1].UncommonOptions = (StringInStr($sRequestHeaders, 'GpBinary', 0, 1) ? 'Binary' : 'String')
		$oCK_Rest.ConnectTimeoutMs = $iConnectTimeoutMs
		;-----------------------------------------------------------------------
		Local $iSsl = StringRegExp($iURL, '(?i)^wss|https:')
		With $oCk_WebSocket[1]
			If .UserData > 0 Then
				If .UserData = 1 Then
					$oCk_WebSocket[1] = .SshOpenChannel($oURL.Host, $oURL.Port, $iSsl, $iConnectTimeoutMs)
					If .LastMethodSuccess = 0 Then Return SetError(4, _Ck_ErrNotify('Ck_WebSocketConnect', 'Ssh port-forwarding channel to the Socket failed'), '')
				Else
					If .Connect($oURL.Host, $oURL.Port, $iSsl, $iConnectTimeoutMs) = 0 Then
						Return SetError(5, _Ck_ErrNotify('Ck_WebSocketConnect', 'Socket connection failed. Reason: ' & _Ck_ConnectFailReason($oCk_WebSocket[1])), '')
					EndIf
				EndIf
				If $oCK_Rest.UseConnection($oCk_WebSocket[1], $autoReconnect) = 0 Then
					Return SetError(6, _Ck_ErrNotify('Ck_WebSocketConnect', 'REST connection failed. Reason: ' & _Ck_ConnectFailReason($oCK_Rest)), '')
				EndIf
			Else
				If $oCK_Rest.Connect($oURL.Host, $oURL.Port, $iSsl, $autoReconnect) = 0 Then
					Return SetError(7, _Ck_ErrNotify('Ck_WebSocketConnect', 'REST connection failed. Reason: ' & _Ck_ConnectFailReason($oCK_Rest)), '')
				EndIf
			EndIf
		EndWith
		;-----------------------------------------------------------------------
		With $oCk_WebSocket[0]
			If .UseConnection($oCK_Rest) = 0 Then Return SetError(8, _Ck_ErrNotify('Ck_WebSocketConnect', 'Initializes the connection for a WebSocket session unsuccessfully'), '')
			.AddClientHeaders()
		EndWith
		;-----------------------------------------------------------------------
		With $oCK_Rest
			If $sRequestHeaders Then
				Local $aRequestHeaders = StringRegExp($sRequestHeaders, '(?s)([\w\-]+)\h*:\h*(.*?)(?:\||[\r\n]+|$)', 3)
				If @error Then Return SetError(9, _Ck_ErrNotify('Ck_HttpRequest', '$aRequestHeaders is incorrect format'), '')
				For $i = 0 To UBound($aRequestHeaders) - 1 Step 2
					.AddHeader($aRequestHeaders[$i], $aRequestHeaders[$i + 1])
				Next
			EndIf
			;----------------------------------
			.FullRequestNoBody('GET', $oURL.PathWithQueryParams)
			If $g_CHILKAT__DebugRequestHeaders Then
				ConsoleWrite('+> Websocket Request Headers Generate: ' & $iURL & @CRLF & .LastRequestStartLine & @CRLF & .LastRequestHeader & @CRLF & @CRLF)
			EndIf
			If .LastMethodSuccess = 0 Then Return SetError(10, _Ck_ErrNotify('Ck_WebSocketConnect', 'REST cannot access to URL Path'), '')
			If .ResponseStatusCode <> 101 Then Return SetError(11, _Ck_ErrNotify('Ck_WebSocketConnect', 'REST cannot upgrade to websocket'), '')
		EndWith
		;-----------------------------------------------------------------------
		With $oCk_WebSocket[0]
			If .ValidateServerHandshake() = 0 Then Return SetError(12, _Ck_ErrNotify('Ck_WebSocketConnect', 'Server handshakes unsuccessfully'), '')
			If .IsConnected = 0 Then Return SetError(13, _Ck_ErrNotify('Ck_WebSocketConnect', 'Websocket connection failed'), '')
		EndWith
		Return 'HTTP/1.1 101 Web Socket Protocol Handshake' & @CRLF & $oCK_Rest.ResponseHeader
	EndFunc   ;==>Ck_WebSocketConnect

	Func Ck_WebSocketSetBinaryMessagesMode(ByRef $oCk_WebSocket, $BinaryMode = False)
		$oCk_WebSocket[1].UncommonOptions = ($BinaryMode ? 'Binary' : 'String')
	EndFunc   ;==>Ck_WebSocketSetBinaryMessagesMode

	Func Ck_WebSocketReceiveFrame(ByRef $oCk_WebSocket, $BinaryMode = Default)
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_WebSocketReceiveFrame', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
		If Not IsArray($oCk_WebSocket) Or Not IsObj($oCk_WebSocket[0]) Or Not IsObj($oCk_WebSocket[1]) Then
			Return SetError(1, _Ck_ErrNotify('Ck_WebSocketReceiveFrame', '$oCk_WebSocket isn''t the Chilkat Websocket Object'), Null)
		EndIf
		If ($BinaryMode = Default Or $BinaryMode = -1) And $oCk_WebSocket[1].UncommonOptions = 'Binary' Then $BinaryMode = True
		;--------------------------------------------------------------------------------------------------------------------------------------------------
		With $oCk_WebSocket[0]
			If .ReadFrame() = 0 Then Return SetError(2, _Ck_ErrNotify('Ck_WebSocketReceiveFrame', _Ck_WebSocketFailReason(.ReadFrameFailReason)), Null)
			;----------------------------------------------
			If $BinaryMode = True Then
				Local Static $oCK_BinData = Ck_BinDataCreate()
				If Not IsObj($oCK_BinData) Then Return SetError(3, _Ck_ErrNotify('Ck_WebSocketReceiveFrame', 'The Chilkat BinData Object creation failed'), Null)
				$oCK_BinData.Clear()
				If .GetFrameDataBd($oCK_BinData) = 0 Then Return SetError(4, _Ck_ErrNotify('Ck_WebSocketReceiveFrame', 'Get frame data failed'), '')
				Return SetExtended(.FrameOpcodeInt, $oCK_BinData.GetBinary())
			Else
				Return SetExtended(.FrameOpcodeInt, .GetFrameData())     ;.FrameOpcode: "Continuation", "Text", "Binary", "Close", "Ping", or "Pong"
			EndIf
		EndWith
	EndFunc   ;==>Ck_WebSocketReceiveFrame

	Func Ck_WebSocketSendFrame(ByRef $oCk_WebSocket, $BodyData_or_FilePath, $isFinalFrame = Default, $BinaryMode = Default)
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_WebSocketSendFrame', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
		If Not IsArray($oCk_WebSocket) Or Not IsObj($oCk_WebSocket[0]) Or Not IsObj($oCk_WebSocket[1]) Then
			Return SetError(1, _Ck_ErrNotify('Ck_WebSocketSendFrame', '$oCk_WebSocket isn''t the Chilkat Websocket Object'), '')
		EndIf
		If ($BinaryMode = Default Or $BinaryMode = -1) And $oCk_WebSocket[1].UncommonOptions = 'Binary' Then $BinaryMode = True
		;--------------------------------------------------------------------------------------------------------------------------------------------------
		If Not (IsString($BodyData_or_FilePath) Or IsBinary($BodyData_or_FilePath) Or IsArray($BodyData_or_FilePath)) Then
			Return SetError(2, _Ck_ErrNotify('Ck_WebSocketSendFrame', '$BodyData_or_FilePath should be a (Binary) String Or a 1D-Array'), '')
		ElseIf IsString($BodyData_or_FilePath) And $BodyData_or_FilePath == '' Then
			Return SetError(3, _Ck_ErrNotify('Ck_WebSocketSendFrame', '$BodyData_or_FilePath is empty'), '')
		ElseIf IsArray($BodyData_or_FilePath) And UBound($BodyData_or_FilePath, 2) <> 0 Then
			Return SetError(4, _Ck_ErrNotify('Ck_WebSocketSendFrame', '$BodyData_or_FilePath should be a 1D-Array'), '')
		ElseIf Not IsArray($BodyData_or_FilePath) Then
			Local $arrTemp[1] = [$BodyData_or_FilePath]
			$BodyData_or_FilePath = $arrTemp
			$arrTemp = Null
		EndIf
		;--------------------------------------------------------------------------------------------------------------------------------------------------
		Local Static $oCK_BinData = Ck_BinDataCreate()
		If Not IsObj($oCK_BinData) Then Return SetError(5, _Ck_ErrNotify('Ck_WebSocketSendFrame', 'The Chilkat BinData Object creation failed'), '')
		;--------------------------------------------------------------------------------------------------------------------------------------------------
		With $oCk_WebSocket[0]
			Local $uData = UBound($BodyData_or_FilePath) - 1
			For $i = 0 To $uData
				If $isFinalFrame = Default Or $isFinalFrame < 0 Or Not IsNumber($isFinalFrame) Then $isFinalFrame = Int($i = $uData)
				;-------------------------------------
				If $BinaryMode = True And IsString($BodyData_or_FilePath[$i]) Then
					If StringLeft($BodyData_or_FilePath[$i], 2) = '0x' Then
						$BodyData_or_FilePath[$i] = Binary($BodyData_or_FilePath[$i])
					ElseIf StringRegExp($BodyData_or_FilePath[$i], '^[[:xdigit:]]+$') Then
						$BodyData_or_FilePath[$i] = Binary('0x' & $BodyData_or_FilePath[$i])
					EndIf
				EndIf
				;-------------------------------------
				If IsBinary($BodyData_or_FilePath[$i]) Then
					$oCK_BinData.Clear()
					If $oCK_BinData.LoadBinary($BodyData_or_FilePath[$i]) = 0 Then Return SetError(6, _Ck_ErrNotify('Ck_WebSocketSendFrame', 'The BinData Object loaded binarydata failed', $i), '')
					If .SendFrameBd($oCK_BinData, $isFinalFrame) = 0 Then Return SetError(7, _Ck_ErrNotify('Ck_WebSocketSendFrame', 'The frame {' & $i & '} was send unsuccessfully', $i), '')
					;----------------------------------------
				ElseIf StringRegExp($BodyData_or_FilePath[$i], '^\w+:\\') Then
					$oCK_BinData.Clear()
					If $oCK_BinData.LoadFile($BodyData_or_FilePath[$i]) = 0 Then Return SetError(8, _Ck_ErrNotify('Ck_WebSocketSendFrame', 'The BinData Object loaded file failed', $i), '')
					If .SendFrameBd($oCK_BinData, $isFinalFrame) = 0 Then Return SetError(9, _Ck_ErrNotify('Ck_WebSocketSendFrame', 'The frame {' & $i & '} was send unsuccessfully', $i), '')
				Else
					;----------------------------------------
					If .SendFrame($BodyData_or_FilePath[$i], $isFinalFrame) = 0 Then Return SetError(10, _Ck_ErrNotify('Ck_WebSocketSendFrame', 'The frame {' & $i & '} was send unsuccessfully', $i), '')
				EndIf
			Next
		EndWith
	EndFunc   ;==>Ck_WebSocketSendFrame

	Func Ck_WebSocketPingPong(ByRef $oCk_WebSocket, $PingData = '')
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_WebSocketPingPong', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
		If Not IsArray($oCk_WebSocket) Or Not IsObj($oCk_WebSocket[0]) Or Not IsObj($oCk_WebSocket[1]) Then
			Return SetError(1, _Ck_ErrNotify('Ck_WebSocketPingPong', '$oCk_WebSocket isn''t the Chilkat Websocket Object'), '')
		EndIf
		;-----------------------------------------------------------------------
		If @NumParams = 1 Then
			If $oCk_WebSocket[0].SendPing($PingData) = 0 Then Return SetError(2, _Ck_ErrNotify('Ck_WebSocketPingPong', 'Send ping unsuccessfully'), '')
		Else
			If $oCk_WebSocket[0].SendPong() = 0 Then Return SetError(3, _Ck_ErrNotify('Ck_WebSocketPingPong', 'Send pong unsuccessfully'), '')
		EndIf
	EndFunc   ;==>Ck_WebSocketPingPong

	Func Ck_WebSocketClose(ByRef $oCk_WebSocket, $iStatus = 1000, $sMessage = 'Closing this websocket')
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_WebSocketClose', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
		If Not IsArray($oCk_WebSocket) Or Not IsObj($oCk_WebSocket[0]) Or Not IsObj($oCk_WebSocket[1]) Then
			Return SetError(1, _Ck_ErrNotify('Ck_WebSocketClose', '$oCk_WebSocket isn''t the Chilkat Websocket Object'), '')
		EndIf
		;-----------------------------------------------------------------------
		With $oCk_WebSocket[0]
			If .SendClose(1, $iStatus, $sMessage) = 0 Then Return SetError(2)
			If .ReadFrame() = 0 Then Return SetError(3, _Ck_WebSocketFailReason(.ReadFrameFailReason), 0)
			If .FrameOpcode = 'Close' And .CloseStatusCode = $iStatus And .CloseReason = $sMessage Then
				Return True
			Else
				Return SetError(4)
			EndIf
		EndWith
		;-----------------------------------------------------------------------
		$oCk_WebSocket[1].Close(10000)
		;-----------------------------------------------------------------------
		$oCk_WebSocket[0] = Null
		$oCk_WebSocket[1] = Null
		$oCk_WebSocket = Null
	EndFunc   ;==>Ck_WebSocketClose

	Func Ck_WebSocketSetProxy(ByRef $oCk_WebSocket, $ProxyString)     ;ex: ssh://admin:admin@1.1.1.1:22 / http://1.1.1.1:8080 / https://1.1.1.1:1234 / socks4://1.1.1.1:4444 / socks5://1.1.1.1:5555
		$ProxyString = StringRegExp($ProxyString, '(?i)^(?|http(s?)|socks([45])|ss(h))(?:://)?(?:([[:print:]]+):([[:print:]]+)@)?(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|localhost)?[: \t]?(\d+)?($)', 3)
		If @error Or UBound($ProxyString) <> 6 Then Return SetError(1, _Ck_ErrNotify('Ck_WebSocketSetProxy', '$ProxyString isn''t incorrect pattern'), 0)
		Switch $ProxyString[0]
			Case 's', ''
				$ProxyString = Ck_WebSocketThroughHttpProxy($oCk_WebSocket, $ProxyString[3], $ProxyString[4], $ProxyString[1], $ProxyString[2])
			Case '4', '5'
				$ProxyString = Ck_WebSocketThroughSocksProxy($oCk_WebSocket, $ProxyString[3], $ProxyString[4], $ProxyString[1], $ProxyString[2], $ProxyString[3] ? Int($ProxyString[0]) : 0)
			Case 'h'
				$ProxyString = Ck_WebSocketThroughSshTunnel($oCk_WebSocket, $ProxyString[3], $ProxyString[4], $ProxyString[1] ? $ProxyString[1] : 'admin', $ProxyString[2] ? $ProxyString[2] : 'admin')
		EndSwitch
		Return SetError(@error + 1, @extended, $ProxyString)
	EndFunc   ;==>Ck_WebSocketSetProxy

	Func Ck_WebSocketThroughSshTunnel(ByRef $oCk_WebSocket, $Hostname = '', $Port = 22, $User = 'admin', $Pass = 'admin')
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_WebSocketThroughSshTunnel', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
		If Not IsArray($oCk_WebSocket) Or Not IsObj($oCk_WebSocket[0]) Or Not IsObj($oCk_WebSocket[1]) Then
			Return SetError(1, _Ck_ErrNotify('Ck_WebSocketThroughSshTunnel', '$oCk_WebSocket isn''t the Chilkat Websocket Object'), 0)
		EndIf
		;------------------------------------------------------------
		If $User = Default Then $User = 'admin'
		If $Pass = Default Then $Pass = 'admin'
		;------------------------------------------------------------
		With $oCk_WebSocket[1]
			If @NumParams > 1 Then     ;set ssh
				If .SshOpenTunnel($Hostname, $Port) = 0 Then Return SetError(2, _Ck_ErrNotify('Ck_WebSocketThroughSshTunnel', 'The Chilkat Sock cannot connect to SshTunnel'), 0)
				If .SshAuthenticatePw($User, $Pass) = 0 Then Return SetError(3, _Ck_ErrNotify('Ck_WebSocketThroughSshTunnel', 'SSH server cannot verify username/password Authentication'), 0)
				.UserData = 1
			Else     ;close ssh
				If .SshCloseTunnel() = 0 Then Return SetError(4, _Ck_ErrNotify('Ck_WebSocketCloseSshTunnel', 'Close SshTunnel failed'), '')
				.UserData = 0
			EndIf
		EndWith
		Return 1
	EndFunc   ;==>Ck_WebSocketThroughSshTunnel

	Func Ck_WebSocketThroughSocksProxy(ByRef $oCk_WebSocket, $Hostname = '', $Port = '', $SocksUsername = '', $SocksPassword = '', $SocksVersion = 5)
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_WebSocketThroughSocksProxy', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
		If Not IsArray($oCk_WebSocket) Or Not IsObj($oCk_WebSocket[0]) Or Not IsObj($oCk_WebSocket[1]) Then
			Return SetError(1, _Ck_ErrNotify('Ck_WebSocketThroughSocksProxy', '$oCk_WebSocket isn''t the Chilkat Websocket Object'), 0)
		EndIf
		;------------------------------------------------------------
		If $SocksUsername = Default Or Not $SocksUsername Then $SocksUsername = ''
		If $SocksPassword = Default Or Not $SocksPassword Then $SocksPassword = ''
		If $SocksVersion = Default Or Not $SocksVersion Then $SocksVersion = 5
		;---------------------------------------------------------------------
		With $oCk_WebSocket[1]
			.SocksHostname = $Hostname
			.SocksPort = $Port
			.SocksUsername = $SocksUsername
			.SocksPassword = $SocksPassword
			If @NumParams > 1 Then                 ;set socks
				.SocksVersion = $SocksVersion
				.UserData = 2
			Else
				.SocksVersion = 0
				.UserData = 0
			EndIf
		EndWith
		Return 1
	EndFunc   ;==>Ck_WebSocketThroughSocksProxy

	Func Ck_WebSocketThroughHttpProxy(ByRef $oCk_WebSocket, $Hostname = '', $Port = '', $User = '', $Pass = '', $ProxyAuthMethod = '')
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_WebSocketThroughHttpProxy', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
		If Not IsArray($oCk_WebSocket) Or Not IsObj($oCk_WebSocket[0]) Or Not IsObj($oCk_WebSocket[1]) Then
			Return SetError(1, _Ck_ErrNotify('Ck_WebSocketThroughSshTunnel', '$oCk_WebSocket isn''t the Chilkat Websocket Object'), 0)
		EndIf
		;------------------------------------------------------------
		If $User = Default Then $User = ''
		If $Pass = Default Then $Pass = ''
		If $ProxyAuthMethod = Default Then $ProxyAuthMethod = ''
		;------------------------------------------------------------
		With $oCk_WebSocket[1]
			.HttpProxyHostname = $Hostname
			.HttpProxyPort = $Port
			.HttpProxyUsername = $User
			.HttpProxyPassword = $Pass
			.HttpProxyAuthMethod = $ProxyAuthMethod
			If @NumParams > 1 Then     ;set proxy
				.HttpProxyForHttp = 1
				.UserData = 2
			Else     ;close proxy
				.HttpProxyForHttp = 0
				.UserData = 0
			EndIf
		EndWith
		Return 1
	EndFunc   ;==>Ck_WebSocketThroughHttpProxy

	Func _Ck_WebSocketFailReason($intReason)
		Local Static $aReason = [ _
				'No failure', _
				'Read Timeout', _
				'Aborted by Application Callback', _
				'Fatal Socket Error (Lost Connection)', _
				'Received invalid WebSocket frame bytes']
		Return (($intReason < 0 Or $intReason > 4) ? 'A catch-all for any unknown failure (Should not ever occur. If it does, please contact Chilkat.)' : $aReason[$intReason])
	EndFunc   ;==>_Ck_WebSocketFailReason
#EndRegion


#Region CHILKAT BinData
	;$EncodingType = base64/base64_mime/modbase64/base64url/base32/base58/ascii85/hex/uu/qp(quoted-printable)/url(urlencode)/Q(MIME Q-Encoding)/B(MIME B-Encoding)/url_oauth/url_rfc1738/url_rfc2396/url_rfc3986/fingerprint/json(escaping and unescaping JSON strings)

	Func Ck_BinDataCreate()
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_BinDataCreate', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
		Local $oCK_BinData = ObjCreate('{FF6CA005-E9AA-418C-9555-3842B8BD54BB}', '{DDD8463D-2F40-43F8-8C05-F9090816D65D}', $g_CHILKAT__hDll)
		If Not IsObj($oCK_BinData) Then Return SetError(1, _Ck_ErrNotify('Ck_BinDataCreate', 'The Chilkat BinData Object creation failed'), '')
		Return $oCK_BinData
	EndFunc   ;==>Ck_BinDataCreate

	Func Ck_BinDataDecodeFromEncodedString($EncodedString, $EncodingType)
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_BinDataDecodeFromEncodedString', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
		Local $oCK_BinData = Ck_BinDataCreate()
		If @error Then Return SetError(1, 0, '')
		If $oCK_BinData.LoadEncoded($EncodedString, $EncodingType) = 0 Then Return SetError(2, _Ck_ErrNotify('Ck_BinDataDecodeFromEncodedString', 'Load content failed'), '')
		Return $oCK_BinData.GetBinary()
	EndFunc   ;==>Ck_BinDataDecodeFromEncodedString

	Func Ck_BinDataEncodeFromRawString($RawString, $EncodingType)
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_BinDataEncodeFromRawString', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
		Local $oCK_BinData = Ck_BinDataCreate()
		If @error Then Return SetError(1, 0, '')
		If $oCK_BinData.LoadBinary(StringToBinary($RawString, 4)) = 0 Then Return SetError(2, _Ck_ErrNotify('Ck_BinDataEncodeFromRawString', 'Load content failed'), '')
		Return $oCK_BinData.GetEncoded($EncodingType)
	EndFunc   ;==>Ck_BinDataEncodeFromRawString
#EndRegion


#Region CHILKAT SUPPORT FUNCS
	Func Ck_DateTimeConvert($InputDateOrUnixTime = Default, $OutputFormat = 'Unix', $bLocal = False)
		;$InputDateOrUnixTime: 15083254876 hoặc Fri, 24 Jan 2020 03:08:34 +0700 hoặc Fri, 24 Jan 2020 03:08:34 GMT hoặc Fri, 24 Jan 2020 03:08:34 hoặc YYYY-MM-DD hoặc YYYY-MM-DDThh:mmTZD hoặc YYYY-MM-DDThh:mm:ssTZD trong đó TDZ có dạng như +0700|GMT..,
		;$OutputFormat:  rfc822 hoặc email hoặc Unix hoặc U hoặc Unix10 hoặc U10 hoặc Unix13 hoặc U13 hoặc YYYY-MM-DD hoặc YYYY-MM-DDThh:mm:ssZ hoặc YYYY-MM-DDThh:mmTZD hoặc YYYY-MM-DDThh:mm:ssTZD ...
		If $g_CHILKAT__hDll = -1 Then
			Ck_StartUp(Default)
			If $g_CHILKAT__hDll = -1 Then Return SetError(1, 0, '')
		EndIf
		;------------------------------------------------------------------------
		Local Static $oCK_DateTime = ObjCreate('{0B30402C-CDB2-45D2-B7BC-7C1F78C72C1C}', '{F063D06F-1395-4CB0-AB8A-3C86C80F077E}', $g_CHILKAT__hDll)
		If Not IsObj($oCK_DateTime) Then Return SetError(1, _Ck_ErrNotify('Ck_DateTimeConvert', 'The Chilkat DateTime Object creation failed'), '')
		;-------------------------------------------------------------------------------------------------------------------
		With $oCK_DateTime
			If Not $InputDateOrUnixTime Or $InputDateOrUnixTime = Default Then
				.SetFromCurrentSystemTime()
			ElseIf StringRegExp($InputDateOrUnixTime, '^(\d{10}|\d{13})$') Then
				If StringLen($InputDateOrUnixTime) = 13 Then $InputDateOrUnixTime = StringTrimRight($InputDateOrUnixTime, 3)
				.SetFromUnixTime($bLocal, $InputDateOrUnixTime)
			ElseIf StringRegExp($InputDateOrUnixTime, '(?i)^[a-z]{2,5}, \d{1,2}[\.\/\- ][a-z]{2,5}[\.\/\- ]\d{2,4} \d{1,2}:\d{1,2}:\d{1,2}( (GMT|\+\d+))?$') Then
				.SetFromRfc822($InputDateOrUnixTime)
			ElseIf StringRegExp($InputDateOrUnixTime, '(?i)^\d{2,4}[\.\/\- ]\d{1,2}[\.\/\- ]\d{1,2}(T\d{1,2}[: ]\d{1,2}[: ]?\d{0,2}\s?(Z|\+\d+))?$') Then
				.SetFromTimestamp($InputDateOrUnixTime)
			Else
				Return SetError(2, _Ck_ErrNotify('Ck_DateTimeConvert', '$InputDateOrUnixTime is incorect format'), '')
			EndIf
			;--------------------------------------------------------
			If $OutputFormat = Default Or Not $OutputFormat Then $OutputFormat = 'Unix'
			If StringRegExp($OutputFormat, '(?i)U(nix)?(10|13)?') Then
				Return (.GetAsUnixTime($bLocal) & (StringRight($OutputFormat, 2) = 13 ? @MSEC : ''))
			ElseIf $OutputFormat = 'Rfc822' Or $OutputFormat = 'email' Then
				Return .GetAsRfc822($bLocal)
			ElseIf $OutputFormat = 'Obj' Or $OutputFormat = 'Object' Then
				Return .GetDtObj()     ;→ $dt.Year, $dt.Month, $dt.Day, $dt.Hour, $dt.Minute, $dt.Second
			Else
				Return .GetAsIso8601($OutputFormat, $bLocal)
			EndIf
		EndWith
	EndFunc   ;==>Ck_DateTimeConvert

	;$iLocalPort = -1 Or < 0 → get array list port , $iLocalPort = Default or = '' → create random port có thể sử dụng
	Func Ck_CheckPortInUse($iLocalPort = '', $UseCmdMode = True)
		Select
			Case $UseCmdMode = True
				Local $iPidCmd = Run('netstat -ano', '', @SW_HIDE, 8)
				Local $sNetStat = ''
				Do
					$sNetStat &= StdoutRead($iPidCmd)
				Until @error
				If StringIsSpace($sNetStat) Then ContinueCase
				Local $aPortInUse = StringRegExp($sNetStat, '(?im)^\h*?(?:TCP|UDP)\h+[\d\.]+:(\d+)\h+', 3)
				If @error Then ContinueCase
				Switch $iLocalPort
					Case -1
						Return $aPortInUse
					Case '', Default, False
						Local $StartPort = 1080
						Local $sPortInUse = '|' & _ArrayToString($aPortInUse) & '|'
						While StringInStr($sPortInUse, '|' & $StartPort & '|', 1, 1)
							$StartPort += 1
						WEnd
						Return $StartPort
					Case Else
						For $sPortInUse In $aPortInUse
							If $iLocalPort = $sPortInUse Then Return True
						Next
						Return False
				EndSwitch

			Case Else
				Local Static $oLocalPort = ObjCreate('{EE09B103-97E0-11CF-978F-00A02463E06F}')
				Local $vSuccess = 0
				$oLocalPort.RemoveAll()
				Local $aUDPTable = _Ck_GetUdpTable(True)
				If Not @error Then
					$vSuccess += 1
					For $LocalPort In $aUDPTable
						$oLocalPort($LocalPort) = 1
					Next
				EndIf
				Local $aTCPTable = _Ck_GetTcpTable(True)
				If Not @error Then
					$vSuccess += 1
					For $LocalPort In $aTCPTable
						$oLocalPort($LocalPort) = 1
					Next
				EndIf
				If $vSuccess = 0 Then Return SetError(1)
				Switch $iLocalPort
					Case -1
						Return $oLocalPort.Keys
					Case '', Default, False
						Local $StartPort = 1080
						While $oLocalPort.Exists($StartPort)
							$StartPort += 1
						WEnd
						Return $StartPort
					Case Else
						Return ($oLocalPort.Exists($iLocalPort) = 1)
				EndSwitch
		EndSelect
	EndFunc   ;==>Ck_CheckPortInUse
#EndRegion


#Region CHILKAT INTERNAL FUNCS
	Func Ck_RestCreate()
		If $g_CHILKAT__hDll = -1 Then Exit MsgBox(4096 + 16, 'Ck_RestCreate', 'The Chilkat.dll has not been initialized. Please call Ck_StartUp first.')
		Local $oCK_Rest = ObjCreate('{5BE34693-974D-41B8-931C-73506CDEE2BE}', '{D985C806-44A2-4BBD-9FC4-EDD1CD82F03E}', $g_CHILKAT__hDll)
		If Not IsObj($oCK_Rest) Then Return SetError(2, _Ck_ErrNotify('Ck_RestCreate', 'The Chilkat Rest Object creation failed'), '')
		Return $oCK_Rest
	EndFunc   ;==>Ck_RestCreate

	Func _Ck_ErrNotify($sFuncname, $sErrContent, $ReturnValue = 0)
		Local Static $sErrContent_Old = ''
		If Not $g_CHILKAT__ShowNotify Or @Compiled Then Return
		If $sErrContent_Old <> $sErrContent Then
			ConsoleWrite('!> ' & $sFuncname & ' : ' & $sErrContent & @CRLF)
			$sErrContent_Old = $sErrContent
		EndIf
		Return $ReturnValue
	EndFunc   ;==>_Ck_ErrNotify

	Func _Ck_PathToFullPath($sRelativePath, $sBasePath = @WorkingDir)
		If Not $sRelativePath Or $sRelativePath = "." Then Return $sBasePath
		Local $sFullPath = StringReplace($sRelativePath, "/", "\")     ; Holds the full path (later, minus the root)
		Local Const $sFullPathConst = $sFullPath     ; Holds a constant version of the full path.
		Local $sPath     ; Holds the root drive/server
		Local $bRootOnly = StringLeft($sFullPath, 1) = "\" And StringMid($sFullPath, 2, 1) <> "\"
		If $sBasePath = Default Then $sBasePath = @WorkingDir
		For $i = 1 To 2
			$sPath = StringLeft($sFullPath, 2)
			If $sPath = "\\" Then
				$sFullPath = StringTrimLeft($sFullPath, 2)
				Local $nServerLen = StringInStr($sFullPath, "\") - 1
				$sPath = "\\" & StringLeft($sFullPath, $nServerLen)
				$sFullPath = StringTrimLeft($sFullPath, $nServerLen)
				ExitLoop
			ElseIf StringRight($sPath, 1) = ":" Then
				$sFullPath = StringTrimLeft($sFullPath, 2)
				ExitLoop
			Else
				$sFullPath = $sBasePath & "\" & $sFullPath
			EndIf
		Next
		If StringLeft($sFullPath, 1) <> "\" Then
			If StringLeft($sFullPathConst, 2) = StringLeft($sBasePath, 2) Then
				$sFullPath = $sBasePath & "\" & $sFullPath
			Else
				$sFullPath = "\" & $sFullPath
			EndIf
		EndIf
		Local $aTemp = StringSplit($sFullPath, "\")
		Local $aPathParts[$aTemp[0]], $j = 0
		For $i = 2 To $aTemp[0]
			If $aTemp[$i] = ".." Then
				If $j Then $j -= 1
			ElseIf Not ($aTemp[$i] = "" And $i <> $aTemp[0]) And $aTemp[$i] <> "." Then
				$aPathParts[$j] = $aTemp[$i]
				$j += 1
			EndIf
		Next
		$sFullPath = $sPath
		If Not $bRootOnly Then
			For $i = 0 To $j - 1
				$sFullPath &= "\" & $aPathParts[$i]
			Next
		Else
			$sFullPath &= $sFullPathConst
			If StringInStr($sFullPath, "..") Then $sFullPath = _Ck_PathToFullPath($sFullPath)
		EndIf
		Do
			$sFullPath = StringReplace($sFullPath, ".\", "\")
		Until @extended = 0
		Return $sFullPath
	EndFunc   ;==>_Ck_PathToFullPath

	Func _Ck_RegisterServer($sDll)
		Local $fInit, $fError
		Local $aCall = DllCall("ole32.dll", "long", "OleInitialize", "ptr", 0)
		If Not @error Then $fInit = $aCall[0] <> 1
		$aCall = DllCall($sDll, "long", "DllRegisterServer")
		If @error Then $fError = True
		If $fInit Then DllCall("ole32.dll", "none", "OleUninitialize")
		If $fError Then Return SetError(2, 0, False)
		Return SetError($aCall[0] <> 0, $aCall[0], $aCall[0] = 0)
	EndFunc   ;==>_Ck_RegisterServer

	Func _Ck_UnRegisterServer($sDll)
		Local $fInit, $fError
		Local $aCall = DllCall("ole32.dll", "long", "OleInitialize", "ptr", 0)
		If Not @error Then $fInit = $aCall[0] <> 1
		$aCall = DllCall($sDll, "long", "DllUnregisterServer")
		If @error Then $fError = True
		If $fInit Then DllCall("ole32.dll", "none", "OleUninitialize")
		If $fError Then Return SetError(2, 0, False)
		Return SetError($aCall[0] <> 0, $aCall[0], $aCall[0] = 0)
	EndFunc   ;==>_Ck_UnRegisterServer

	Func _Ck_GetUdpTable($OnlyReturnLocalPort = False)     ;modified from _CV_GetTcpTable (Trancexx)
		Local $aCall = DllCall('iphlpapi.dll', "dword", "GetUdpTable", "ptr*", 0, "dword*", 0, "int", 1)
		If @error Then Return SetError(1, 0, 0)
		If $aCall[0] <> 122 Then Return SetError(2, 0, 0)     ; ERROR_INSUFFICIENT_BUFFER
		Local $iSize = $aCall[2]
		Local $tByteStructure = DllStructCreate("byte[" & $iSize & "]")
		$aCall = DllCall('iphlpapi.dll', "dword", "GetUdpTable", "ptr", DllStructGetPtr($tByteStructure), "dword*", $iSize, "int", 1)
		If @error Or $aCall[0] Then Return SetError(3, 0, 0)
		Local $tMIB_UDPTABLE_DWORDS = DllStructCreate("dword[" & Ceiling($iSize / 4) & "]", DllStructGetPtr($tByteStructure))
		Local $iUDPentries = DllStructGetData($tMIB_UDPTABLE_DWORDS, 1, 1)     ; number of entries
		Local $iOffset, $iIP
		If $OnlyReturnLocalPort Then
			Local $aUDPTable[$iUDPentries]
			For $i = 0 To $iUDPentries - 1
				$iOffset = $i * 2 + 1     ; going thru array of dwords
				$aUDPTable[$i] = Dec(Hex(BinaryMid(DllStructGetData($tMIB_UDPTABLE_DWORDS, 1, $iOffset + 2), 1, 2)))
			Next
		Else
			Local $aUDPTable[$iUDPentries + 1][2] = [["Local IP                  ", "Local Port"]]
			For $i = 1 To $iUDPentries
				$iOffset = ($i - 1) * 2 + 1     ; going thru array of dwords
				$iIP = DllStructGetData($tMIB_UDPTABLE_DWORDS, 1, $iOffset + 1)
				If $iIP = 16777343 Then
					$aUDPTable[$i][0] = "localhost (127.0.0.1)"
				ElseIf $iIP = 0 Then
					$aUDPTable[$i][0] = "Any local address"
				Else
					$aUDPTable[$i][0] = BitOR(BinaryMid($iIP, 1, 1), 0) & "." & BitOR(BinaryMid($iIP, 2, 1), 0) & "." & BitOR(BinaryMid($iIP, 3, 1), 0) & "." & BitOR(BinaryMid($iIP, 4, 1), 0)
				EndIf
				$aUDPTable[$i][1] = Dec(Hex(BinaryMid(DllStructGetData($tMIB_UDPTABLE_DWORDS, 1, $iOffset + 2), 1, 2)))
			Next
		EndIf
		Return $aUDPTable
	EndFunc   ;==>_Ck_GetUdpTable

	Func _Ck_GetTcpTable($OnlyReturnLocalPort = False)     ;modified from _CV_GetTcpTable (Trancexx)
		Local $aCall = DllCall('iphlpapi.dll', "dword", "GetTcpTable", "ptr*", 0, "dword*", 0, "int", 1)
		If @error Then Return SetError(1, 0, 0)
		If $aCall[0] <> 122 Then Return SetError(2, 0, 0)     ; ERROR_INSUFFICIENT_BUFFER
		Local $iSize = $aCall[2]
		Local $tByteStructure = DllStructCreate("byte[" & $iSize & "]")
		$aCall = DllCall('iphlpapi.dll', "dword", "GetTcpTable", "ptr", DllStructGetPtr($tByteStructure), "dword*", $iSize, "int", 1)
		If @error Or $aCall[0] Then Return SetError(3, 0, 0)
		Local $tMIB_TCPTABLE_DWORDS = DllStructCreate("dword[" & Ceiling($iSize / 4) & "]", DllStructGetPtr($tByteStructure))
		Local $iTCPentries = DllStructGetData($tMIB_TCPTABLE_DWORDS, 1, 1)     ; number of entries
		Local $iOffset, $iIP
		If $OnlyReturnLocalPort Then
			Local $aTCPTable[$iTCPentries]
			For $i = 0 To $iTCPentries - 1
				$iOffset = $i * 5 + 1     ; going thru array of dwords
				$aTCPTable[$i] = Dec(Hex(BinaryMid(DllStructGetData($tMIB_TCPTABLE_DWORDS, 1, $iOffset + 3), 1, 2)))
			Next
		Else
			Local $aTCPTable[$iTCPentries + 1][5] = [["Connection state", "Local IP", "Local Port", "Remote IP", "Remote port"]]
			Local $aState[12] = ["CLOSED", "LISTENING", "SYN_SENT", "SYN_RCVD", "ESTABLISHED", "FIN_WAIT1", "FIN_WAIT2", "CLOSE_WAIT", "CLOSING", "LAST_ACK", "TIME_WAIT", "DELETE_TCB"]
			For $i = 1 To $iTCPentries
				$iOffset = ($i - 1) * 5 + 1     ; going thru array of dwords
				$aTCPTable[$i][0] = $aState[DllStructGetData($tMIB_TCPTABLE_DWORDS, 1, $iOffset + 1) - 1]     ; connection state text
				$iIP = DllStructGetData($tMIB_TCPTABLE_DWORDS, 1, $iOffset + 2)
				If $iIP = 16777343 Then
					$aTCPTable[$i][1] = "localhost (127.0.0.1)"
				ElseIf $iIP = 0 Then
					$aTCPTable[$i][1] = "Any local address"
				Else
					$aTCPTable[$i][1] = BitOR(BinaryMid($iIP, 1, 1), 0) & "." & BitOR(BinaryMid($iIP, 2, 1), 0) & "." & BitOR(BinaryMid($iIP, 3, 1), 0) & "." & BitOR(BinaryMid($iIP, 4, 1), 0)
				EndIf
				$aTCPTable[$i][2] = Dec(Hex(BinaryMid(DllStructGetData($tMIB_TCPTABLE_DWORDS, 1, $iOffset + 3), 1, 2)))
				If DllStructGetData($tMIB_TCPTABLE_DWORDS, 1, $iOffset + 1) < 3 Then
					$aTCPTable[$i][4] = "-"
					$aTCPTable[$i][3] = "-"
				Else
					$iIP = DllStructGetData($tMIB_TCPTABLE_DWORDS, 1, $iOffset + 4)
					$aTCPTable[$i][3] = BitOR(BinaryMid($iIP, 1, 1), 0) & "." & BitOR(BinaryMid($iIP, 2, 1), 0) & "." & BitOR(BinaryMid($iIP, 3, 1), 0) & "." & BitOR(BinaryMid($iIP, 4, 1), 0)
					$aTCPTable[$i][4] = Dec(Hex(BinaryMid(DllStructGetData($tMIB_TCPTABLE_DWORDS, 1, $iOffset + 5), 1, 2)))
				EndIf
			Next
		EndIf
		Return $aTCPTable
	EndFunc   ;==>_Ck_GetTcpTable

	Func _Ck_ConnectFailReason($oCk_Module)
		Local $TypeObj = (StringInStr($oCk_Module, 'Ftp', 0, 1) ? 'ftp' : (StringInStr($oCk_Module, 'Rest', 0, 1) ? 'rest' : (StringInStr($oCk_Module, 'Socket', 0, 1) ? 'socket' : 'http')))
		Local Static $SetData = 0
		Local Static $oDictConnectFailReason = ObjCreate('{EE09B103-97E0-11CF-978F-00A02463E06F}')
		Local Static $aConnectFailReason_FTP = [[1, 'Empty hostname'], [2, 'DNS lookup failed'], [3, 'DNS timeout'], [4, 'Aborted by application.'], [5, 'Internal failure.'], [6, 'Connect Timed Out'], [7, 'Connect Rejected (or failed for some other reason)'], [100, 'TLS internal error.'], [101, 'Failed to send client hello.'], [102, 'Unexpected handshake message.'], [103, 'Failed to read server hello.'], [104, 'No server certificate.'], [105, 'Unexpected TLS protocol version.'], [106, 'Server certificate verify failed (the server certificate is expired or the cert''s signature verification failed).'], [107, 'Unacceptable TLS protocol version.'], [109, 'Failed to read handshake messages.'], [110, 'Failed to send client certificate handshake message.'], [111, 'Failed to send client key exchange handshake message.'], [112, 'Client certificate''s private key not accessible.'], [113, 'Failed to send client cert verify handshake message.'], [114, 'Failed to send change cipher spec handshake message.'], [115, 'Failed to send finished handshake message.'], [116, 'Server''s Finished message is invalid.'], [200, 'Connected, but failed to receive greeting from FTP server.'], [201, 'Failed to do AUTH TLS or AUTH SSL.'], [300, 'Asynch op in progress'], [301, 'Login failure.']]
		Local Static $aConnectFailReason_HTTP = [[1, 'empty hostname'], [2, 'DNS lookup failed'], [3, 'DNS timeout'], [4, 'Aborted by application'], [5, 'Internal failure'], [6, 'Connect Timed Out'], [7, 'Connect Rejected (or failed for some other reason)'], [50, 'HTTP proxy authentication failure'], [98, 'Async operation in progress'], [99, 'Product is not unlocked'], [100, 'TLS internal error'], [101, 'Failed to send client with handshake'], [102, 'Unexpected handshake message'], [103, 'Failed to read server with handshake'], [104, 'No server certificate'], [105, 'Unexpected TLS protocol version'], [106, 'Server certificate verify failed (the server certificate is expired or the cert''s signature verification failed)'], [107, 'Unacceptable TLS protocol version'], [108, 'App-defined server certificate requirements failure'], [109, 'Failed to read handshake messages'], [110, 'Failed to send client certificate handshake message'], [111, 'Failed to send client key exchange handshake message'], [112, 'Client certificate''s private key not accessible'], [113, 'Failed to send client cert verify handshake message'], [114, 'Failed to send change cipher spec handshake message'], [115, 'Failed to send finished handshake message'], [116, 'Server''s Finished message is invalid'], [125, 'TLS Pin Set Mismatch']]
		Local Static $aConnectFailReason_Rest = [[1, 'empty hostname'], [2, 'DNS lookup failed'], [3, 'DNS timeout'], [4, 'Aborted by application.'], [5, 'Internal failure.'], [6, 'Connect Timed Out'], [7, 'Connect Rejected (or failed for some other reason)'], [100, 'TLS internal error.'], [101, 'Failed to send client hello.'], [102, 'Unexpected handshake message.'], [103, 'Failed to read server hello.'], [104, 'No server certificate.'], [105, 'Unexpected TLS protocol version.'], [106, 'Server certificate verify failed (the server certificate is expired or the cert''s signature verification failed).'], [107, 'Unacceptable TLS protocol version.'], [109, 'Failed to read handshake messages.'], [110, 'Failed to send client certificate handshake message.'], [111, 'Failed to send client key exchange handshake message.'], [112, 'Client certificate''s private key not accessible.'], [113, 'Failed to send client cert verify handshake message.'], [114, 'Failed to send change cipher spec handshake message.'], [115, 'Failed to send finished handshake message.'], [116, 'Server''s Finished message is invalid.']]
		Local Static $aConnectFailReason_Socket = [[1, 'empty hostname'], [2, 'DNS lookup failed'], [3, 'DNS timeout'], [4, 'Aborted by application.'], [5, 'Internal failure.'], [6, 'Connect Timed Out'], [7, 'Connect Rejected (or failed for some other reason)'], [100, 'TLS internal error.'], [101, 'Failed to send client hello.'], [102, 'Unexpected handshake message.'], [103, 'Failed to read server hello.'], [104, 'No server certificate.'], [105, 'Unexpected TLS protocol version.'], [106, 'Server certificate verify failed (the server certificate is expired or the cert''s signature verification failed).'], [107, 'Unacceptable TLS protocol version.'], [108, 'App-defined server certificate requirements failure.'], [109, 'Failed to read handshake messages.'], [110, 'Failed to send client certificate handshake message.'], [111, 'Failed to send client key exchange handshake message.'], [112, 'Client certificate''s private key not accessible.'], [113, 'Failed to send client cert verify handshake message.'], [114, 'Failed to send change cipher spec handshake message.'], [115, 'Failed to send finished handshake message.'], [116, 'Server''s Finished message is invalid.']]
		If $SetData = 0 Then
			$SetData = 1
			With $oDictConnectFailReason
				For $i = 0 To UBound($aConnectFailReason_FTP) - 1
					$oDictConnectFailReason($TypeObj & $aConnectFailReason_FTP[$i][0]) = $aConnectFailReason_FTP[$i][1]
				Next
				For $i = 0 To UBound($aConnectFailReason_HTTP) - 1
					$oDictConnectFailReason($TypeObj & $aConnectFailReason_HTTP[$i][0]) = $aConnectFailReason_HTTP[$i][1]
				Next
				For $i = 0 To UBound($aConnectFailReason_Rest) - 1
					$oDictConnectFailReason($TypeObj & $aConnectFailReason_Rest[$i][0]) = $aConnectFailReason_Rest[$i][1]
				Next
				For $i = 0 To UBound($aConnectFailReason_Socket) - 1
					$oDictConnectFailReason($TypeObj & $aConnectFailReason_Socket[$i][0]) = $aConnectFailReason_Socket[$i][1]
				Next
			EndWith
		EndIf
		If $oDictConnectFailReason.Exists($TypeObj & $oCk_Module.ConnectFailReason) Then Return $oDictConnectFailReason($TypeObj & $oCk_Module.ConnectFailReason)
		Return 'Unknown'
	EndFunc   ;==>_Ck_ConnectFailReason

	Func _Ck_HTMLAbsoluteURL($sSource, $sURL, $sAdditional_Pattern = '', $sProtocol = '')
		If Not StringRegExp($sSource, '(?i)<\h*?base .*?href\h*?=') Then
			$sSource = '<base href="' & $sURL & '"/><script>var _b = document.getElementsByTagName("base")[0], _bH = "' & $sURL & '";if (_b && _b.href != _bH) _b.href = _bH;</script>' & @CRLF & $sSource
		EndIf
		;-------------------------------------------------------------------------------------------------------
		If $sAdditional_Pattern Then $sAdditional_Pattern &= '|'
		Local $basePattern = '(?i)(' & $sAdditional_Pattern & '(?:window\.location|\W(?:src|href)|v-bind:src|param name\h*?=\h*?["'']movie["'']\h+value)\h*?=\h*?["'']*?|attr\([''"]src[''"]\h*?,\h*?[''"])(?!https?:|javascript:|\&|\#)'
		;-------------------------------------------------------------------------------------------------------
		$sURL = StringRegExpReplace($sURL, '(?i)^(.*?)/[^/]+\.(?:php|html|aspx).*$', '$1')
		$sURL = StringRegExpReplace($sURL, '/$', '')
		;-------------------------------------------------------------------------------------------------------
		Local $aURL = StringRegExp($sURL, '(?i)^(https?://[^/]+)(/?)(.*)/?$', 3)
		If @error Then Return SetError(1, '', $sSource)
		;href='//' ----------------------------------------------------------
		$sSource = StringRegExpReplace($sSource, $basePattern & '//', '$1' & $sProtocol & '://')
		;href='/' ----------------------------------------------------------
		$sSource = StringRegExpReplace($sSource, $basePattern & '/', '$1' & $aURL[0] & '/')
		;href='./' ----------------------------------------------------------
		$sSource = StringRegExpReplace($sSource, $basePattern & '\./', '$1' & $sURL & '/')
		;href='' ----------------------------------------------------------
;~ 		$sSource = StringRegExpReplace($sSource, $basePattern & '([^/\."''])', '$1' & $sURL & '/$2')
		;href='../' -------------------------------------------------------------------
		Local $regSource = StringRegExp($sSource, $basePattern & '((?:\.\./)+)', 3), $memReg = '|', $sRegAttach
		If Not @error Then
			Local $baseURL = ''
			For $i = 0 To UBound($regSource) - 1 Step 2
				$sRegAttach = $regSource[$i] & $regSource[$i + 1]
				If StringInStr($memReg, '|' & $sRegAttach & '|', 0, 1) Then ContinueLoop
				$baseURL = $aURL[2]
				For $j = 1 To (StringLen($regSource[$i + 1]) / 3) + 1     ;số lần Back
					$baseURL = StringRegExpReplace($baseURL, '(?:/|^)[^/]+$', '')
				Next
				$sSource = StringRegExpReplace($sSource, '\Q' & $sRegAttach & '\E', $regSource[$i] & $aURL[0] & '/' & ($baseURL ? $baseURL & '/' : ''))
				$memReg &= $sRegAttach & '|'
			Next
		EndIf
		Return $sSource
	EndFunc   ;==>_Ck_HTMLAbsoluteURL

	Volatile Func _Ck_HttpEvent_PercentDone($pctDone)
		Call($g_CHILKAT__pFuncDLCallback, $pctDone)
	EndFunc   ;==>_Ck_HttpEvent_PercentDone
#EndRegion



#Region MINI CHILKAT FUNCS
	#Region Mini HTTP Request
		Func mCk_HttpGetSession($iSession = Default)
			If $iSession = Default Or Not $iSession Then $iSession = $g_mCHILKAT__HttpSessionID
			$iSession = Int($iSession)
			Local $oCK_HTTP = $g_mCHILKAT_Dict_HttpSession($iSession)
			If Not IsObj($oCK_HTTP) Then Return SetError(1, _Ck_ErrNotify('mCk_HttpGetSession', 'Http Session <' & $iSession & '> not exists'), '')
			Return $oCK_HTTP
		EndFunc   ;==>mCk_HttpGetSession

		Func mCk_HttpSetSession($iSession)
			$g_mCHILKAT__HttpSessionID = Int($iSession)
		EndFunc   ;==>mCk_HttpSetSession

		Func mCk_HttpRequest($sURL_and_Mode, $BodyData = '', $sRequestHeaders = '', $iConnectTimeoutMs = Default, $FuncDownloadCallback = Null)
			Local $iHttpSession = StringRegExp($sURL_and_Mode, '^[Ss#]?(\d+)\h+', 1)
			If Not @error Then
				$g_mCHILKAT__HttpSessionID = Int($iHttpSession[0])
				$sURL_and_Mode = StringRegExpReplace($sURL_and_Mode, '^[Ss#]?(\d+)\h+', '', 1)
			EndIf
			;-------------------------------------------------------------------------------------------------------
			If Not IsObj($g_mCHILKAT_Dict_HttpSession($g_mCHILKAT__HttpSessionID)) Then
				$g_mCHILKAT_Dict_HttpSession($g_mCHILKAT__HttpSessionID) = Ck_HttpCreate()
				If @error Then Return SetError(-1, _Ck_ErrNotify('mCk_HttpRequest', 'Http Session <' & $g_mCHILKAT__WsSessionID & '> creation failed'), '')
			EndIf
			Local $oCK_HTTP = $g_mCHILKAT_Dict_HttpSession($g_mCHILKAT__HttpSessionID)
			;----------------------------------------------------------------------------------------------------------
			If IsArray($g_mCHILKAT_Dict_HttpOption($g_mCHILKAT__HttpSessionID)) Then
				Local $aOption = $g_mCHILKAT_Dict_HttpOption($g_mCHILKAT__HttpSessionID), $isChange = 0
				;---------------------------------------
				If $aOption[1] = True Then
					$aOption[1] = False
					$isChange += 1
					Ck_HttpThroughSocksProxy($oCK_HTTP, ($aOption[0])[0], ($aOption[0])[1], ($aOption[0])[2], ($aOption[0])[3], ($aOption[0])[4])
				EndIf
				;---------------------------------------
				If $aOption[3] = True Then
					$aOption[3] = False
					$isChange += 1
					Ck_HttpThroughHttpProxy($oCK_HTTP, ($aOption[2])[0], ($aOption[2])[1], ($aOption[2])[2], ($aOption[2])[3], ($aOption[2])[4], ($aOption[2])[5])
				EndIf
				;---------------------------------------
				If $aOption[5] = True Then
					$aOption[5] = False
					$isChange += 1
					Ck_HttpAuthenticate($oCK_HTTP, ($aOption[4])[0], ($aOption[4])[1], ($aOption[4])[2], ($aOption[4])[3])
				EndIf
				;---------------------------------------
				If $aOption[7] = True Then
					$aOption[7] = False
					$isChange += 1
					Ck_HttpSetCookie($oCK_HTTP, ($aOption[6])[0], ($aOption[6])[1], ($aOption[6])[2])
				EndIf
				;---------------------------------------
				If $aOption[9] = True Then
					$aOption[9] = False
					$isChange += 1
					Ck_HttpSetProxy($oCK_HTTP, $aOption[8])
				EndIf
				;---------------------------------------
				If $isChange Then $g_mCHILKAT_Dict_HttpOption($g_mCHILKAT__HttpSessionID) = $aOption
			EndIf
			;----------------------------------------------------------------------------------------------------------
			Local $vRet = Ck_HttpRequest($oCK_HTTP, $sURL_and_Mode, $BodyData, $sRequestHeaders, $iConnectTimeoutMs, $FuncDownloadCallback)
			Return SetError(@error, @extended, $vRet)
		EndFunc   ;==>mCk_HttpRequest

		Func mCk_HttpThroughSocksProxy($Hostname, $Port, $SocksUsername = '', $SocksPassword = '', $SocksVersion = 5)
			Local $aSocks = [$Hostname, $Port, $SocksUsername, $SocksPassword, $SocksVersion]
			;----------------------------------------------------------------------------------------------------------
			If IsArray($g_mCHILKAT_Dict_HttpOption($g_mCHILKAT__HttpSessionID)) Then
				Local $arr_CK_HTTP = $g_mCHILKAT_Dict_HttpOption($g_mCHILKAT__HttpSessionID)
				$arr_CK_HTTP[0] = $aSocks
				$arr_CK_HTTP[1] = True
			Else
				Local $arr_CK_HTTP[10] = [$aSocks, True, 'Proxy', False, 'Auth', False, 'Cookie', False, 'ProxyString', False]
			EndIf
			$g_mCHILKAT_Dict_HttpOption($g_mCHILKAT__HttpSessionID) = $arr_CK_HTTP
		EndFunc   ;==>mCk_HttpThroughSocksProxy

		Func mCk_HttpThroughHttpProxy($Proxy, $Port, $ProxyUsername = '', $ProxyPassword = '', $ProxyAuthMethod = '', $ProxyLoginDomain = '')
			Local $aProxy = [$Proxy, $Port, $ProxyUsername, $ProxyPassword, $ProxyAuthMethod, $ProxyLoginDomain]
			;----------------------------------------------------------------------------------------------------------
			If IsArray($g_mCHILKAT_Dict_HttpOption($g_mCHILKAT__HttpSessionID)) Then
				Local $arr_CK_HTTP = $g_mCHILKAT_Dict_HttpOption($g_mCHILKAT__HttpSessionID)
				$arr_CK_HTTP[2] = $aProxy
				$arr_CK_HTTP[3] = True
			Else
				Local $arr_CK_HTTP[10] = ['Socks', False, $aProxy, True, 'Auth', False, 'Cookie', False, 'ProxyString', False]
			EndIf
			$g_mCHILKAT_Dict_HttpOption($g_mCHILKAT__HttpSessionID) = $arr_CK_HTTP
		EndFunc   ;==>mCk_HttpThroughHttpProxy

		Func mCk_HttpAuthenticate($Username, $Password, $AuthMethod = '', $LoginDomain = '')
			Local $aAuth = [$Username, $Password, $AuthMethod, $LoginDomain]
			;----------------------------------------------------------------------------------------------------------
			If IsArray($g_mCHILKAT_Dict_HttpOption($g_mCHILKAT__HttpSessionID)) Then
				Local $arr_CK_HTTP = $g_mCHILKAT_Dict_HttpOption($g_mCHILKAT__HttpSessionID)
				$arr_CK_HTTP[4] = $aAuth
				$arr_CK_HTTP[5] = True
			Else
				Local $arr_CK_HTTP[10] = ['Socks', False, 'Proxy', False, $aAuth, True, 'Cookie', False, 'ProxyString', False]
			EndIf
			$g_mCHILKAT_Dict_HttpOption($g_mCHILKAT__HttpSessionID) = $arr_CK_HTTP
		EndFunc   ;==>mCk_HttpAuthenticate

		Func mCk_HttpSetCookie($sCookie, $sDomain_Or_RelativeUrl = Default, $Append = True)
			Local $aCookie = [$sCookie, $sDomain_Or_RelativeUrl, $Append]
			;----------------------------------------------------------------------------------------------------------
			If IsArray($g_mCHILKAT_Dict_HttpOption($g_mCHILKAT__HttpSessionID)) Then
				Local $arr_CK_HTTP = $g_mCHILKAT_Dict_HttpOption($g_mCHILKAT__HttpSessionID)
				$arr_CK_HTTP[6] = $aCookie
				$arr_CK_HTTP[7] = True
			Else
				Local $arr_CK_HTTP[10] = ['Socks', False, 'Proxy', False, 'Auth', False, $aCookie, True, 'ProxyString', False]
			EndIf
			$g_mCHILKAT_Dict_HttpOption($g_mCHILKAT__HttpSessionID) = $arr_CK_HTTP
		EndFunc   ;==>mCk_HttpSetCookie

		Func mCk_HttpSetProxy($ProxyString)
			If IsArray($g_mCHILKAT_Dict_HttpOption($g_mCHILKAT__HttpSessionID)) Then
				Local $arr_CK_HTTP = $g_mCHILKAT_Dict_HttpOption($g_mCHILKAT__HttpSessionID)
				$arr_CK_HTTP[8] = $ProxyString
				$arr_CK_HTTP[9] = True
			Else
				Local $arr_CK_HTTP[10] = ['Socks', False, 'Proxy', False, 'Auth', False, 'Cookie', False, $ProxyString, True]
			EndIf
			$g_mCHILKAT_Dict_HttpOption($g_mCHILKAT__HttpSessionID) = $arr_CK_HTTP
		EndFunc   ;==>mCk_HttpSetProxy

		Func mCk_HttpClearCookie($AllowClearCookieJarFile = False)
			Local $oCK_HTTP = $g_mCHILKAT_Dict_HttpSession($g_mCHILKAT__HttpSessionID)
			If Not IsObj($oCK_HTTP) Then Return SetError(-1, _Ck_ErrNotify('mCk_HttpClearCookie', 'Http Session <' & $g_mCHILKAT__HttpSessionID & '> not exists'), '')
			;----------------------------------------------------------------------------------------------------------
			Local $vRet = Ck_HttpClearCookie($oCK_HTTP, $AllowClearCookieJarFile)
			Return SetError(@error, @extended, $vRet)
		EndFunc   ;==>mCk_HttpClearCookie

		Func mCk_HttpGetCookie($sDomain_Or_RelativeUrl = Default, $ParseXmlToSemiColonFormat = True)
			Local $oCK_HTTP = $g_mCHILKAT_Dict_HttpSession($g_mCHILKAT__HttpSessionID)
			If Not IsObj($oCK_HTTP) Then Return SetError(-1, _Ck_ErrNotify('mCk_HttpGetCookie', 'Http Session <' & $g_mCHILKAT__HttpSessionID & '> not exists'), '')
			;----------------------------------------------------------------------------------------------------------
			Local $vRet = Ck_HttpGetCookie($oCK_HTTP, $sDomain_Or_RelativeUrl, $ParseXmlToSemiColonFormat)
			Return SetError(@error, @extended, $vRet)
		EndFunc   ;==>mCk_HttpGetCookie
	#EndRegion


	#Region Mini WebSocket
		Func mCk_WebSocketGetSession($iSession = Default)
			If $iSession = Default Or Not $iSession Then $iSession = $g_mCHILKAT__WsSessionID
			$iSession = Int($iSession)
			Local $oCk_WebSocket = $g_mCHILKAT_Dict_WsSession($iSession)
			If Not (IsArray($oCk_WebSocket) And IsObj($oCk_WebSocket[0]) And IsObj($oCk_WebSocket[1])) Then
				Return SetError(1, _Ck_ErrNotify('mCk_WebSocketGetSession', 'Ws Session <' & $iSession & '> not exists'), '')
			EndIf
			Return $oCk_WebSocket
		EndFunc   ;==>mCk_WebSocketGetSession

		Func mCk_WebSocketSetSession($iSession)
			$g_mCHILKAT__WsSessionID = Int($iSession)
		EndFunc   ;==>mCk_WebSocketSetSession

		Func mCk_WebSocketConnect($iURL, $sRequestHeaders = '', $iConnectTimeoutMs = Default, $autoReconnect = Default)
			Local $iWsSession = StringRegExp($iURL, '^[Ss#]?(\d+)\h+', 1)
			If Not @error Then
				$g_mCHILKAT__WsSessionID = Int($iWsSession[0])
				$iURL = StringRegExpReplace($iURL, '^[Ss#]?(\d+)\h+', '', 1)
			EndIf
			;-------------------------------------------------------------------------------------------------------
			If Not IsArray($g_mCHILKAT_Dict_WsSession($g_mCHILKAT__WsSessionID)) Then
				$g_mCHILKAT_Dict_WsSession($g_mCHILKAT__WsSessionID) = Ck_WebSocketCreate()
				If @error Then Return SetError(-1, _Ck_ErrNotify('mCk_WebSocketConnect', 'Ws Session <' & $g_mCHILKAT__WsSessionID & '> creation failed'), '')
			EndIf
			Local $oCk_WebSocket = $g_mCHILKAT_Dict_WsSession($g_mCHILKAT__WsSessionID)
			;----------------------------------------------------------------------------------------------------------
			If IsArray($g_mCHILKAT_Dict_WsOption($g_mCHILKAT__WsSessionID)) Then
				Local $aOption = $g_mCHILKAT_Dict_WsOption($g_mCHILKAT__WsSessionID), $isChange = 0
				;---------------------------------------
				If $aOption[1] = True Then
					$aOption[1] = False
					$isChange += 1
					Ck_WebSocketThroughSshTunnel($oCk_WebSocket, ($aOption[0])[0], ($aOption[0])[1], ($aOption[0])[2], ($aOption[0])[3])
				EndIf
				;---------------------------------------
				If $aOption[3] = True Then
					$aOption[3] = False
					$isChange += 1
					Ck_WebSocketThroughSocksProxy($oCk_WebSocket, ($aOption[2])[0], ($aOption[2])[1], ($aOption[2])[2], ($aOption[2])[3], ($aOption[2])[4])
				EndIf
				;---------------------------------------
				If $aOption[5] = True Then
					$aOption[5] = False
					$isChange += 1
					Ck_WebSocketThroughHttpProxy($oCk_WebSocket, ($aOption[4])[0], ($aOption[4])[1], ($aOption[4])[2], ($aOption[4])[3], ($aOption[4])[4])
				EndIf
				;---------------------------------------
				If $aOption[7] = True Then
					$aOption[7] = False
					$isChange += 1
					Ck_WebSocketSetProxy($oCk_WebSocket, $aOption[6])
				EndIf
				;---------------------------------------
				If $isChange Then $g_mCHILKAT_Dict_WsOption($g_mCHILKAT__WsSessionID) = $aOption
			EndIf
			;----------------------------------------------------------------------------------------------------------
			Local $vRet = Ck_WebSocketConnect($oCk_WebSocket, $iURL, $sRequestHeaders, $iConnectTimeoutMs, $autoReconnect)
			Return SetError(@error, @extended, $vRet)
		EndFunc   ;==>mCk_WebSocketConnect

		Func mCk_WebSocketThroughSshTunnel($Hostname = '', $Port = 22, $User = 'admin', $Pass = 'admin')
			Local $aSsh = [$Hostname, $Port, $User, $Pass]
			;----------------------------------------------------------------------------------------------------------
			If IsArray($g_mCHILKAT_Dict_WsOption($g_mCHILKAT__WsSessionID)) Then
				Local $arr_CK_Ws = $g_mCHILKAT_Dict_WsOption($g_mCHILKAT__WsSessionID)
				$arr_CK_Ws[0] = $aSsh
				$arr_CK_Ws[1] = True
			Else
				Local $arr_CK_Ws[8] = [$aSsh, True, 'Socks', False, 'Proxy', False, 'ProxyString', False]
			EndIf
			$g_mCHILKAT_Dict_WsOption($g_mCHILKAT__WsSessionID) = $arr_CK_Ws
		EndFunc   ;==>mCk_WebSocketThroughSshTunnel

		Func mCk_WebSocketThroughSocksProxy($Hostname = '', $Port = '', $SocksUsername = '', $SocksPassword = '', $SocksVersion = 5)
			Local $aSocks = [$Hostname, $Port, $SocksUsername, $SocksPassword, $SocksVersion]
			;----------------------------------------------------------------------------------------------------------
			If IsArray($g_mCHILKAT_Dict_WsOption($g_mCHILKAT__WsSessionID)) Then
				Local $arr_CK_Ws = $g_mCHILKAT_Dict_WsOption($g_mCHILKAT__WsSessionID)
				$arr_CK_Ws[2] = $aSocks
				$arr_CK_Ws[3] = True
			Else
				Local $arr_CK_Ws[8] = ['Ssh', False, $aSocks, True, 'Proxy', False, 'ProxyString', False]
			EndIf
			$g_mCHILKAT_Dict_WsOption($g_mCHILKAT__WsSessionID) = $arr_CK_Ws
		EndFunc   ;==>mCk_WebSocketThroughSocksProxy

		Func mCk_WebSocketThroughHttpProxy($Hostname = '', $Port = '', $User = '', $Pass = '', $ProxyAuthMethod = '')
			Local $aProxy = [$Hostname, $Port, $User, $Pass, $ProxyAuthMethod]
			;----------------------------------------------------------------------------------------------------------
			If IsArray($g_mCHILKAT_Dict_WsOption($g_mCHILKAT__WsSessionID)) Then
				Local $arr_CK_Ws = $g_mCHILKAT_Dict_WsOption($g_mCHILKAT__WsSessionID)
				$arr_CK_Ws[4] = $aProxy
				$arr_CK_Ws[5] = True
			Else
				Local $arr_CK_Ws[8] = ['Ssh', False, 'Socks', False, $aProxy, True, 'ProxyString', False]
			EndIf
			$g_mCHILKAT_Dict_WsOption($g_mCHILKAT__WsSessionID) = $arr_CK_Ws
		EndFunc   ;==>mCk_WebSocketThroughHttpProxy

		Func mCk_WebSocketSetProxy($ProxyString)
			If IsArray($g_mCHILKAT_Dict_WsOption($g_mCHILKAT__WsSessionID)) Then
				Local $arr_CK_Ws = $g_mCHILKAT_Dict_WsOption($g_mCHILKAT__WsSessionID)
				$arr_CK_Ws[6] = $ProxyString
				$arr_CK_Ws[7] = True
			Else
				Local $arr_CK_Ws[8] = ['Ssh', False, 'Socks', False, 'Proxy', False, $ProxyString, True]
			EndIf
			$g_mCHILKAT_Dict_WsOption($g_mCHILKAT__WsSessionID) = $arr_CK_Ws
		EndFunc   ;==>mCk_WebSocketSetProxy

		Func mCk_WebSocketSetBinaryMessagesMode($BinaryMode = False)
			Local $oCk_WebSocket = $g_mCHILKAT_Dict_WsSession($g_mCHILKAT__WsSessionID)
			If Not IsArray($oCk_WebSocket) Then Return SetError(-1, _Ck_ErrNotify('mCk_WebSocketSetBinaryMessagesMode', 'Ws Session <' & $g_mCHILKAT__WsSessionID & '> not exists'), '')
			;----------------------------------------------------------------------------------------------------------
			Local $vRet = Ck_WebSocketSetBinaryMessagesMode($oCk_WebSocket, $BinaryMode)
			Return SetError(@error, @extended, $vRet)
		EndFunc   ;==>mCk_WebSocketSetBinaryMessagesMode

		Func mCk_WebSocketReceiveFrame($BinaryMode = Default)
			Local $oCk_WebSocket = $g_mCHILKAT_Dict_WsSession($g_mCHILKAT__WsSessionID)
			If Not IsArray($oCk_WebSocket) Then Return SetError(-1, _Ck_ErrNotify('mCk_WebSocketReceiveFrame', 'Ws Session <' & $g_mCHILKAT__WsSessionID & '> not exists'), '')
			;----------------------------------------------------------------------------------------------------------
			Local $vRet = Ck_WebSocketReceiveFrame($oCk_WebSocket, $BinaryMode)
			Return SetError(@error, @extended, $vRet)
		EndFunc   ;==>mCk_WebSocketReceiveFrame

		Func mCk_WebSocketSendFrame($BodyData_or_FilePath, $isFinalFrame = Default, $BinaryMode = Default)
			Local $oCk_WebSocket = $g_mCHILKAT_Dict_WsSession($g_mCHILKAT__WsSessionID)
			If Not IsArray($oCk_WebSocket) Then Return SetError(-1, _Ck_ErrNotify('mCk_WebSocketSendFrame', 'Ws Session <' & $g_mCHILKAT__WsSessionID & '> not exists'), '')
			;----------------------------------------------------------------------------------------------------------
			Local $vRet = Ck_WebSocketSendFrame($oCk_WebSocket, $BodyData_or_FilePath, $isFinalFrame, $BinaryMode)
			Return SetError(@error, @extended, $vRet)
		EndFunc   ;==>mCk_WebSocketSendFrame

		Func mCk_WebSocketPingPong($PingData = '')
			Local $oCk_WebSocket = $g_mCHILKAT_Dict_WsSession($g_mCHILKAT__WsSessionID)
			If Not IsArray($oCk_WebSocket) Then Return SetError(-1, _Ck_ErrNotify('mCk_WebSocketPingPong', 'Ws Session <' & $g_mCHILKAT__WsSessionID & '> not exists'), '')
			;----------------------------------------------------------------------------------------------------------
			Local $vRet = Ck_WebSocketPingPong($oCk_WebSocket, $PingData)
			Return SetError(@error, @extended, $vRet)
		EndFunc   ;==>mCk_WebSocketPingPong

		Func mCk_WebSocketClose($iStatus = 1000, $sMessage = 'Closing this websocket')
			Local $oCk_WebSocket = $g_mCHILKAT_Dict_WsSession($g_mCHILKAT__WsSessionID)
			If Not IsArray($oCk_WebSocket) Then Return SetError(-1, _Ck_ErrNotify('mCk_WebSocketClose', 'Ws Session <' & $g_mCHILKAT__WsSessionID & '> not exists'), '')
			;----------------------------------------------------------------------------------------------------------
			Local $vRet = Ck_WebSocketClose($oCk_WebSocket, $iStatus, $sMessage)
			Return SetError(@error, @extended, $vRet)
		EndFunc   ;==>mCk_WebSocketClose
	#EndRegion
#EndRegion


#H2Obf_Bypass_End=ckRequest.au3
