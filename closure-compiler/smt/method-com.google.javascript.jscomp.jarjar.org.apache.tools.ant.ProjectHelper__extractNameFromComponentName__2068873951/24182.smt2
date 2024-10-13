(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var379 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-String String)
(declare-const var1075 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1075 null-String)))
(assert true)
(define-const var364 Int (lastIndexOf/-1292097097 var1075 58)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(58) 
(define-const var2726 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 != $i3 goto $i1 = i0 + 1 
(assert (not (= var364 var2726))) ; Cond: i0 != $i3 
(define-const var64 Int (+ var364 1)) ; Statement: $i1 = i0 + 1 
(assert (and true (and (>= var64 0) (>= (str.len var1075) var64))))
(define-const var1383 String (substring/850833817 var1075 var64)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var1075=r0, var379=null_type, var364=i0, var2726=$i3, var64=$i1, var1383=$r1}
; {r0=var1075, null_type=var379, i0=var364, $i3=var2726, $i1=var64, $r1=var1383}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(58);	$i3 = (int) -1;	if i0 != $i3 goto $i1 = i0 + 1;	$i1 = i0 + 1;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1);	return $r1
;block_num 2