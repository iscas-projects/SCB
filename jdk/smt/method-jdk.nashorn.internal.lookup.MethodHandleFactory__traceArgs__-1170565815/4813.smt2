(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3131 0)
(declare-sort var517 0)
(declare-sort var3746 0)
(declare-sort var3842 0)
(declare-sort var1866 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLength-Arr-var3746-1 ((Array Int var3746)) Int)
(declare-fun arr-var3746-init () (Array Int var3746))
(declare-fun cast-from-String-to-var3746 (String) var3746)
(declare-fun log/-515189478 (var3131 var3842 (Array Int var3746)) void)
(declare-fun var1866_stacktrace/-1243400695 (var3131) void)
(declare-const null-var3131 var3131)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var3746__ (Array Int var3746))
(declare-const var1866-TRACE_LEVEL var3842)
(declare-const var3828 var3131) ; Statement: r3 := @parameter0: jdk.nashorn.internal.runtime.logging.DebugLogger 
(assert (not (= var3828 null-var3131)))
(declare-const var178 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var178 null-String)))
(declare-const var63 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var63 null-Int)))
(declare-const var479 (Array Int var3746)) ; Statement: r2 := @parameter3: java.lang.Object[] 
(assert (not (= var479 null-__Array__Int__var3746__)))
(define-const var447 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var447)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var447!1 String)
(assert (= var447!1 ""))
(assert true)
;(assert (append/672562846 var447!1 var178)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var447!2 String)
(assert (= var447!2 (str.++ var447!1 var178)))
(define-const var1056 Int var63) ; Statement: i4 = i0 
(assert true) ; Non Conditional
(define-const var1393 Int (getLength-Arr-var3746-1 var479)) ; Statement: $i1 = lengthof r2 
 ; Statement: if i4 >= $i1 goto (branch) 
(assert (>= var1056 var1393)) ; Cond: i4 >= $i1 
 ; Statement: if r3 != null goto $r5 = <jdk.nashorn.internal.lookup.MethodHandleFactory: java.util.logging.Level TRACE_LEVEL> 
(assert (not (= var3828 null-var3131))) ; Cond: r3 != null 
(define-const var135 var3842 var1866-TRACE_LEVEL) ; Statement: $r5 = <jdk.nashorn.internal.lookup.MethodHandleFactory: java.util.logging.Level TRACE_LEVEL> 
(define-const var2018 (Array Int var3746) arr-var3746-init) ; Statement: $r4 = newarray (java.lang.Object)[1] 
(declare-const var2018!1 (Array Int var3746))
(assert (not (= var2018!1 null-__Array__Int__var3746__)))
(assert (= (select var2018!1 0) (cast-from-String-to-var3746 var447!2))) ; Statement: $r4[0] = $r0 
(assert true)
;(assert (log/-515189478 var3828 var135 var2018!1)) ; Statement: virtualinvoke r3.<jdk.nashorn.internal.runtime.logging.DebugLogger: void log(java.util.logging.Level,java.lang.Object[])>($r5, $r4) 

(declare-const var3828!1 var3131)
(declare-const var135!1 var3842)
(declare-const var2018!2 (Array Int var3746))
(assert true) ; Non Conditional
;(assert (var1866_stacktrace/-1243400695 var3828!1)) ; Statement: staticinvoke <jdk.nashorn.internal.lookup.MethodHandleFactory: void stacktrace(jdk.nashorn.internal.runtime.logging.DebugLogger)>(r3) 

(declare-const var3828!2 var3131)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLength-Arr-var3746-1=([java.lang.Object[]], int), arr-var3746-init=([], java.lang.Object[]), cast-from-String-to-var3746=([java.lang.StringBuilder], java.lang.Object), log/-515189478=([jdk.nashorn.internal.runtime.logging.DebugLogger, java.util.logging.Level, java.lang.Object[]], void), var1866_stacktrace/-1243400695=([jdk.nashorn.internal.runtime.logging.DebugLogger], void)}
; {var3131=jdk.nashorn.internal.runtime.logging.DebugLogger, var3828=r3, var178=r1, var517=null_type, var63=i0, var3746=java.lang.Object, var479=r2, var447=$r0, var1056=i4, var1393=$i1, var3842=java.util.logging.Level, var1866=jdk.nashorn.internal.lookup.MethodHandleFactory, var135=$r5, var2018=$r4}
; {jdk.nashorn.internal.runtime.logging.DebugLogger=var3131, r3=var3828, r1=var178, null_type=var517, i0=var63, java.lang.Object=var3746, r2=var479, $r0=var447, i4=var1056, $i1=var1393, java.util.logging.Level=var3842, jdk.nashorn.internal.lookup.MethodHandleFactory=var1866, $r5=var135, $r4=var2018}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r3 := @parameter0: jdk.nashorn.internal.runtime.logging.DebugLogger;	r1 := @parameter1: java.lang.String;	i0 := @parameter2: int;	r2 := @parameter3: java.lang.Object[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	i4 = i0;	$i1 = lengthof r2;	if i4 >= $i1 goto (branch);	if r3 != null goto $r5 = <jdk.nashorn.internal.lookup.MethodHandleFactory: java.util.logging.Level TRACE_LEVEL>;	$r5 = <jdk.nashorn.internal.lookup.MethodHandleFactory: java.util.logging.Level TRACE_LEVEL>;	$r4 = newarray (java.lang.Object)[1];	$r4[0] = $r0;	virtualinvoke r3.<jdk.nashorn.internal.runtime.logging.DebugLogger: void log(java.util.logging.Level,java.lang.Object[])>($r5, $r4);	staticinvoke <jdk.nashorn.internal.lookup.MethodHandleFactory: void stacktrace(jdk.nashorn.internal.runtime.logging.DebugLogger)>(r3);	return
;block_num 5