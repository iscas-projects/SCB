(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1470 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-const null-String String)
(declare-const var1118 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1118 null-String)))
(assert true)
(define-const var3103 Int (lastIndexOf/-1292097097 var1118 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
 ; Statement: if i0 >= 0 goto $i1 = i0 + 1 
(assert (not (>= var3103 0))) ; Negate: Cond: i0 >= 0  
(define-const var14 String var1118) ; Statement: $r1 = r0 
 ; Statement: goto [?= return $r1] 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int)}
; {var1118=r0, var1470=null_type, var3103=i0, var14=$r1}
; {r0=var1118, null_type=var1470, i0=var3103, $r1=var14}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	if i0 >= 0 goto $i1 = i0 + 1;	$r1 = r0;	goto [?= return $r1];	return $r1
;block_num 3