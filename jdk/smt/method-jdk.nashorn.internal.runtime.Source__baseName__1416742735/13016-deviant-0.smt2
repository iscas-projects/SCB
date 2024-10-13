(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var767 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var248 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var248 null-String)))
(assert true)
(define-const var950 Int (lastIndexOf/-1292097097 var248 47)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47) 
(define-const var2610 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i1 != $i3 goto $i5 = (int) -1 
(assert (not (= var950 var2610))) ; Cond: i1 != $i3 
(define-const var1484 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if i1 == $i5 goto $r1 = null 
(assert (not (= var950 var1484))) ; Negate: Cond: i1 == $i5  
(define-const var1046 Int (+ var950 1)) ; Statement: $i0 = i1 + 1 
(assert (not (and true (and (>= 0 0) (>= (str.len var248) var1046) (>= var1046 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var248=r0, var767=null_type, var950=i1, var2610=$i3, var1484=$i5, var1046=$i0, var1275=$r1}
; {r0=var248, null_type=var767, i1=var950, $i3=var2610, $i5=var1484, $i0=var1046, $r1=var1275}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47);	$i3 = (int) -1;	if i1 != $i3 goto $i5 = (int) -1;	$i5 = (int) -1;	if i1 == $i5 goto $r1 = null;	$i0 = i1 + 1;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i0);	goto [?= return $r1];	return $r1
;block_num 4