(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1024 0)
(declare-sort var3026 0)
(declare-sort var2469 0)
(declare-sort var1060 0)
(declare-sort var3613 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun password/1602611286 (var1024) String)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun seed/1602611286 (var1024) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun var2469_xorString/-1039314400 ((Array Int Int) (Array Int Int) (Array Int Int) Int) void)
(declare-fun publicKeyString/1602611286 (var1024) String)
(declare-fun var3613_decodeRSAPublicKey/775626138 (String) var1060)
(declare-fun var3613_encryptWithRSAPublicKey/698978255 ((Array Int Int) var1060 String) (Array Int Int))
(declare-const null-var1024 var1024)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3028 var1024) ; Statement: r0 := @this: com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin 
(assert (not (= var3028 null-var1024)))
(declare-const var95 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var95 null-String)))
(define-const var1657 String (password/1602611286 var3028)) ; Statement: $r1 = r0.<com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin: java.lang.String password> 
 ; Statement: if $r1 == null goto $r14 = newarray (byte)[1] 
(assert (= var1657 null-String)) ; Cond: $r1 == null 
(define-const var1391 (Array Int Int) arr-Int-init) ; Statement: $r14 = newarray (byte)[1] 
(declare-const var1391!1 (Array Int Int))
(assert (not (= var1391!1 null-__Array__Int__Int__)))
(assert (= (select var1391!1 0) 0)) ; Statement: $r14[0] = 0 
(assert true) ; Non Conditional
(define-const var1192 Int (getLength-Arr-Int-1 var1391!1)) ; Statement: $i0 = lengthof $r14 
(define-const var739 (Array Int Int) arr-Int-init) ; Statement: $r13 = newarray (byte)[$i0] 
(define-const var114 String (seed/1602611286 var3028)) ; Statement: $r2 = r0.<com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin: java.lang.String seed> 
(assert true)
(define-const var1296 (Array Int Int) (getBytes/1068683673 var114)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: byte[] getBytes()>() 
(define-const var1466 Int (getLength-Arr-Int-1 var1391!1)) ; Statement: $i1 = lengthof $r14 
;(assert (var2469_xorString/-1039314400 var1391!1 var739 var1296 var1466)) ; Statement: staticinvoke <com.mysql.cj.protocol.Security: void xorString(byte[],byte[],byte[],int)>($r14, $r13, $r3, $i1) 

(declare-const var1391!2 (Array Int Int))
(declare-const var739!1 (Array Int Int))
(declare-const var1296!1 (Array Int Int))
(declare-const var1466!1 Int)
(define-const var1237 String (publicKeyString/1602611286 var3028)) ; Statement: $r4 = r0.<com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin: java.lang.String publicKeyString> 
(define-const var333 var1060 (var3613_decodeRSAPublicKey/775626138 var1237)) ; Statement: $r6 = staticinvoke <com.mysql.cj.protocol.ExportControlled: java.security.interfaces.RSAPublicKey decodeRSAPublicKey(java.lang.String)>($r4) 
(define-const var2813 (Array Int Int) (var3613_encryptWithRSAPublicKey/698978255 var739!1 var333 var95)) ; Statement: $r7 = staticinvoke <com.mysql.cj.protocol.ExportControlled: byte[] encryptWithRSAPublicKey(byte[],java.security.interfaces.RSAPublicKey,java.lang.String)>($r13, $r6, r5) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {password/1602611286=([com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin], java.lang.String), arr-Int-init=([], byte[]), getLength-Arr-Int-1=([byte[]], int), seed/1602611286=([com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), var2469_xorString/-1039314400=([byte[], byte[], byte[], int], void), publicKeyString/1602611286=([com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin], java.lang.String), var3613_decodeRSAPublicKey/775626138=([java.lang.String], java.security.interfaces.RSAPublicKey), var3613_encryptWithRSAPublicKey/698978255=([byte[], java.security.interfaces.RSAPublicKey, java.lang.String], byte[])}
; {var1024=com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin, var3028=r0, var95=r5, var3026=null_type, var1657=$r1, var1391=$r14, var1192=$i0, var739=$r13, var114=$r2, var1296=$r3, var1466=$i1, var2469=com.mysql.cj.protocol.Security, var1237=$r4, var1060=java.security.interfaces.RSAPublicKey, var3613=com.mysql.cj.protocol.ExportControlled, var333=$r6, var2813=$r7}
; {com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin=var1024, r0=var3028, r5=var95, null_type=var3026, $r1=var1657, $r14=var1391, $i0=var1192, $r13=var739, $r2=var114, $r3=var1296, $i1=var1466, com.mysql.cj.protocol.Security=var2469, $r4=var1237, java.security.interfaces.RSAPublicKey=var1060, com.mysql.cj.protocol.ExportControlled=var3613, $r6=var333, $r7=var2813}
;seq <java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 1}
;stmts r0 := @this: com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin;	r5 := @parameter0: java.lang.String;	$r1 = r0.<com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin: java.lang.String password>;	if $r1 == null goto $r14 = newarray (byte)[1];	$r14 = newarray (byte)[1];	$r14[0] = 0;	$i0 = lengthof $r14;	$r13 = newarray (byte)[$i0];	$r2 = r0.<com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin: java.lang.String seed>;	$r3 = virtualinvoke $r2.<java.lang.String: byte[] getBytes()>();	$i1 = lengthof $r14;	staticinvoke <com.mysql.cj.protocol.Security: void xorString(byte[],byte[],byte[],int)>($r14, $r13, $r3, $i1);	$r4 = r0.<com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin: java.lang.String publicKeyString>;	$r6 = staticinvoke <com.mysql.cj.protocol.ExportControlled: java.security.interfaces.RSAPublicKey decodeRSAPublicKey(java.lang.String)>($r4);	$r7 = staticinvoke <com.mysql.cj.protocol.ExportControlled: byte[] encryptWithRSAPublicKey(byte[],java.security.interfaces.RSAPublicKey,java.lang.String)>($r13, $r6, r5);	return $r7
;block_num 3