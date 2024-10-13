(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3787 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var245 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var245 null-String)))
(assert true)
(define-const var2348 Int (lastIndexOf/-1292097097 var245 47)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47) 
 ; Statement: if i0 >= 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (>= var2348 0)) ; Cond: i0 >= 0 
(assert (not (and true (and (>= 0 0) (>= (str.len var245) var2348) (>= var2348 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var245=r0, var3787=null_type, var2348=i0, var466=$r1}
; {r0=var245, null_type=var3787, i0=var2348, $r1=var466}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47);	if i0 >= 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	return $r1
;block_num 2