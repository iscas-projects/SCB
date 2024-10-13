(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var490 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var3814 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3814 null-String)))
(assert true)
(define-const var3565 Int (lastIndexOf/-1292097097 var3814 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
 ; Statement: if i0 >= 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (>= var3565 0)) ; Cond: i0 >= 0 
(assert (and true (and (>= 0 0) (>= (str.len var3814) var3565) (>= var3565 0))))
(define-const var874 String (substring/-1240304868 var3814 0 var3565)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3814=r0, var490=null_type, var3565=i0, var874=$r1}
; {r0=var3814, null_type=var490, i0=var3565, $r1=var874}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	if i0 >= 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	return $r1
;block_num 2