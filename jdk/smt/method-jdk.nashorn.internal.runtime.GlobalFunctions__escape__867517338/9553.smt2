(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var138 0)
(declare-sort var1303 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1303_toString/-1831155339 (var138) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var138 var138)
(declare-const var2480 var138) ; Statement: r11 := @parameter0: java.lang.Object 
(assert (not (= var2480 null-var138)))
(declare-const var2353 var138) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var2353 null-var138)))
(define-const var426 String (var1303_toString/-1831155339 var2353)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r0) 
(assert true)
(define-const var1588 Int (length/-134980193 var426)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i0 != 0 goto $r12 = new java.lang.StringBuilder 
(assert (not (not (= var1588 0)))) ; Negate: Cond: i0 != 0  
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1303_toString/-1831155339=([java.lang.Object], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var138=java.lang.Object, var2480=r11, var2353=r0, var1303=jdk.nashorn.internal.runtime.JSType, var426=r1, var1588=i0}
; {java.lang.Object=var138, r11=var2480, r0=var2353, jdk.nashorn.internal.runtime.JSType=var1303, r1=var426, i0=var1588}
;seq <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r11 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r0);	i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i0 != 0 goto $r12 = new java.lang.StringBuilder;	return r1
;block_num 2