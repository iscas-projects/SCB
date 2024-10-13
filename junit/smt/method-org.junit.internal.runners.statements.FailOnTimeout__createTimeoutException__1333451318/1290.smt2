(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2542 0)
(declare-sort var1847 0)
(declare-sort var479 0)
(declare-sort var410 0)
(declare-sort var2151 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getStackTrace/-602745475 (var1847) (Array Int var479))
(declare-fun lookForStuckThread/-1306932564 (var2542) Bool)
(declare-fun var410-init () var410)
(declare-fun timeout/-1306932564 (var2542) Int)
(declare-fun timeUnit/-1306932564 (var2542) var2151)
(declare-fun <init>/-813297203 (var410 Int var2151) void)
(declare-const null-var2542 var2542)
(declare-const null-var1847 var1847)
(declare-const null-__Array__Int__var479__ (Array Int var479))
(declare-const var12 var2542) ; Statement: r2 := @this: org.junit.internal.runners.statements.FailOnTimeout 
(assert (not (= var12 null-var2542)))
(declare-const var1993 var1847) ; Statement: r0 := @parameter0: java.lang.Thread 
(assert (not (= var1993 null-var1847)))
(assert true)
(define-const var746 (Array Int var479) (getStackTrace/-602745475 var1993)) ; Statement: r1 = virtualinvoke r0.<java.lang.Thread: java.lang.StackTraceElement[] getStackTrace()>() 
(define-const var3789 Bool (lookForStuckThread/-1306932564 var12)) ; Statement: $z0 = r2.<org.junit.internal.runners.statements.FailOnTimeout: boolean lookForStuckThread> 
 ; Statement: if $z0 == 0 goto $r16 = null 
(assert (= (ite var3789 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1109 var1847 null-var1847) ; Statement: $r16 = null 
(assert true) ; Non Conditional
(define-const var3718 var1847 var1109) ; Statement: r3 = $r16 
(define-const var3095 var410 var410-init) ; Statement: $r4 = new org.junit.runners.model.TestTimedOutException 
(define-const var3958 Int (timeout/-1306932564 var12)) ; Statement: $l0 = r2.<org.junit.internal.runners.statements.FailOnTimeout: long timeout> 
(define-const var19 var2151 (timeUnit/-1306932564 var12)) ; Statement: $r5 = r2.<org.junit.internal.runners.statements.FailOnTimeout: java.util.concurrent.TimeUnit timeUnit> 
(assert true)
;(assert (<init>/-813297203 var3095 var3958 var19)) ; Statement: specialinvoke $r4.<org.junit.runners.model.TestTimedOutException: void <init>(long,java.util.concurrent.TimeUnit)>($l0, $r5) 

(declare-const var3095!1 var410)
(declare-const var3958!1 Int)
(declare-const var19!1 var2151)
 ; Statement: if r1 == null goto (branch) 
(assert (= var746 null-__Array__Int__var479__)) ; Cond: r1 == null 
 ; Statement: if r3 == null goto return $r4 
(assert (= var3718 null-var1847)) ; Cond: r3 == null 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getStackTrace/-602745475=([java.lang.Thread], java.lang.StackTraceElement[]), lookForStuckThread/-1306932564=([org.junit.internal.runners.statements.FailOnTimeout], boolean), var410-init=([], org.junit.runners.model.TestTimedOutException), timeout/-1306932564=([org.junit.internal.runners.statements.FailOnTimeout], long), timeUnit/-1306932564=([org.junit.internal.runners.statements.FailOnTimeout], java.util.concurrent.TimeUnit), <init>/-813297203=([org.junit.runners.model.TestTimedOutException, long, java.util.concurrent.TimeUnit], void)}
; {var2542=org.junit.internal.runners.statements.FailOnTimeout, var12=r2, var1847=java.lang.Thread, var1993=r0, var479=java.lang.StackTraceElement, var746=r1, var3789=$z0, var1109=$r16, var3718=r3, var410=org.junit.runners.model.TestTimedOutException, var3095=$r4, var3958=$l0, var2151=java.util.concurrent.TimeUnit, var19=$r5}
; {org.junit.internal.runners.statements.FailOnTimeout=var2542, r2=var12, java.lang.Thread=var1847, r0=var1993, java.lang.StackTraceElement=var479, r1=var746, $z0=var3789, $r16=var1109, r3=var3718, org.junit.runners.model.TestTimedOutException=var410, $r4=var3095, $l0=var3958, java.util.concurrent.TimeUnit=var2151, $r5=var19}
;seq 
;cnt {}
;stmts r2 := @this: org.junit.internal.runners.statements.FailOnTimeout;	r0 := @parameter0: java.lang.Thread;	r1 = virtualinvoke r0.<java.lang.Thread: java.lang.StackTraceElement[] getStackTrace()>();	$z0 = r2.<org.junit.internal.runners.statements.FailOnTimeout: boolean lookForStuckThread>;	if $z0 == 0 goto $r16 = null;	$r16 = null;	r3 = $r16;	$r4 = new org.junit.runners.model.TestTimedOutException;	$l0 = r2.<org.junit.internal.runners.statements.FailOnTimeout: long timeout>;	$r5 = r2.<org.junit.internal.runners.statements.FailOnTimeout: java.util.concurrent.TimeUnit timeUnit>;	specialinvoke $r4.<org.junit.runners.model.TestTimedOutException: void <init>(long,java.util.concurrent.TimeUnit)>($l0, $r5);	if r1 == null goto (branch);	if r3 == null goto return $r4;	return $r4
;block_num 5