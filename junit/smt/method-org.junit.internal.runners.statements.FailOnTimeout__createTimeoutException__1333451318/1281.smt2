(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2946 0)
(declare-sort var3566 0)
(declare-sort var2662 0)
(declare-sort var480 0)
(declare-sort var1453 0)
(declare-sort var3781 0)
(declare-sort var3676 0)
(declare-sort var3553 0)
(declare-sort var803 0)
(declare-sort var2653 0)
(declare-sort var3227 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getStackTrace/-602745475 (var3566) (Array Int var2662))
(declare-fun lookForStuckThread/-1306932564 (var2946) Bool)
(declare-fun var480-init () var480)
(declare-fun timeout/-1306932564 (var2946) Int)
(declare-fun timeUnit/-1306932564 (var2946) var1453)
(declare-fun <init>/-813297203 (var480 Int var1453) void)
(declare-fun var3781-init () var3781)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-942182377 (var3566) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-8765015 (var3781 String) void)
(declare-fun getStackTrace/-1034819919 (var2946 var3566) (Array Int var2662))
(declare-fun setStackTrace/558595491 (var3676 (Array Int var2662)) void)
(declare-fun cast-from-var3781-to-var3676 (var3781) var3676)
(declare-fun var3553-init () var3553)
(declare-fun arr-var3676-init () (Array Int var3676))
(declare-fun cast-from-var480-to-var3676 (var480) var3676)
(declare-fun var2653_asList/1779083644 ((Array Int var3227)) var803)
(declare-fun cast-from-__Array__Int__var3676__-to-__Array__Int__var3227__ ((Array Int var3676)) (Array Int var3227))
(declare-fun <init>/1090919886 (var3553 var803) void)
(declare-const null-var2946 var2946)
(declare-const null-var3566 var3566)
(declare-const null-__Array__Int__var2662__ (Array Int var2662))
(declare-const null-__Array__Int__var3676__ (Array Int var3676))
(declare-const var2374 var2946) ; Statement: r2 := @this: org.junit.internal.runners.statements.FailOnTimeout 
(assert (not (= var2374 null-var2946)))
(declare-const var1198 var3566) ; Statement: r0 := @parameter0: java.lang.Thread 
(assert (not (= var1198 null-var3566)))
(assert true)
(define-const var3474 (Array Int var2662) (getStackTrace/-602745475 var1198)) ; Statement: r1 = virtualinvoke r0.<java.lang.Thread: java.lang.StackTraceElement[] getStackTrace()>() 
(define-const var2169 Bool (lookForStuckThread/-1306932564 var2374)) ; Statement: $z0 = r2.<org.junit.internal.runners.statements.FailOnTimeout: boolean lookForStuckThread> 
 ; Statement: if $z0 == 0 goto $r16 = null 
(assert (= (ite var2169 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3022 var3566 null-var3566) ; Statement: $r16 = null 
(assert true) ; Non Conditional
(define-const var552 var3566 var3022) ; Statement: r3 = $r16 
(define-const var2830 var480 var480-init) ; Statement: $r4 = new org.junit.runners.model.TestTimedOutException 
(define-const var1865 Int (timeout/-1306932564 var2374)) ; Statement: $l0 = r2.<org.junit.internal.runners.statements.FailOnTimeout: long timeout> 
(define-const var3813 var1453 (timeUnit/-1306932564 var2374)) ; Statement: $r5 = r2.<org.junit.internal.runners.statements.FailOnTimeout: java.util.concurrent.TimeUnit timeUnit> 
(assert true)
;(assert (<init>/-813297203 var2830 var1865 var3813)) ; Statement: specialinvoke $r4.<org.junit.runners.model.TestTimedOutException: void <init>(long,java.util.concurrent.TimeUnit)>($l0, $r5) 

(declare-const var2830!1 var480)
(declare-const var1865!1 Int)
(declare-const var3813!1 var1453)
 ; Statement: if r1 == null goto (branch) 
(assert (= var3474 null-__Array__Int__var2662__)) ; Cond: r1 == null 
 ; Statement: if r3 == null goto return $r4 
(assert (not (= var552 null-var3566))) ; Negate: Cond: r3 == null  
(define-const var2856 var3781 var3781-init) ; Statement: $r6 = new java.lang.Exception 
(define-const var3660 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3660)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3660!1 String)
(assert (= var3660!1 ""))
(assert true)
(define-const var270 String (append/672562846 var3660!1 "Appears to be stuck in thread ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Appears to be stuck in thread ") 
(declare-const var3660!2 String)
(assert (= var3660!2 (str.++ var3660!1 "Appears to be stuck in thread ")))
(assert true)
(define-const var2802 String (getName/-942182377 var552)) ; Statement: $r8 = virtualinvoke r3.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var2219 String (append/672562846 var270 var2802)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var270!1 String)
(assert (= var270!1 (str.++ var270 var2802)))
(assert true)
(define-const var1459 String (toString/-2075883882 var2219)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-8765015 var2856 var1459)) ; Statement: specialinvoke $r6.<java.lang.Exception: void <init>(java.lang.String)>($r11) 

(declare-const var2856!1 var3781)
(declare-const var1459!1 String)
(assert true)
(define-const var933 (Array Int var2662) (getStackTrace/-1034819919 var2374 var552)) ; Statement: $r12 = specialinvoke r2.<org.junit.internal.runners.statements.FailOnTimeout: java.lang.StackTraceElement[] getStackTrace(java.lang.Thread)>(r3) 
(assert true)
;(assert (setStackTrace/558595491 (cast-from-var3781-to-var3676 var2856!1) var933)) ; Statement: virtualinvoke $r6.<java.lang.Exception: void setStackTrace(java.lang.StackTraceElement[])>($r12) 

(declare-const var2856!2 var3781)
(declare-const var933!1 (Array Int var2662))
(define-const var2549 var3553 var3553-init) ; Statement: $r13 = new org.junit.runners.model.MultipleFailureException 
(define-const var2955 (Array Int var3676) arr-var3676-init) ; Statement: $r14 = newarray (java.lang.Throwable)[2] 
(declare-const var2955!1 (Array Int var3676))
(assert (not (= var2955!1 null-__Array__Int__var3676__)))
(assert (= (select var2955!1 0) (cast-from-var480-to-var3676 var2830!1))) ; Statement: $r14[0] = $r4 
(declare-const var2955!2 (Array Int var3676))
(assert (not (= var2955!2 null-__Array__Int__var3676__)))
(assert (= (select var2955!2 1) (cast-from-var3781-to-var3676 var2856!2))) ; Statement: $r14[1] = $r6 
(define-const var3603 var803 (var2653_asList/1779083644 (cast-from-__Array__Int__var3676__-to-__Array__Int__var3227__ var2955!2))) ; Statement: $r15 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>($r14) 
(assert true)
;(assert (<init>/1090919886 var2549 var3603)) ; Statement: specialinvoke $r13.<org.junit.runners.model.MultipleFailureException: void <init>(java.util.List)>($r15) 

(declare-const var2549!1 var3553)
(declare-const var3603!1 var803)
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {getStackTrace/-602745475=([java.lang.Thread], java.lang.StackTraceElement[]), lookForStuckThread/-1306932564=([org.junit.internal.runners.statements.FailOnTimeout], boolean), var480-init=([], org.junit.runners.model.TestTimedOutException), timeout/-1306932564=([org.junit.internal.runners.statements.FailOnTimeout], long), timeUnit/-1306932564=([org.junit.internal.runners.statements.FailOnTimeout], java.util.concurrent.TimeUnit), <init>/-813297203=([org.junit.runners.model.TestTimedOutException, long, java.util.concurrent.TimeUnit], void), var3781-init=([], java.lang.Exception), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-942182377=([java.lang.Thread], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-8765015=([java.lang.Exception, java.lang.String], void), getStackTrace/-1034819919=([org.junit.internal.runners.statements.FailOnTimeout, java.lang.Thread], java.lang.StackTraceElement[]), setStackTrace/558595491=([java.lang.Throwable, java.lang.StackTraceElement[]], void), cast-from-var3781-to-var3676=([java.lang.Exception], java.lang.Throwable), var3553-init=([], org.junit.runners.model.MultipleFailureException), arr-var3676-init=([], java.lang.Throwable[]), cast-from-var480-to-var3676=([org.junit.runners.model.TestTimedOutException], java.lang.Throwable), var2653_asList/1779083644=([java.lang.Object[]], java.util.List), cast-from-__Array__Int__var3676__-to-__Array__Int__var3227__=([java.lang.Throwable[]], java.lang.Object[]), <init>/1090919886=([org.junit.runners.model.MultipleFailureException, java.util.List], void)}
; {var2946=org.junit.internal.runners.statements.FailOnTimeout, var2374=r2, var3566=java.lang.Thread, var1198=r0, var2662=java.lang.StackTraceElement, var3474=r1, var2169=$z0, var3022=$r16, var552=r3, var480=org.junit.runners.model.TestTimedOutException, var2830=$r4, var1865=$l0, var1453=java.util.concurrent.TimeUnit, var3813=$r5, var3781=java.lang.Exception, var2856=$r6, var3660=$r7, var270=$r9, var2802=$r8, var2219=$r10, var1459=$r11, var933=$r12, var3676=java.lang.Throwable, var3553=org.junit.runners.model.MultipleFailureException, var2549=$r13, var2955=$r14, var803=java.util.List, var2653=java.util.Arrays, var3227=java.lang.Object, var3603=$r15}
; {org.junit.internal.runners.statements.FailOnTimeout=var2946, r2=var2374, java.lang.Thread=var3566, r0=var1198, java.lang.StackTraceElement=var2662, r1=var3474, $z0=var2169, $r16=var3022, r3=var552, org.junit.runners.model.TestTimedOutException=var480, $r4=var2830, $l0=var1865, java.util.concurrent.TimeUnit=var1453, $r5=var3813, java.lang.Exception=var3781, $r6=var2856, $r7=var3660, $r9=var270, $r8=var2802, $r10=var2219, $r11=var1459, $r12=var933, java.lang.Throwable=var3676, org.junit.runners.model.MultipleFailureException=var3553, $r13=var2549, $r14=var2955, java.util.List=var803, java.util.Arrays=var2653, java.lang.Object=var3227, $r15=var3603}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.junit.internal.runners.statements.FailOnTimeout;	r0 := @parameter0: java.lang.Thread;	r1 = virtualinvoke r0.<java.lang.Thread: java.lang.StackTraceElement[] getStackTrace()>();	$z0 = r2.<org.junit.internal.runners.statements.FailOnTimeout: boolean lookForStuckThread>;	if $z0 == 0 goto $r16 = null;	$r16 = null;	r3 = $r16;	$r4 = new org.junit.runners.model.TestTimedOutException;	$l0 = r2.<org.junit.internal.runners.statements.FailOnTimeout: long timeout>;	$r5 = r2.<org.junit.internal.runners.statements.FailOnTimeout: java.util.concurrent.TimeUnit timeUnit>;	specialinvoke $r4.<org.junit.runners.model.TestTimedOutException: void <init>(long,java.util.concurrent.TimeUnit)>($l0, $r5);	if r1 == null goto (branch);	if r3 == null goto return $r4;	$r6 = new java.lang.Exception;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Appears to be stuck in thread ");	$r8 = virtualinvoke r3.<java.lang.Thread: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.Exception: void <init>(java.lang.String)>($r11);	$r12 = specialinvoke r2.<org.junit.internal.runners.statements.FailOnTimeout: java.lang.StackTraceElement[] getStackTrace(java.lang.Thread)>(r3);	virtualinvoke $r6.<java.lang.Exception: void setStackTrace(java.lang.StackTraceElement[])>($r12);	$r13 = new org.junit.runners.model.MultipleFailureException;	$r14 = newarray (java.lang.Throwable)[2];	$r14[0] = $r4;	$r14[1] = $r6;	$r15 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>($r14);	specialinvoke $r13.<org.junit.runners.model.MultipleFailureException: void <init>(java.util.List)>($r15);	return $r13
;block_num 5