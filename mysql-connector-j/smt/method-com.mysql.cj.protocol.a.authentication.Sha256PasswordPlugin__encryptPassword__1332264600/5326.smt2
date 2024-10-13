(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1020 0)
(declare-sort var3144 0)
(declare-sort var686 0)
(declare-sort var2766 0)
(declare-sort var3920 0)
(declare-sort var1892 0)
(declare-sort var2005 0)
(declare-sort var2168 0)
(declare-sort var2345 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun password/1602611286 (var1020) String)
(declare-fun protocol/1602611286 (var1020) var686)
(declare-fun var686_getServerSession/-1168982903 (var686) var2766)
(declare-fun var2766_getCharsetSettings/-848071942 (var2766) var3920)
(declare-fun var3920_getPasswordCharacterEncoding/-861467430 (var3920) String)
(declare-fun var1892_getBytesNullTerminated/707465026 (String String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun seed/1602611286 (var1020) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun var2005_xorString/-1039314400 ((Array Int Int) (Array Int Int) (Array Int Int) Int) void)
(declare-fun publicKeyString/1602611286 (var1020) String)
(declare-fun var2345_decodeRSAPublicKey/775626138 (String) var2168)
(declare-fun var2345_encryptWithRSAPublicKey/698978255 ((Array Int Int) var2168 String) (Array Int Int))
(declare-const null-var1020 var1020)
(declare-const null-String String)
(declare-const var1384 var1020) ; Statement: r0 := @this: com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin 
(assert (not (= var1384 null-var1020)))
(declare-const var2715 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var2715 null-String)))
(define-const var3054 String (password/1602611286 var1384)) ; Statement: $r1 = r0.<com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin: java.lang.String password> 
 ; Statement: if $r1 == null goto $r14 = newarray (byte)[1] 
(assert (not (= var3054 null-String))) ; Negate: Cond: $r1 == null  
(define-const var849 String (password/1602611286 var1384)) ; Statement: $r9 = r0.<com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin: java.lang.String password> 
(define-const var3439 var686 (protocol/1602611286 var1384)) ; Statement: $r8 = r0.<com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin: com.mysql.cj.protocol.Protocol protocol> 
(define-const var2073 var2766 (var686_getServerSession/-1168982903 var3439)) ; Statement: $r10 = interfaceinvoke $r8.<com.mysql.cj.protocol.Protocol: com.mysql.cj.protocol.ServerSession getServerSession()>() 
(define-const var1715 var3920 (var2766_getCharsetSettings/-848071942 var2073)) ; Statement: $r11 = interfaceinvoke $r10.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(define-const var1396 String (var3920_getPasswordCharacterEncoding/-861467430 var1715)) ; Statement: $r12 = interfaceinvoke $r11.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>() 
(define-const var1305 (Array Int Int) (var1892_getBytesNullTerminated/707465026 var849 var1396)) ; Statement: $r14 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytesNullTerminated(java.lang.String,java.lang.String)>($r9, $r12) 
 ; Statement: goto [?= $i0 = lengthof $r14] 
(assert true) ; Non Conditional
(define-const var1055 Int (getLength-Arr-Int-1 var1305)) ; Statement: $i0 = lengthof $r14 
(define-const var310 (Array Int Int) arr-Int-init) ; Statement: $r13 = newarray (byte)[$i0] 
(define-const var3283 String (seed/1602611286 var1384)) ; Statement: $r2 = r0.<com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin: java.lang.String seed> 
(assert true)
(define-const var846 (Array Int Int) (getBytes/1068683673 var3283)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: byte[] getBytes()>() 
(define-const var2652 Int (getLength-Arr-Int-1 var1305)) ; Statement: $i1 = lengthof $r14 
;(assert (var2005_xorString/-1039314400 var1305 var310 var846 var2652)) ; Statement: staticinvoke <com.mysql.cj.protocol.Security: void xorString(byte[],byte[],byte[],int)>($r14, $r13, $r3, $i1) 

(declare-const var1305!1 (Array Int Int))
(declare-const var310!1 (Array Int Int))
(declare-const var846!1 (Array Int Int))
(declare-const var2652!1 Int)
(define-const var2095 String (publicKeyString/1602611286 var1384)) ; Statement: $r4 = r0.<com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin: java.lang.String publicKeyString> 
(define-const var433 var2168 (var2345_decodeRSAPublicKey/775626138 var2095)) ; Statement: $r6 = staticinvoke <com.mysql.cj.protocol.ExportControlled: java.security.interfaces.RSAPublicKey decodeRSAPublicKey(java.lang.String)>($r4) 
(define-const var2125 (Array Int Int) (var2345_encryptWithRSAPublicKey/698978255 var310!1 var433 var2715)) ; Statement: $r7 = staticinvoke <com.mysql.cj.protocol.ExportControlled: byte[] encryptWithRSAPublicKey(byte[],java.security.interfaces.RSAPublicKey,java.lang.String)>($r13, $r6, r5) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {password/1602611286=([com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin], java.lang.String), protocol/1602611286=([com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin], com.mysql.cj.protocol.Protocol), var686_getServerSession/-1168982903=([com.mysql.cj.protocol.Protocol], com.mysql.cj.protocol.ServerSession), var2766_getCharsetSettings/-848071942=([com.mysql.cj.protocol.ServerSession], com.mysql.cj.CharsetSettings), var3920_getPasswordCharacterEncoding/-861467430=([com.mysql.cj.CharsetSettings], java.lang.String), var1892_getBytesNullTerminated/707465026=([java.lang.String, java.lang.String], byte[]), getLength-Arr-Int-1=([byte[]], int), arr-Int-init=([], byte[]), seed/1602611286=([com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), var2005_xorString/-1039314400=([byte[], byte[], byte[], int], void), publicKeyString/1602611286=([com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin], java.lang.String), var2345_decodeRSAPublicKey/775626138=([java.lang.String], java.security.interfaces.RSAPublicKey), var2345_encryptWithRSAPublicKey/698978255=([byte[], java.security.interfaces.RSAPublicKey, java.lang.String], byte[])}
; {var1020=com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin, var1384=r0, var2715=r5, var3144=null_type, var3054=$r1, var849=$r9, var686=com.mysql.cj.protocol.Protocol, var3439=$r8, var2766=com.mysql.cj.protocol.ServerSession, var2073=$r10, var3920=com.mysql.cj.CharsetSettings, var1715=$r11, var1396=$r12, var1892=com.mysql.cj.util.StringUtils, var1305=$r14, var1055=$i0, var310=$r13, var3283=$r2, var846=$r3, var2652=$i1, var2005=com.mysql.cj.protocol.Security, var2095=$r4, var2168=java.security.interfaces.RSAPublicKey, var2345=com.mysql.cj.protocol.ExportControlled, var433=$r6, var2125=$r7}
; {com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin=var1020, r0=var1384, r5=var2715, null_type=var3144, $r1=var3054, $r9=var849, com.mysql.cj.protocol.Protocol=var686, $r8=var3439, com.mysql.cj.protocol.ServerSession=var2766, $r10=var2073, com.mysql.cj.CharsetSettings=var3920, $r11=var1715, $r12=var1396, com.mysql.cj.util.StringUtils=var1892, $r14=var1305, $i0=var1055, $r13=var310, $r2=var3283, $r3=var846, $i1=var2652, com.mysql.cj.protocol.Security=var2005, $r4=var2095, java.security.interfaces.RSAPublicKey=var2168, com.mysql.cj.protocol.ExportControlled=var2345, $r6=var433, $r7=var2125}
;seq <java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 1}
;stmts r0 := @this: com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin;	r5 := @parameter0: java.lang.String;	$r1 = r0.<com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin: java.lang.String password>;	if $r1 == null goto $r14 = newarray (byte)[1];	$r9 = r0.<com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin: java.lang.String password>;	$r8 = r0.<com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin: com.mysql.cj.protocol.Protocol protocol>;	$r10 = interfaceinvoke $r8.<com.mysql.cj.protocol.Protocol: com.mysql.cj.protocol.ServerSession getServerSession()>();	$r11 = interfaceinvoke $r10.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	$r12 = interfaceinvoke $r11.<com.mysql.cj.CharsetSettings: java.lang.String getPasswordCharacterEncoding()>();	$r14 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytesNullTerminated(java.lang.String,java.lang.String)>($r9, $r12);	goto [?= $i0 = lengthof $r14];	$i0 = lengthof $r14;	$r13 = newarray (byte)[$i0];	$r2 = r0.<com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin: java.lang.String seed>;	$r3 = virtualinvoke $r2.<java.lang.String: byte[] getBytes()>();	$i1 = lengthof $r14;	staticinvoke <com.mysql.cj.protocol.Security: void xorString(byte[],byte[],byte[],int)>($r14, $r13, $r3, $i1);	$r4 = r0.<com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin: java.lang.String publicKeyString>;	$r6 = staticinvoke <com.mysql.cj.protocol.ExportControlled: java.security.interfaces.RSAPublicKey decodeRSAPublicKey(java.lang.String)>($r4);	$r7 = staticinvoke <com.mysql.cj.protocol.ExportControlled: byte[] encryptWithRSAPublicKey(byte[],java.security.interfaces.RSAPublicKey,java.lang.String)>($r13, $r6, r5);	return $r7
;block_num 3