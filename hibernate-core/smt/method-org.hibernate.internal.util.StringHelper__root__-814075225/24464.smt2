(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3635 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-String String)
(declare-const var1436 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1436 null-String)))
(assert true)
(define-const var2617 Int (indexOf/-1037706067 var1436 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
 ; Statement: if i0 >= 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (>= var2617 0))) ; Negate: Cond: i0 >= 0  
(define-const var3071 String var1436) ; Statement: $r1 = r0 
 ; Statement: goto [?= return $r1] 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int)}
; {var1436=r0, var3635=null_type, var2617=i0, var3071=$r1}
; {r0=var1436, null_type=var3635, i0=var2617, $r1=var3071}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	if i0 >= 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r1 = r0;	goto [?= return $r1];	return $r1
;block_num 3