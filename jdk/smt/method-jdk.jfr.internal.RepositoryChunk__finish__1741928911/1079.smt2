(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1752 0)
(declare-sort var791 0)
(declare-sort var1751 0)
(declare-sort var695 0)
(declare-sort var470 0)
(declare-sort var3544 0)
(declare-sort var3362 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var3544) String)
(declare-fun cast-from-var1751-to-var3544 (var1751) var3544)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3362_log/979489950 (var695 var470 String) void)
(declare-const null-var1752 var1752)
(declare-const null-var791 var791)
(declare-const null-var1751 var1751)
(declare-const var695-JFR var695)
(declare-const var470-ERROR var470)
(declare-const var359 var1752) ; Statement: r0 := @this: jdk.jfr.internal.RepositoryChunk 
(assert (not (= var359 null-var1752)))
(declare-const var2524 var791) ; Statement: r1 := @parameter0: java.time.Instant 
(assert (not (= var2524 null-var791)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3214 var1751) ; Statement: $r2 := @caughtexception 
(assert (not (= var3214 null-var1751)))
(define-const var3084 var695 var695-JFR) ; Statement: $r4 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR> 
(define-const var704 var470 var470-ERROR) ; Statement: $r5 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel ERROR> 
(define-const var3414 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3414)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3414!1 String)
(assert (= var3414!1 ""))
(assert true)
(define-const var3360 String (append/672562846 var3414!1 "Could not finish chunk. ")) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not finish chunk. ") 
(declare-const var3414!2 String)
(assert (= var3414!2 (str.++ var3414!1 "Could not finish chunk. ")))
(assert true)
(define-const var2956 String (getMessage/849299655 (cast-from-var1751-to-var3544 var3214))) ; Statement: $r6 = virtualinvoke $r2.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var3035 String (append/672562846 var3360 var2956)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3360!1 String)
(assert (= var3360!1 (str.++ var3360 var2956)))
(assert true)
(define-const var96 String (toString/-2075883882 var3035)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3362_log/979489950 var3084 var704 var96)) ; Statement: staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r4, $r5, $r9) 

(declare-const var3084!1 var695)
(declare-const var704!1 var470)
(declare-const var96!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1751-to-var3544=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3362_log/979489950=([jdk.jfr.internal.LogTag, jdk.jfr.internal.LogLevel, java.lang.String], void)}
; {var1752=jdk.jfr.internal.RepositoryChunk, var359=r0, var791=java.time.Instant, var2524=r1, var1751=java.io.IOException, var3214=$r2, var695=jdk.jfr.internal.LogTag, var3084=$r4, var470=jdk.jfr.internal.LogLevel, var704=$r5, var3414=$r3, var3360=$r7, var3544=java.lang.Throwable, var2956=$r6, var3035=$r8, var96=$r9, var3362=jdk.jfr.internal.Logger}
; {jdk.jfr.internal.RepositoryChunk=var1752, r0=var359, java.time.Instant=var791, r1=var2524, java.io.IOException=var1751, $r2=var3214, jdk.jfr.internal.LogTag=var695, $r4=var3084, jdk.jfr.internal.LogLevel=var470, $r5=var704, $r3=var3414, $r7=var3360, java.lang.Throwable=var3544, $r6=var2956, $r8=var3035, $r9=var96, jdk.jfr.internal.Logger=var3362}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.internal.RepositoryChunk;	r1 := @parameter0: java.time.Instant;	$r2 := @caughtexception;	$r4 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR>;	$r5 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel ERROR>;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not finish chunk. ");	$r6 = virtualinvoke $r2.<java.io.IOException: java.lang.String getMessage()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r4, $r5, $r9);	return
;block_num 3