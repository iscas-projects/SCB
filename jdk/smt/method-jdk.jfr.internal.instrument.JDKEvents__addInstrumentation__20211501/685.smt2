(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3879 0)
(declare-sort var3961 0)
(declare-sort var1187 0)
(declare-sort var2447 0)
(declare-sort var2332 0)
(declare-sort var2173 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3879-init () var3879)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var2332) String)
(declare-fun cast-from-var3961-to-var2332 (var3961) var2332)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2173_log/979489950 (var1187 var2447 String) void)
(declare-const null-var3961 var3961)
(declare-const var1187-JFR_SYSTEM var1187)
(declare-const var2447-WARN var2447)
(define-const var231 var3879 var3879-init) ; Statement: $r0 = new java.util.ArrayList 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2628 var3961) ; Statement: $r15 := @caughtexception 
(assert (not (= var2628 null-var3961)))
(define-const var3589 var1187 var1187-JFR_SYSTEM) ; Statement: $r17 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SYSTEM> 
(define-const var123 var2447 var2447-WARN) ; Statement: $r18 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel WARN> 
(define-const var3280 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3280)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3280!1 String)
(assert (= var3280!1 ""))
(assert true)
(define-const var598 String (append/672562846 var3280!1 "Could not add instrumentation for JDK events. ")) ; Statement: $r20 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not add instrumentation for JDK events. ") 
(declare-const var3280!2 String)
(assert (= var3280!2 (str.++ var3280!1 "Could not add instrumentation for JDK events. ")))
(assert true)
(define-const var2033 String (getMessage/849299655 (cast-from-var3961-to-var2332 var2628))) ; Statement: $r19 = virtualinvoke $r15.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
(define-const var789 String (append/672562846 var598 var2033)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var598!1 String)
(assert (= var598!1 (str.++ var598 var2033)))
(assert true)
(define-const var2300 String (toString/-2075883882 var789)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2173_log/979489950 var3589 var123 var2300)) ; Statement: staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r17, $r18, $r22) 

(declare-const var3589!1 var1187)
(declare-const var123!1 var2447)
(declare-const var2300!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3879-init=([], java.util.ArrayList), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3961-to-var2332=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2173_log/979489950=([jdk.jfr.internal.LogTag, jdk.jfr.internal.LogLevel, java.lang.String], void)}
; {var3879=java.util.ArrayList, var231=$r0, var3961=java.lang.Exception, var2628=$r15, var1187=jdk.jfr.internal.LogTag, var3589=$r17, var2447=jdk.jfr.internal.LogLevel, var123=$r18, var3280=$r16, var598=$r20, var2332=java.lang.Throwable, var2033=$r19, var789=$r21, var2300=$r22, var2173=jdk.jfr.internal.Logger}
; {java.util.ArrayList=var3879, $r0=var231, java.lang.Exception=var3961, $r15=var2628, jdk.jfr.internal.LogTag=var1187, $r17=var3589, jdk.jfr.internal.LogLevel=var2447, $r18=var123, $r16=var3280, $r20=var598, java.lang.Throwable=var2332, $r19=var2033, $r21=var789, $r22=var2300, jdk.jfr.internal.Logger=var2173}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = new java.util.ArrayList;	$r15 := @caughtexception;	$r17 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SYSTEM>;	$r18 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel WARN>;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not add instrumentation for JDK events. ");	$r19 = virtualinvoke $r15.<java.lang.Exception: java.lang.String getMessage()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r17, $r18, $r22);	return
;block_num 3