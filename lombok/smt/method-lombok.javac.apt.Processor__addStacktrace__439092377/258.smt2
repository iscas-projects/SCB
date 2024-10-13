(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3916 0)
(declare-sort var2551 0)
(declare-sort var2206 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2551_currentThread/-1037784612 () var2551)
(declare-fun getStackTrace/-602745475 (var2551) (Array Int var2206))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3916 var3916)
(declare-const null-String String)
(declare-const null-__Array__Int__var2206__ (Array Int var2206))
(declare-const var562 var3916) ; Statement: r7 := @this: lombok.javac.apt.Processor 
(assert (not (= var562 null-var3916)))
(declare-const var509 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var509 null-String)))
(define-const var1308 var2551 var2551_currentThread/-1037784612) ; Statement: $r0 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var362 (Array Int var2206) (getStackTrace/-602745475 var1308)) ; Statement: r1 = virtualinvoke $r0.<java.lang.Thread: java.lang.StackTraceElement[] getStackTrace()>() 
 ; Statement: if r1 == null goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No stacktrace available\n") 
(assert (= var362 null-__Array__Int__var2206__)) ; Cond: r1 == null 
(assert true)
;(assert (append/672562846 var509 "No stacktrace available\n")) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No stacktrace available\n") 
(declare-const var509!1 String)
(assert (= var509!1 (str.++ var509 "No stacktrace available\n")))
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var509!1 "\n")) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var509!2 String)
(assert (= var509!2 (str.++ var509!1 "\n")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2551_currentThread/-1037784612=([], java.lang.Thread), getStackTrace/-602745475=([java.lang.Thread], java.lang.StackTraceElement[]), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3916=lombok.javac.apt.Processor, var562=r7, var509=r2, var2551=java.lang.Thread, var1308=$r0, var2206=java.lang.StackTraceElement, var362=r1}
; {lombok.javac.apt.Processor=var3916, r7=var562, r2=var509, java.lang.Thread=var2551, $r0=var1308, java.lang.StackTraceElement=var2206, r1=var362}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r7 := @this: lombok.javac.apt.Processor;	r2 := @parameter0: java.lang.StringBuilder;	$r0 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	r1 = virtualinvoke $r0.<java.lang.Thread: java.lang.StackTraceElement[] getStackTrace()>();	if r1 == null goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No stacktrace available\n");	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No stacktrace available\n");	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	return
;block_num 3