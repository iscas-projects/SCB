(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2261 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-String String)
(declare-const var2231 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2231 null-String)))
(assert true)
(define-const var2460 Int (lastIndexOf/-1292097097 var2231 47)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47) 
(define-const var3881 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 != $i3 goto $i1 = i0 + 1 
(assert (not (= var2460 var3881))) ; Cond: i0 != $i3 
(define-const var1991 Int (+ var2460 1)) ; Statement: $i1 = i0 + 1 
(assert (and true (and (>= var1991 0) (>= (str.len var2231) var1991))))
(define-const var171 String (substring/850833817 var2231 var1991)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1) 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var2231=r0, var2261=null_type, var2460=i0, var3881=$i3, var1991=$i1, var171=$r1}
; {r0=var2231, null_type=var2261, i0=var2460, $i3=var3881, $i1=var1991, $r1=var171}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47);	$i3 = (int) -1;	if i0 != $i3 goto $i1 = i0 + 1;	$i1 = i0 + 1;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1);	return $r1
;block_num 3