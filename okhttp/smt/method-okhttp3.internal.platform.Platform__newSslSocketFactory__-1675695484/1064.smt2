(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2554 0)
(declare-sort var560 0)
(declare-sort var2470 0)
(declare-sort var3106 0)
(declare-sort var3634 0)
(declare-sort var1982 0)
(declare-sort var849 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2470_checkNotNullParameter/-2060636419 (var3106 String) void)
(declare-fun cast-from-var560-to-var3106 (var560) var3106)
(declare-fun var1982-init () var1982)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3106) String)
(declare-fun cast-from-var3634-to-var3106 (var3634) var3106)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-var3634-to-var849 (var3634) var849)
(declare-fun <init>/42819552 (var1982 String var849) void)
(declare-const null-var2554 var2554)
(declare-const null-var560 var560)
(declare-const null-var3634 var3634)
(declare-const var1765 var2554) ; Statement: r1 := @this: okhttp3.internal.platform.Platform 
(assert (not (= var1765 null-var2554)))
(declare-const var1420 var560) ; Statement: r0 := @parameter0: javax.net.ssl.X509TrustManager 
(assert (not (= var1420 null-var560)))
;(assert (var2470_checkNotNullParameter/-2060636419 (cast-from-var560-to-var3106 var1420) "trustManager")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "trustManager") 

(declare-const var1420!1 var560)
(declare-const var264 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var789 var3634) ; Statement: $r5 := @caughtexception 
(assert (not (= var789 null-var3634)))
(define-const var878 var1982 var1982-init) ; Statement: $r6 = new java.lang.AssertionError 
(define-const var459 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var459)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var459!1 String)
(assert (= var459!1 ""))
(assert true)
(define-const var1548 String (append/672562846 var459!1 "No System TLS: ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No System TLS: ") 
(declare-const var459!2 String)
(assert (= var459!2 (str.++ var459!1 "No System TLS: ")))
(assert true)
(define-const var2120 String (append/-1031950772 var1548 (cast-from-var3634-to-var3106 var789))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var1548!1 String)
(assert (str.prefixof var1548 var1548!1))
(assert true)
(define-const var3936 String (toString/-2075883882 var2120)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3195 var849 (cast-from-var3634-to-var849 var789)) ; Statement: $r10 = (java.lang.Throwable) $r5 
(assert true)
;(assert (<init>/42819552 var878 var3936 var3195)) ; Statement: specialinvoke $r6.<java.lang.AssertionError: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r10) 

(declare-const var878!1 var1982)
(declare-const var3936!1 String)
(declare-const var3195!1 var849)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var2470_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var560-to-var3106=([javax.net.ssl.X509TrustManager], java.lang.Object), var1982-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3634-to-var3106=([java.security.GeneralSecurityException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-var3634-to-var849=([java.security.GeneralSecurityException], java.lang.Throwable), <init>/42819552=([java.lang.AssertionError, java.lang.String, java.lang.Throwable], void)}
; {var2554=okhttp3.internal.platform.Platform, var1765=r1, var560=javax.net.ssl.X509TrustManager, var1420=r0, var2470=kotlin.jvm.internal.Intrinsics, var3106=java.lang.Object, var264="trustManager", var3634=java.security.GeneralSecurityException, var789=$r5, var1982=java.lang.AssertionError, var878=$r6, var459=$r7, var1548=$r8, var2120=$r9, var3936=$r11, var849=java.lang.Throwable, var3195=$r10}
; {okhttp3.internal.platform.Platform=var2554, r1=var1765, javax.net.ssl.X509TrustManager=var560, r0=var1420, kotlin.jvm.internal.Intrinsics=var2470, java.lang.Object=var3106, "trustManager"=var264, java.security.GeneralSecurityException=var3634, $r5=var789, java.lang.AssertionError=var1982, $r6=var878, $r7=var459, $r8=var1548, $r9=var2120, $r11=var3936, java.lang.Throwable=var849, $r10=var3195}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.platform.Platform;	r0 := @parameter0: javax.net.ssl.X509TrustManager;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "trustManager");	$r5 := @caughtexception;	$r6 = new java.lang.AssertionError;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No System TLS: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = (java.lang.Throwable) $r5;	specialinvoke $r6.<java.lang.AssertionError: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r10);	throw $r6
;block_num 2