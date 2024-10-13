(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3993 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1059 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1059 null-String)))
(declare-const var3508 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3508 null-Bool)))
(assert true)
(define-const var3624 Int (indexOf/-1037706067 var1059 101)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(101) 
 ; Statement: if i0 >= 1 goto $i1 = i0 + 2 
(assert (not (>= var3624 1))) ; Negate: Cond: i0 >= 1  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int)}
; {var1059=r0, var3993=null_type, var3508=z0, var3624=i0}
; {r0=var1059, null_type=var3993, z0=var3508, i0=var3624}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(101);	if i0 >= 1 goto $i1 = i0 + 2;	return r0
;block_num 2