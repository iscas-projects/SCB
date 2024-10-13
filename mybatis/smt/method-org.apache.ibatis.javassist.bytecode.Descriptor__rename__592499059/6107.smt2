(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2423 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-const null-String String)
(declare-const var1839 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1839 null-String)))
(declare-const var3411 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3411 null-String)))
(declare-const var1289 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var1289 null-String)))
(assert true)
(define-const var3093 Int (indexOf/-1209756239 var1839 var3411)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1) 
 ; Statement: if $i0 >= 0 goto $r7 = new java.lang.StringBuilder 
(assert (not (>= var3093 0))) ; Negate: Cond: $i0 >= 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int)}
; {var1839=r0, var2423=null_type, var3411=r1, var1289=r6, var3093=$i0}
; {r0=var1839, null_type=var2423, r1=var3411, r6=var1289, $i0=var3093}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r6 := @parameter2: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1);	if $i0 >= 0 goto $r7 = new java.lang.StringBuilder;	return r0
;block_num 2