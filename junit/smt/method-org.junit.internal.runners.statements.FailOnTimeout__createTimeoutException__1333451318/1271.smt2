(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var879 0)
(declare-sort var3682 0)
(declare-sort var301 0)
(declare-sort var625 0)
(declare-sort var1058 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getStackTrace/-602745475 (var3682) (Array Int var301))
(declare-fun lookForStuckThread/-1306932564 (var879) Bool)
(declare-fun getStuckThread/-1863794689 (var879 var3682) var3682)
(declare-fun var625-init () var625)
(declare-fun timeout/-1306932564 (var879) Int)
(declare-fun timeUnit/-1306932564 (var879) var1058)
(declare-fun <init>/-813297203 (var625 Int var1058) void)
(declare-const null-var879 var879)
(declare-const null-var3682 var3682)
(declare-const null-__Array__Int__var301__ (Array Int var301))
(declare-const var2184 var879) ; Statement: r2 := @this: org.junit.internal.runners.statements.FailOnTimeout 
(assert (not (= var2184 null-var879)))
(declare-const var1090 var3682) ; Statement: r0 := @parameter0: java.lang.Thread 
(assert (not (= var1090 null-var3682)))
(assert true)
(define-const var3539 (Array Int var301) (getStackTrace/-602745475 var1090)) ; Statement: r1 = virtualinvoke r0.<java.lang.Thread: java.lang.StackTraceElement[] getStackTrace()>() 
(define-const var2970 Bool (lookForStuckThread/-1306932564 var2184)) ; Statement: $z0 = r2.<org.junit.internal.runners.statements.FailOnTimeout: boolean lookForStuckThread> 
 ; Statement: if $z0 == 0 goto $r16 = null 
(assert (not (= (ite var2970 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2594 var3682 (getStuckThread/-1863794689 var2184 var1090)) ; Statement: $r16 = specialinvoke r2.<org.junit.internal.runners.statements.FailOnTimeout: java.lang.Thread getStuckThread(java.lang.Thread)>(r0) 
 ; Statement: goto [?= r3 = $r16] 
(assert true) ; Non Conditional
(define-const var2336 var3682 var2594) ; Statement: r3 = $r16 
(define-const var2024 var625 var625-init) ; Statement: $r4 = new org.junit.runners.model.TestTimedOutException 
(define-const var3603 Int (timeout/-1306932564 var2184)) ; Statement: $l0 = r2.<org.junit.internal.runners.statements.FailOnTimeout: long timeout> 
(define-const var1946 var1058 (timeUnit/-1306932564 var2184)) ; Statement: $r5 = r2.<org.junit.internal.runners.statements.FailOnTimeout: java.util.concurrent.TimeUnit timeUnit> 
(assert true)
;(assert (<init>/-813297203 var2024 var3603 var1946)) ; Statement: specialinvoke $r4.<org.junit.runners.model.TestTimedOutException: void <init>(long,java.util.concurrent.TimeUnit)>($l0, $r5) 

(declare-const var2024!1 var625)
(declare-const var3603!1 Int)
(declare-const var1946!1 var1058)
 ; Statement: if r1 == null goto (branch) 
(assert (= var3539 null-__Array__Int__var301__)) ; Cond: r1 == null 
 ; Statement: if r3 == null goto return $r4 
(assert (= var2336 null-var3682)) ; Cond: r3 == null 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getStackTrace/-602745475=([java.lang.Thread], java.lang.StackTraceElement[]), lookForStuckThread/-1306932564=([org.junit.internal.runners.statements.FailOnTimeout], boolean), getStuckThread/-1863794689=([org.junit.internal.runners.statements.FailOnTimeout, java.lang.Thread], java.lang.Thread), var625-init=([], org.junit.runners.model.TestTimedOutException), timeout/-1306932564=([org.junit.internal.runners.statements.FailOnTimeout], long), timeUnit/-1306932564=([org.junit.internal.runners.statements.FailOnTimeout], java.util.concurrent.TimeUnit), <init>/-813297203=([org.junit.runners.model.TestTimedOutException, long, java.util.concurrent.TimeUnit], void)}
; {var879=org.junit.internal.runners.statements.FailOnTimeout, var2184=r2, var3682=java.lang.Thread, var1090=r0, var301=java.lang.StackTraceElement, var3539=r1, var2970=$z0, var2594=$r16, var2336=r3, var625=org.junit.runners.model.TestTimedOutException, var2024=$r4, var3603=$l0, var1058=java.util.concurrent.TimeUnit, var1946=$r5}
; {org.junit.internal.runners.statements.FailOnTimeout=var879, r2=var2184, java.lang.Thread=var3682, r0=var1090, java.lang.StackTraceElement=var301, r1=var3539, $z0=var2970, $r16=var2594, r3=var2336, org.junit.runners.model.TestTimedOutException=var625, $r4=var2024, $l0=var3603, java.util.concurrent.TimeUnit=var1058, $r5=var1946}
;seq 
;cnt {}
;stmts r2 := @this: org.junit.internal.runners.statements.FailOnTimeout;	r0 := @parameter0: java.lang.Thread;	r1 = virtualinvoke r0.<java.lang.Thread: java.lang.StackTraceElement[] getStackTrace()>();	$z0 = r2.<org.junit.internal.runners.statements.FailOnTimeout: boolean lookForStuckThread>;	if $z0 == 0 goto $r16 = null;	$r16 = specialinvoke r2.<org.junit.internal.runners.statements.FailOnTimeout: java.lang.Thread getStuckThread(java.lang.Thread)>(r0);	goto [?= r3 = $r16];	r3 = $r16;	$r4 = new org.junit.runners.model.TestTimedOutException;	$l0 = r2.<org.junit.internal.runners.statements.FailOnTimeout: long timeout>;	$r5 = r2.<org.junit.internal.runners.statements.FailOnTimeout: java.util.concurrent.TimeUnit timeUnit>;	specialinvoke $r4.<org.junit.runners.model.TestTimedOutException: void <init>(long,java.util.concurrent.TimeUnit)>($l0, $r5);	if r1 == null goto (branch);	if r3 == null goto return $r4;	return $r4
;block_num 5