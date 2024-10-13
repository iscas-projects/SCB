(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1018 0)
(declare-sort var3755 0)
(declare-sort var3248 0)
(declare-sort var254 0)
(declare-sort var862 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3755_isBlank/-29875248 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var254-init () var254)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1642269841 (var254 String var862) void)
(declare-fun cast-from-var3248-to-var862 (var3248) var862)
(declare-const null-String String)
(declare-const null-var3248 var3248)
(declare-const var3504 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3504 null-String)))
(define-const var449 Bool (var3755_isBlank/-29875248 (cast-from-String-to-String var3504))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto r12 = staticinvoke <com.efficient.common.util.AESUtils: javax.crypto.Cipher getCipher(java.lang.String,int)>("http://tanmw.top", 1) 
(assert (not (= (ite var449 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var827 var3248) ; Statement: $r6 := @caughtexception 
(assert (not (= var827 null-var3248)))
(define-const var3180 var254 var254-init) ; Statement: $r7 = new java.lang.RuntimeException 
(define-const var533 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var533)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var533!1 String)
(assert (= var533!1 ""))
(assert true)
(define-const var3201 String (append/672562846 var533!1 "\u6570\u636e\u52a0\u89e3\u5bc6\u5f02\u5e38:")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u6570\u636e\u52a0\u89e3\u5bc6\u5f02\u5e38:") 
(declare-const var533!2 String)
(assert (= var533!2 (str.++ var533!1 "\u6570\u636e\u52a0\u89e3\u5bc6\u5f02\u5e38:")))
(assert true)
(define-const var257 String (append/672562846 var3201 var3504)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3201!1 String)
(assert (= var3201!1 (str.++ var3201 var3504)))
(assert true)
(define-const var1463 String (toString/-2075883882 var257)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1642269841 var3180 var1463 (cast-from-var3248-to-var862 var827))) ; Statement: specialinvoke $r7.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r6) 

(declare-const var3180!1 var254)
(declare-const var1463!1 String)
(declare-const var827!1 var3248)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var3755_isBlank/-29875248=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var254-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var3248-to-var862=([java.lang.Exception], java.lang.Throwable)}
; {var3504=r0, var1018=null_type, var3755=cn.hutool.core.util.StrUtil, var449=$z0, var3248=java.lang.Exception, var827=$r6, var254=java.lang.RuntimeException, var3180=$r7, var533=$r8, var3201=$r9, var257=$r10, var1463=$r11, var862=java.lang.Throwable}
; {r0=var3504, null_type=var1018, cn.hutool.core.util.StrUtil=var3755, $z0=var449, java.lang.Exception=var3248, $r6=var827, java.lang.RuntimeException=var254, $r7=var3180, $r8=var533, $r9=var3201, $r10=var257, $r11=var1463, java.lang.Throwable=var862}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r0);	if $z0 == 0 goto r12 = staticinvoke <com.efficient.common.util.AESUtils: javax.crypto.Cipher getCipher(java.lang.String,int)>("http://tanmw.top", 1);	$r6 := @caughtexception;	$r7 = new java.lang.RuntimeException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u6570\u636e\u52a0\u89e3\u5bc6\u5f02\u5e38:");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r6);	throw $r7
;block_num 2