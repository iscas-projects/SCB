(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2818 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-String String)
(declare-const var3015 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3015 null-String)))
(assert true)
(define-const var1332 Int (indexOf/-1037706067 var3015 92)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(92) 
 ; Statement: if $i0 >= 0 goto $r3 = new java.lang.StringBuilder 
(assert (not (>= var1332 0))) ; Negate: Cond: $i0 >= 0  
(assert true)
(define-const var2724 Int (indexOf/-1037706067 var3015 36)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(36) 
 ; Statement: if $i2 >= 0 goto $r3 = new java.lang.StringBuilder 
(assert (not (>= var2724 0))) ; Negate: Cond: $i2 >= 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int)}
; {var3015=r0, var2818=null_type, var1332=$i0, var2724=$i2}
; {r0=var3015, null_type=var2818, $i0=var1332, $i2=var2724}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 2}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(92);	if $i0 >= 0 goto $r3 = new java.lang.StringBuilder;	$i2 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(36);	if $i2 >= 0 goto $r3 = new java.lang.StringBuilder;	return r0
;block_num 3