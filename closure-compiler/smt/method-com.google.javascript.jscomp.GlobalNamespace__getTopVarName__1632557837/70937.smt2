(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1163 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var3656 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3656 null-String)))
(assert true)
(define-const var2594 Int (indexOf/-1037706067 var3656 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
(define-const var663 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (not (= var2594 var663)))) ; Negate: Cond: i0 != $i2  
(define-const var220 String var3656) ; Statement: $r1 = r0 
 ; Statement: goto [?= return $r1] 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var3656=r0, var1163=null_type, var2594=i0, var663=$i2, var220=$r1}
; {r0=var3656, null_type=var1163, i0=var2594, $i2=var663, $r1=var220}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	$i2 = (int) -1;	if i0 != $i2 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r1 = r0;	goto [?= return $r1];	return $r1
;block_num 3