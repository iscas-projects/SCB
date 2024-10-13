(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2302 0)
(declare-sort var304 0)
(declare-sort var1796 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1796_getRuntimeMXBean/1065218510 () var304)
(declare-fun var304_getName/-2069733447 (var304) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-String String)
(declare-const var3034 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3034 null-String)))
(define-const var2087 var304 var1796_getRuntimeMXBean/1065218510) ; Statement: $r0 = staticinvoke <java.lang.management.ManagementFactory: java.lang.management.RuntimeMXBean getRuntimeMXBean()>() 
(define-const var2192 String (var304_getName/-2069733447 var2087)) ; Statement: r1 = interfaceinvoke $r0.<java.lang.management.RuntimeMXBean: java.lang.String getName()>() 
(assert true)
(define-const var508 Int (indexOf/-1037706067 var2192 64)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(64) 
 ; Statement: if i0 >= 1 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (>= var508 1))) ; Negate: Cond: i0 >= 1  
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1796_getRuntimeMXBean/1065218510=([], java.lang.management.RuntimeMXBean), var304_getName/-2069733447=([java.lang.management.RuntimeMXBean], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int)}
; {var3034=r4, var2302=null_type, var304=java.lang.management.RuntimeMXBean, var1796=java.lang.management.ManagementFactory, var2087=$r0, var2192=r1, var508=i0}
; {r4=var3034, null_type=var2302, java.lang.management.RuntimeMXBean=var304, java.lang.management.ManagementFactory=var1796, $r0=var2087, r1=var2192, i0=var508}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r4 := @parameter0: java.lang.String;	$r0 = staticinvoke <java.lang.management.ManagementFactory: java.lang.management.RuntimeMXBean getRuntimeMXBean()>();	r1 = interfaceinvoke $r0.<java.lang.management.RuntimeMXBean: java.lang.String getName()>();	i0 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(64);	if i0 >= 1 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	return r4
;block_num 2