(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1779 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-String String)
(declare-const var2555 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2555 null-String)))
(assert true)
(define-const var747 Int (indexOf/-1037706067 var2555 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
(define-const var2006 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 != $i3 goto $i1 = i0 + 1 
(assert (not (= var747 var2006))) ; Cond: i0 != $i3 
(define-const var1081 Int (+ var747 1)) ; Statement: $i1 = i0 + 1 
(assert (and true (and (>= var1081 0) (>= (str.len var2555) var1081))))
(define-const var2635 String (substring/850833817 var2555 var1081)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var2555=r0, var1779=null_type, var747=i0, var2006=$i3, var1081=$i1, var2635=$r1}
; {r0=var2555, null_type=var1779, i0=var747, $i3=var2006, $i1=var1081, $r1=var2635}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	$i3 = (int) -1;	if i0 != $i3 goto $i1 = i0 + 1;	$i1 = i0 + 1;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1);	return $r1
;block_num 2