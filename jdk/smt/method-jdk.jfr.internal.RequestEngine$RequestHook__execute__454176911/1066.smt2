(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2612 0)
(declare-sort var3708 0)
(declare-sort var1000 0)
(declare-sort var3079 0)
(declare-sort var667 0)
(declare-sort var1655 0)
(declare-sort var3834 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun type/733109763 (var2612) var667)
(declare-fun getLogName/-1622746903 (var1655) String)
(declare-fun cast-from-var667-to-var1655 (var667) var1655)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3834_log/979489950 (var1000 var3079 String) void)
(declare-const null-var2612 var2612)
(declare-const null-var3708 var3708)
(declare-const var1000-JFR_SYSTEM_EVENT var1000)
(declare-const var3079-WARN var3079)
(declare-const var1371 var2612) ; Statement: r0 := @this: jdk.jfr.internal.RequestEngine$RequestHook 
(assert (not (= var1371 null-var2612)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1251 var3708) ; Statement: $r11 := @caughtexception 
(assert (not (= var1251 null-var3708)))
(define-const var3519 var1000 var1000-JFR_SYSTEM_EVENT) ; Statement: $r13 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SYSTEM_EVENT> 
(define-const var699 var3079 var3079-WARN) ; Statement: $r14 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel WARN> 
(define-const var3663 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3663)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3663!1 String)
(assert (= var3663!1 ""))
(assert true)
(define-const var3006 String (append/672562846 var3663!1 "Exception occured during execution of period hook for ")) ; Statement: $r17 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception occured during execution of period hook for ") 
(declare-const var3663!2 String)
(assert (= var3663!2 (str.++ var3663!1 "Exception occured during execution of period hook for ")))
(define-const var2216 var667 (type/733109763 var1371)) ; Statement: $r15 = r0.<jdk.jfr.internal.RequestEngine$RequestHook: jdk.jfr.internal.PlatformEventType type> 
(assert true)
(define-const var563 String (getLogName/-1622746903 (cast-from-var667-to-var1655 var2216))) ; Statement: $r16 = virtualinvoke $r15.<jdk.jfr.internal.PlatformEventType: java.lang.String getLogName()>() 
(assert true)
(define-const var2678 String (append/672562846 var3006 var563)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var3006!1 String)
(assert (= var3006!1 (str.++ var3006 var563)))
(assert true)
(define-const var3265 String (toString/-2075883882 var2678)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3834_log/979489950 var3519 var699 var3265)) ; Statement: staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r13, $r14, $r19) 

(declare-const var3519!1 var1000)
(declare-const var699!1 var3079)
(declare-const var3265!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), type/733109763=([jdk.jfr.internal.RequestEngine$RequestHook], jdk.jfr.internal.PlatformEventType), getLogName/-1622746903=([jdk.jfr.internal.Type], java.lang.String), cast-from-var667-to-var1655=([jdk.jfr.internal.PlatformEventType], jdk.jfr.internal.Type), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3834_log/979489950=([jdk.jfr.internal.LogTag, jdk.jfr.internal.LogLevel, java.lang.String], void)}
; {var2612=jdk.jfr.internal.RequestEngine$RequestHook, var1371=r0, var3708=java.lang.Throwable, var1251=$r11, var1000=jdk.jfr.internal.LogTag, var3519=$r13, var3079=jdk.jfr.internal.LogLevel, var699=$r14, var3663=$r12, var3006=$r17, var667=jdk.jfr.internal.PlatformEventType, var2216=$r15, var1655=jdk.jfr.internal.Type, var563=$r16, var2678=$r18, var3265=$r19, var3834=jdk.jfr.internal.Logger}
; {jdk.jfr.internal.RequestEngine$RequestHook=var2612, r0=var1371, java.lang.Throwable=var3708, $r11=var1251, jdk.jfr.internal.LogTag=var1000, $r13=var3519, jdk.jfr.internal.LogLevel=var3079, $r14=var699, $r12=var3663, $r17=var3006, jdk.jfr.internal.PlatformEventType=var667, $r15=var2216, jdk.jfr.internal.Type=var1655, $r16=var563, $r18=var2678, $r19=var3265, jdk.jfr.internal.Logger=var3834}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.internal.RequestEngine$RequestHook;	$r11 := @caughtexception;	$r13 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SYSTEM_EVENT>;	$r14 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel WARN>;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception occured during execution of period hook for ");	$r15 = r0.<jdk.jfr.internal.RequestEngine$RequestHook: jdk.jfr.internal.PlatformEventType type>;	$r16 = virtualinvoke $r15.<jdk.jfr.internal.PlatformEventType: java.lang.String getLogName()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r13, $r14, $r19);	return
;block_num 3