(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1363 0)
(declare-sort var2942 0)
(declare-sort var3194 0)
(declare-sort var1085 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLength-Arr-var3194-1 ((Array Int var3194)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1085_err/-1643834807 (String) void)
(declare-fun var1085_stacktrace/-1243400695 (var1363) void)
(declare-const null-var1363 var1363)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var3194__ (Array Int var3194))
(declare-const var2578 var1363) ; Statement: r3 := @parameter0: jdk.nashorn.internal.runtime.logging.DebugLogger 
(assert (not (= var2578 null-var1363)))
(declare-const var2515 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2515 null-String)))
(declare-const var1820 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1820 null-Int)))
(declare-const var2388 (Array Int var3194)) ; Statement: r2 := @parameter3: java.lang.Object[] 
(assert (not (= var2388 null-__Array__Int__var3194__)))
(define-const var128 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var128)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var128!1 String)
(assert (= var128!1 ""))
(assert true)
;(assert (append/672562846 var128!1 var2515)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var128!2 String)
(assert (= var128!2 (str.++ var128!1 var2515)))
(define-const var3213 Int var1820) ; Statement: i4 = i0 
(assert true) ; Non Conditional
(define-const var3883 Int (getLength-Arr-var3194-1 var2388)) ; Statement: $i1 = lengthof r2 
 ; Statement: if i4 >= $i1 goto (branch) 
(assert (>= var3213 var3883)) ; Cond: i4 >= $i1 
 ; Statement: if r3 != null goto $r5 = <jdk.nashorn.internal.lookup.MethodHandleFactory: java.util.logging.Level TRACE_LEVEL> 
(assert (not (not (= var2578 null-var1363)))) ; Negate: Cond: r3 != null  
(assert true)
(define-const var973 String (toString/-2075883882 var128!2)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1085_err/-1643834807 var973)) ; Statement: staticinvoke <jdk.nashorn.internal.lookup.MethodHandleFactory: void err(java.lang.String)>($r6) 

(declare-const var973!1 String)
 ; Statement: goto [?= staticinvoke <jdk.nashorn.internal.lookup.MethodHandleFactory: void stacktrace(jdk.nashorn.internal.runtime.logging.DebugLogger)>(r3)] 
(assert true) ; Non Conditional
;(assert (var1085_stacktrace/-1243400695 var2578)) ; Statement: staticinvoke <jdk.nashorn.internal.lookup.MethodHandleFactory: void stacktrace(jdk.nashorn.internal.runtime.logging.DebugLogger)>(r3) 

(declare-const var2578!1 var1363)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLength-Arr-var3194-1=([java.lang.Object[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1085_err/-1643834807=([java.lang.String], void), var1085_stacktrace/-1243400695=([jdk.nashorn.internal.runtime.logging.DebugLogger], void)}
; {var1363=jdk.nashorn.internal.runtime.logging.DebugLogger, var2578=r3, var2515=r1, var2942=null_type, var1820=i0, var3194=java.lang.Object, var2388=r2, var128=$r0, var3213=i4, var3883=$i1, var973=$r6, var1085=jdk.nashorn.internal.lookup.MethodHandleFactory}
; {jdk.nashorn.internal.runtime.logging.DebugLogger=var1363, r3=var2578, r1=var2515, null_type=var2942, i0=var1820, java.lang.Object=var3194, r2=var2388, $r0=var128, i4=var3213, $i1=var3883, $r6=var973, jdk.nashorn.internal.lookup.MethodHandleFactory=var1085}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: jdk.nashorn.internal.runtime.logging.DebugLogger;	r1 := @parameter1: java.lang.String;	i0 := @parameter2: int;	r2 := @parameter3: java.lang.Object[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	i4 = i0;	$i1 = lengthof r2;	if i4 >= $i1 goto (branch);	if r3 != null goto $r5 = <jdk.nashorn.internal.lookup.MethodHandleFactory: java.util.logging.Level TRACE_LEVEL>;	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <jdk.nashorn.internal.lookup.MethodHandleFactory: void err(java.lang.String)>($r6);	goto [?= staticinvoke <jdk.nashorn.internal.lookup.MethodHandleFactory: void stacktrace(jdk.nashorn.internal.runtime.logging.DebugLogger)>(r3)];	staticinvoke <jdk.nashorn.internal.lookup.MethodHandleFactory: void stacktrace(jdk.nashorn.internal.runtime.logging.DebugLogger)>(r3);	return
;block_num 5