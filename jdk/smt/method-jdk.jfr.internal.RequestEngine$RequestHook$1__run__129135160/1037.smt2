(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3186 0)
(declare-sort var381 0)
(declare-sort var3607 0)
(declare-sort var3212 0)
(declare-sort var484 0)
(declare-sort var3404 0)
(declare-sort var818 0)
(declare-sort var1222 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun this$0/143846864 (var3186) var484)
(declare-fun var484_access$200/421135032 (var484) var3404)
(declare-fun getLogName/-1622746903 (var818) String)
(declare-fun cast-from-var3404-to-var818 (var3404) var818)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1222_log/979489950 (var3607 var3212 String) void)
(declare-const null-var3186 var3186)
(declare-const null-var381 var381)
(declare-const var3607-JFR_EVENT var3607)
(declare-const var3212-WARN var3212)
(declare-const var3117 var3186) ; Statement: r0 := @this: jdk.jfr.internal.RequestEngine$RequestHook$1 
(assert (not (= var3117 null-var3186)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var551 var381) ; Statement: $r8 := @caughtexception 
(assert (not (= var551 null-var381)))
(define-const var3150 var3607 var3607-JFR_EVENT) ; Statement: $r10 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_EVENT> 
(define-const var1291 var3212 var3212-WARN) ; Statement: $r11 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel WARN> 
(define-const var180 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var180)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var180!1 String)
(assert (= var180!1 ""))
(assert true)
(define-const var1304 String (append/672562846 var180!1 "Exception occured during execution of period hook for ")) ; Statement: $r15 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception occured during execution of period hook for ") 
(declare-const var180!2 String)
(assert (= var180!2 (str.++ var180!1 "Exception occured during execution of period hook for ")))
(define-const var909 var484 (this$0/143846864 var3117)) ; Statement: $r12 = r0.<jdk.jfr.internal.RequestEngine$RequestHook$1: jdk.jfr.internal.RequestEngine$RequestHook this$0> 
(define-const var3236 var3404 (var484_access$200/421135032 var909)) ; Statement: $r13 = staticinvoke <jdk.jfr.internal.RequestEngine$RequestHook: jdk.jfr.internal.PlatformEventType access$200(jdk.jfr.internal.RequestEngine$RequestHook)>($r12) 
(assert true)
(define-const var1402 String (getLogName/-1622746903 (cast-from-var3404-to-var818 var3236))) ; Statement: $r14 = virtualinvoke $r13.<jdk.jfr.internal.PlatformEventType: java.lang.String getLogName()>() 
(assert true)
(define-const var147 String (append/672562846 var1304 var1402)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var1304!1 String)
(assert (= var1304!1 (str.++ var1304 var1402)))
(assert true)
(define-const var2999 String (toString/-2075883882 var147)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1222_log/979489950 var3150 var1291 var2999)) ; Statement: staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r10, $r11, $r17) 

(declare-const var3150!1 var3607)
(declare-const var1291!1 var3212)
(declare-const var2999!1 String)
(assert true) ; Non Conditional
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), this$0/143846864=([jdk.jfr.internal.RequestEngine$RequestHook$1], jdk.jfr.internal.RequestEngine$RequestHook), var484_access$200/421135032=([jdk.jfr.internal.RequestEngine$RequestHook], jdk.jfr.internal.PlatformEventType), getLogName/-1622746903=([jdk.jfr.internal.Type], java.lang.String), cast-from-var3404-to-var818=([jdk.jfr.internal.PlatformEventType], jdk.jfr.internal.Type), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1222_log/979489950=([jdk.jfr.internal.LogTag, jdk.jfr.internal.LogLevel, java.lang.String], void)}
; {var3186=jdk.jfr.internal.RequestEngine$RequestHook$1, var3117=r0, var381=java.lang.Throwable, var551=$r8, var3607=jdk.jfr.internal.LogTag, var3150=$r10, var3212=jdk.jfr.internal.LogLevel, var1291=$r11, var180=$r9, var1304=$r15, var484=jdk.jfr.internal.RequestEngine$RequestHook, var909=$r12, var3404=jdk.jfr.internal.PlatformEventType, var3236=$r13, var818=jdk.jfr.internal.Type, var1402=$r14, var147=$r16, var2999=$r17, var1222=jdk.jfr.internal.Logger}
; {jdk.jfr.internal.RequestEngine$RequestHook$1=var3186, r0=var3117, java.lang.Throwable=var381, $r8=var551, jdk.jfr.internal.LogTag=var3607, $r10=var3150, jdk.jfr.internal.LogLevel=var3212, $r11=var1291, $r9=var180, $r15=var1304, jdk.jfr.internal.RequestEngine$RequestHook=var484, $r12=var909, jdk.jfr.internal.PlatformEventType=var3404, $r13=var3236, jdk.jfr.internal.Type=var818, $r14=var1402, $r16=var147, $r17=var2999, jdk.jfr.internal.Logger=var1222}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.internal.RequestEngine$RequestHook$1;	$r8 := @caughtexception;	$r10 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_EVENT>;	$r11 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel WARN>;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception occured during execution of period hook for ");	$r12 = r0.<jdk.jfr.internal.RequestEngine$RequestHook$1: jdk.jfr.internal.RequestEngine$RequestHook this$0>;	$r13 = staticinvoke <jdk.jfr.internal.RequestEngine$RequestHook: jdk.jfr.internal.PlatformEventType access$200(jdk.jfr.internal.RequestEngine$RequestHook)>($r12);	$r14 = virtualinvoke $r13.<jdk.jfr.internal.PlatformEventType: java.lang.String getLogName()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r10, $r11, $r17);	return null
;block_num 3