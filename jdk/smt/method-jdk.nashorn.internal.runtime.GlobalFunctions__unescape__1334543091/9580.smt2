(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3409 0)
(declare-sort var3527 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3527_toString/-1831155339 (var3409) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3409 var3409)
(declare-const var3680 var3409) ; Statement: r8 := @parameter0: java.lang.Object 
(assert (not (= var3680 null-var3409)))
(declare-const var2169 var3409) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var2169 null-var3409)))
(define-const var635 String (var3527_toString/-1831155339 var2169)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r0) 
(assert true)
(define-const var1 Int (length/-134980193 var635)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i0 != 0 goto $r9 = new java.lang.StringBuilder 
(assert (not (not (= var1 0)))) ; Negate: Cond: i0 != 0  
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3527_toString/-1831155339=([java.lang.Object], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var3409=java.lang.Object, var3680=r8, var2169=r0, var3527=jdk.nashorn.internal.runtime.JSType, var635=r1, var1=i0}
; {java.lang.Object=var3409, r8=var3680, r0=var2169, jdk.nashorn.internal.runtime.JSType=var3527, r1=var635, i0=var1}
;seq <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r8 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r0);	i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i0 != 0 goto $r9 = new java.lang.StringBuilder;	return r1
;block_num 2