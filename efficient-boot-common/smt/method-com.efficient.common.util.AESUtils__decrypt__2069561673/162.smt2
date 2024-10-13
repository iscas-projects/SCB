(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3113 0)
(declare-sort var3120 0)
(declare-sort var2020 0)
(declare-sort var2205 0)
(declare-sort var817 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3120_isBlank/-29875248 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var2205-init () var2205)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1642269841 (var2205 String var817) void)
(declare-fun cast-from-var2020-to-var817 (var2020) var817)
(declare-const null-String String)
(declare-const null-var2020 var2020)
(declare-const var715 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var715 null-String)))
(define-const var1809 Bool (var3120_isBlank/-29875248 (cast-from-String-to-String var715))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto r13 = staticinvoke <com.efficient.common.util.AESUtils: javax.crypto.Cipher getCipher(java.lang.String,int)>("http://tanmw.top", 2) 
(assert (not (= (ite var1809 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var1124 var2020) ; Statement: $r7 := @caughtexception 
(assert (not (= var1124 null-var2020)))
(define-const var3185 var2205 var2205-init) ; Statement: $r8 = new java.lang.RuntimeException 
(define-const var1348 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1348)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1348!1 String)
(assert (= var1348!1 ""))
(assert true)
(define-const var3063 String (append/672562846 var1348!1 "\u6570\u636e\u52a0\u89e3\u5bc6\u5f02\u5e38:")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u6570\u636e\u52a0\u89e3\u5bc6\u5f02\u5e38:") 
(declare-const var1348!2 String)
(assert (= var1348!2 (str.++ var1348!1 "\u6570\u636e\u52a0\u89e3\u5bc6\u5f02\u5e38:")))
(assert true)
(define-const var1639 String (append/672562846 var3063 var715)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3063!1 String)
(assert (= var3063!1 (str.++ var3063 var715)))
(assert true)
(define-const var2022 String (toString/-2075883882 var1639)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1642269841 var3185 var2022 (cast-from-var2020-to-var817 var1124))) ; Statement: specialinvoke $r8.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r7) 

(declare-const var3185!1 var2205)
(declare-const var2022!1 String)
(declare-const var1124!1 var2020)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var3120_isBlank/-29875248=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var2205-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var2020-to-var817=([java.lang.Exception], java.lang.Throwable)}
; {var715=r0, var3113=null_type, var3120=cn.hutool.core.util.StrUtil, var1809=$z0, var2020=java.lang.Exception, var1124=$r7, var2205=java.lang.RuntimeException, var3185=$r8, var1348=$r9, var3063=$r10, var1639=$r11, var2022=$r12, var817=java.lang.Throwable}
; {r0=var715, null_type=var3113, cn.hutool.core.util.StrUtil=var3120, $z0=var1809, java.lang.Exception=var2020, $r7=var1124, java.lang.RuntimeException=var2205, $r8=var3185, $r9=var1348, $r10=var3063, $r11=var1639, $r12=var2022, java.lang.Throwable=var817}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r0);	if $z0 == 0 goto r13 = staticinvoke <com.efficient.common.util.AESUtils: javax.crypto.Cipher getCipher(java.lang.String,int)>("http://tanmw.top", 2);	$r7 := @caughtexception;	$r8 = new java.lang.RuntimeException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u6570\u636e\u52a0\u89e3\u5bc6\u5f02\u5e38:");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r7);	throw $r8
;block_num 2