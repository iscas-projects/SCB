(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var316 0)
(declare-sort var2777 0)
(declare-sort var1437 0)
(declare-sort var1986 0)
(declare-sort var3646 0)
(declare-sort var3068 0)
(declare-sort var248 0)
(declare-sort var2235 0)
(declare-sort var1351 0)
(declare-sort var2783 0)
(declare-sort var709 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getStackTrace/-602745475 (var2777) (Array Int var1437))
(declare-fun lookForStuckThread/-1306932564 (var316) Bool)
(declare-fun getStuckThread/-1863794689 (var316 var2777) var2777)
(declare-fun var1986-init () var1986)
(declare-fun timeout/-1306932564 (var316) Int)
(declare-fun timeUnit/-1306932564 (var316) var3646)
(declare-fun <init>/-813297203 (var1986 Int var3646) void)
(declare-fun var3068-init () var3068)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-942182377 (var2777) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-8765015 (var3068 String) void)
(declare-fun getStackTrace/-1034819919 (var316 var2777) (Array Int var1437))
(declare-fun setStackTrace/558595491 (var248 (Array Int var1437)) void)
(declare-fun cast-from-var3068-to-var248 (var3068) var248)
(declare-fun var2235-init () var2235)
(declare-fun arr-var248-init () (Array Int var248))
(declare-fun cast-from-var1986-to-var248 (var1986) var248)
(declare-fun var2783_asList/1779083644 ((Array Int var709)) var1351)
(declare-fun cast-from-__Array__Int__var248__-to-__Array__Int__var709__ ((Array Int var248)) (Array Int var709))
(declare-fun <init>/1090919886 (var2235 var1351) void)
(declare-const null-var316 var316)
(declare-const null-var2777 var2777)
(declare-const null-__Array__Int__var1437__ (Array Int var1437))
(declare-const null-__Array__Int__var248__ (Array Int var248))
(declare-const var2487 var316) ; Statement: r2 := @this: org.junit.internal.runners.statements.FailOnTimeout 
(assert (not (= var2487 null-var316)))
(declare-const var3556 var2777) ; Statement: r0 := @parameter0: java.lang.Thread 
(assert (not (= var3556 null-var2777)))
(assert true)
(define-const var2735 (Array Int var1437) (getStackTrace/-602745475 var3556)) ; Statement: r1 = virtualinvoke r0.<java.lang.Thread: java.lang.StackTraceElement[] getStackTrace()>() 
(define-const var86 Bool (lookForStuckThread/-1306932564 var2487)) ; Statement: $z0 = r2.<org.junit.internal.runners.statements.FailOnTimeout: boolean lookForStuckThread> 
 ; Statement: if $z0 == 0 goto $r16 = null 
(assert (not (= (ite var86 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3287 var2777 (getStuckThread/-1863794689 var2487 var3556)) ; Statement: $r16 = specialinvoke r2.<org.junit.internal.runners.statements.FailOnTimeout: java.lang.Thread getStuckThread(java.lang.Thread)>(r0) 
 ; Statement: goto [?= r3 = $r16] 
(assert true) ; Non Conditional
(define-const var1001 var2777 var3287) ; Statement: r3 = $r16 
(define-const var2021 var1986 var1986-init) ; Statement: $r4 = new org.junit.runners.model.TestTimedOutException 
(define-const var2621 Int (timeout/-1306932564 var2487)) ; Statement: $l0 = r2.<org.junit.internal.runners.statements.FailOnTimeout: long timeout> 
(define-const var2816 var3646 (timeUnit/-1306932564 var2487)) ; Statement: $r5 = r2.<org.junit.internal.runners.statements.FailOnTimeout: java.util.concurrent.TimeUnit timeUnit> 
(assert true)
;(assert (<init>/-813297203 var2021 var2621 var2816)) ; Statement: specialinvoke $r4.<org.junit.runners.model.TestTimedOutException: void <init>(long,java.util.concurrent.TimeUnit)>($l0, $r5) 

(declare-const var2021!1 var1986)
(declare-const var2621!1 Int)
(declare-const var2816!1 var3646)
 ; Statement: if r1 == null goto (branch) 
(assert (= var2735 null-__Array__Int__var1437__)) ; Cond: r1 == null 
 ; Statement: if r3 == null goto return $r4 
(assert (not (= var1001 null-var2777))) ; Negate: Cond: r3 == null  
(define-const var3754 var3068 var3068-init) ; Statement: $r6 = new java.lang.Exception 
(define-const var3339 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3339)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3339!1 String)
(assert (= var3339!1 ""))
(assert true)
(define-const var2154 String (append/672562846 var3339!1 "Appears to be stuck in thread ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Appears to be stuck in thread ") 
(declare-const var3339!2 String)
(assert (= var3339!2 (str.++ var3339!1 "Appears to be stuck in thread ")))
(assert true)
(define-const var1072 String (getName/-942182377 var1001)) ; Statement: $r8 = virtualinvoke r3.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var1933 String (append/672562846 var2154 var1072)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2154!1 String)
(assert (= var2154!1 (str.++ var2154 var1072)))
(assert true)
(define-const var1159 String (toString/-2075883882 var1933)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-8765015 var3754 var1159)) ; Statement: specialinvoke $r6.<java.lang.Exception: void <init>(java.lang.String)>($r11) 

(declare-const var3754!1 var3068)
(declare-const var1159!1 String)
(assert true)
(define-const var416 (Array Int var1437) (getStackTrace/-1034819919 var2487 var1001)) ; Statement: $r12 = specialinvoke r2.<org.junit.internal.runners.statements.FailOnTimeout: java.lang.StackTraceElement[] getStackTrace(java.lang.Thread)>(r3) 
(assert true)
;(assert (setStackTrace/558595491 (cast-from-var3068-to-var248 var3754!1) var416)) ; Statement: virtualinvoke $r6.<java.lang.Exception: void setStackTrace(java.lang.StackTraceElement[])>($r12) 

(declare-const var3754!2 var3068)
(declare-const var416!1 (Array Int var1437))
(define-const var1148 var2235 var2235-init) ; Statement: $r13 = new org.junit.runners.model.MultipleFailureException 
(define-const var2262 (Array Int var248) arr-var248-init) ; Statement: $r14 = newarray (java.lang.Throwable)[2] 
(declare-const var2262!1 (Array Int var248))
(assert (not (= var2262!1 null-__Array__Int__var248__)))
(assert (= (select var2262!1 0) (cast-from-var1986-to-var248 var2021!1))) ; Statement: $r14[0] = $r4 
(declare-const var2262!2 (Array Int var248))
(assert (not (= var2262!2 null-__Array__Int__var248__)))
(assert (= (select var2262!2 1) (cast-from-var3068-to-var248 var3754!2))) ; Statement: $r14[1] = $r6 
(define-const var759 var1351 (var2783_asList/1779083644 (cast-from-__Array__Int__var248__-to-__Array__Int__var709__ var2262!2))) ; Statement: $r15 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>($r14) 
(assert true)
;(assert (<init>/1090919886 var1148 var759)) ; Statement: specialinvoke $r13.<org.junit.runners.model.MultipleFailureException: void <init>(java.util.List)>($r15) 

(declare-const var1148!1 var2235)
(declare-const var759!1 var1351)
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {getStackTrace/-602745475=([java.lang.Thread], java.lang.StackTraceElement[]), lookForStuckThread/-1306932564=([org.junit.internal.runners.statements.FailOnTimeout], boolean), getStuckThread/-1863794689=([org.junit.internal.runners.statements.FailOnTimeout, java.lang.Thread], java.lang.Thread), var1986-init=([], org.junit.runners.model.TestTimedOutException), timeout/-1306932564=([org.junit.internal.runners.statements.FailOnTimeout], long), timeUnit/-1306932564=([org.junit.internal.runners.statements.FailOnTimeout], java.util.concurrent.TimeUnit), <init>/-813297203=([org.junit.runners.model.TestTimedOutException, long, java.util.concurrent.TimeUnit], void), var3068-init=([], java.lang.Exception), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-942182377=([java.lang.Thread], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-8765015=([java.lang.Exception, java.lang.String], void), getStackTrace/-1034819919=([org.junit.internal.runners.statements.FailOnTimeout, java.lang.Thread], java.lang.StackTraceElement[]), setStackTrace/558595491=([java.lang.Throwable, java.lang.StackTraceElement[]], void), cast-from-var3068-to-var248=([java.lang.Exception], java.lang.Throwable), var2235-init=([], org.junit.runners.model.MultipleFailureException), arr-var248-init=([], java.lang.Throwable[]), cast-from-var1986-to-var248=([org.junit.runners.model.TestTimedOutException], java.lang.Throwable), var2783_asList/1779083644=([java.lang.Object[]], java.util.List), cast-from-__Array__Int__var248__-to-__Array__Int__var709__=([java.lang.Throwable[]], java.lang.Object[]), <init>/1090919886=([org.junit.runners.model.MultipleFailureException, java.util.List], void)}
; {var316=org.junit.internal.runners.statements.FailOnTimeout, var2487=r2, var2777=java.lang.Thread, var3556=r0, var1437=java.lang.StackTraceElement, var2735=r1, var86=$z0, var3287=$r16, var1001=r3, var1986=org.junit.runners.model.TestTimedOutException, var2021=$r4, var2621=$l0, var3646=java.util.concurrent.TimeUnit, var2816=$r5, var3068=java.lang.Exception, var3754=$r6, var3339=$r7, var2154=$r9, var1072=$r8, var1933=$r10, var1159=$r11, var416=$r12, var248=java.lang.Throwable, var2235=org.junit.runners.model.MultipleFailureException, var1148=$r13, var2262=$r14, var1351=java.util.List, var2783=java.util.Arrays, var709=java.lang.Object, var759=$r15}
; {org.junit.internal.runners.statements.FailOnTimeout=var316, r2=var2487, java.lang.Thread=var2777, r0=var3556, java.lang.StackTraceElement=var1437, r1=var2735, $z0=var86, $r16=var3287, r3=var1001, org.junit.runners.model.TestTimedOutException=var1986, $r4=var2021, $l0=var2621, java.util.concurrent.TimeUnit=var3646, $r5=var2816, java.lang.Exception=var3068, $r6=var3754, $r7=var3339, $r9=var2154, $r8=var1072, $r10=var1933, $r11=var1159, $r12=var416, java.lang.Throwable=var248, org.junit.runners.model.MultipleFailureException=var2235, $r13=var1148, $r14=var2262, java.util.List=var1351, java.util.Arrays=var2783, java.lang.Object=var709, $r15=var759}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.junit.internal.runners.statements.FailOnTimeout;	r0 := @parameter0: java.lang.Thread;	r1 = virtualinvoke r0.<java.lang.Thread: java.lang.StackTraceElement[] getStackTrace()>();	$z0 = r2.<org.junit.internal.runners.statements.FailOnTimeout: boolean lookForStuckThread>;	if $z0 == 0 goto $r16 = null;	$r16 = specialinvoke r2.<org.junit.internal.runners.statements.FailOnTimeout: java.lang.Thread getStuckThread(java.lang.Thread)>(r0);	goto [?= r3 = $r16];	r3 = $r16;	$r4 = new org.junit.runners.model.TestTimedOutException;	$l0 = r2.<org.junit.internal.runners.statements.FailOnTimeout: long timeout>;	$r5 = r2.<org.junit.internal.runners.statements.FailOnTimeout: java.util.concurrent.TimeUnit timeUnit>;	specialinvoke $r4.<org.junit.runners.model.TestTimedOutException: void <init>(long,java.util.concurrent.TimeUnit)>($l0, $r5);	if r1 == null goto (branch);	if r3 == null goto return $r4;	$r6 = new java.lang.Exception;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Appears to be stuck in thread ");	$r8 = virtualinvoke r3.<java.lang.Thread: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.Exception: void <init>(java.lang.String)>($r11);	$r12 = specialinvoke r2.<org.junit.internal.runners.statements.FailOnTimeout: java.lang.StackTraceElement[] getStackTrace(java.lang.Thread)>(r3);	virtualinvoke $r6.<java.lang.Exception: void setStackTrace(java.lang.StackTraceElement[])>($r12);	$r13 = new org.junit.runners.model.MultipleFailureException;	$r14 = newarray (java.lang.Throwable)[2];	$r14[0] = $r4;	$r14[1] = $r6;	$r15 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>($r14);	specialinvoke $r13.<org.junit.runners.model.MultipleFailureException: void <init>(java.util.List)>($r15);	return $r13
;block_num 5