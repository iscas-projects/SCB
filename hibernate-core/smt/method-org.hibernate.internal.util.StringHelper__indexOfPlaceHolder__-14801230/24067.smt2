(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2410 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3452 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3452 null-String)))
(declare-const var1686 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1686 null-String)))
(declare-const var3272 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3272 null-Bool)))
 ; Statement: if z0 == 0 goto $i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1) 
(assert (= (ite var3272 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var2076 Int (indexOf/-1209756239 var3452 var1686)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1) 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int)}
; {var3452=r0, var2410=null_type, var1686=r1, var3272=z0, var2076=$i0}
; {r0=var3452, null_type=var2410, r1=var1686, z0=var3272, $i0=var2076}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	if z0 == 0 goto $i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1);	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1);	return $i0
;block_num 2