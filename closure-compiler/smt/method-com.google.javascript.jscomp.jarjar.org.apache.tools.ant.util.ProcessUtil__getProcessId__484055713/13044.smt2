(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2960 0)
(declare-sort var2460 0)
(declare-sort var1311 0)
(declare-sort var2147 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1311_getRuntimeMXBean/1065218510 () var2460)
(declare-fun var2460_getName/-2069733447 (var2460) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-String String)
(declare-const null-var2147 var2147)
(declare-const var2913 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2913 null-String)))
(define-const var1787 var2460 var1311_getRuntimeMXBean/1065218510) ; Statement: $r0 = staticinvoke <java.lang.management.ManagementFactory: java.lang.management.RuntimeMXBean getRuntimeMXBean()>() 
(define-const var2463 String (var2460_getName/-2069733447 var1787)) ; Statement: r1 = interfaceinvoke $r0.<java.lang.management.RuntimeMXBean: java.lang.String getName()>() 
(assert true)
(define-const var2476 Int (indexOf/-1037706067 var2463 64)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(64) 
 ; Statement: if i0 >= 1 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (>= var2476 1))) ; Negate: Cond: i0 >= 1  
(declare-const var1989 var2147) ; Statement: $r5 := @caughtexception 
(assert (not (= var1989 null-var2147)))
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1311_getRuntimeMXBean/1065218510=([], java.lang.management.RuntimeMXBean), var2460_getName/-2069733447=([java.lang.management.RuntimeMXBean], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int)}
; {var2913=r4, var2960=null_type, var2460=java.lang.management.RuntimeMXBean, var1311=java.lang.management.ManagementFactory, var1787=$r0, var2463=r1, var2476=i0, var2147=java.lang.NumberFormatException, var1989=$r5}
; {r4=var2913, null_type=var2960, java.lang.management.RuntimeMXBean=var2460, java.lang.management.ManagementFactory=var1311, $r0=var1787, r1=var2463, i0=var2476, java.lang.NumberFormatException=var2147, $r5=var1989}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r4 := @parameter0: java.lang.String;	$r0 = staticinvoke <java.lang.management.ManagementFactory: java.lang.management.RuntimeMXBean getRuntimeMXBean()>();	r1 = interfaceinvoke $r0.<java.lang.management.RuntimeMXBean: java.lang.String getName()>();	i0 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(64);	if i0 >= 1 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r5 := @caughtexception;	return r4
;block_num 2