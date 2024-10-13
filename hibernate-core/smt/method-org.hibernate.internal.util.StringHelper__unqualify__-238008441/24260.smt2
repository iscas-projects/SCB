(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3418 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-String String)
(declare-const var639 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var639 null-String)))
(assert true)
(define-const var3075 Int (lastIndexOf/-1292097097 var639 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
 ; Statement: if i0 >= 0 goto $i1 = i0 + 1 
(assert (>= var3075 0)) ; Cond: i0 >= 0 
(define-const var3350 Int (+ var3075 1)) ; Statement: $i1 = i0 + 1 
(assert (and true (and (>= var3350 0) (>= (str.len var639) var3350))))
(define-const var3695 String (substring/850833817 var639 var3350)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1) 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var639=r0, var3418=null_type, var3075=i0, var3350=$i1, var3695=$r1}
; {r0=var639, null_type=var3418, i0=var3075, $i1=var3350, $r1=var3695}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	if i0 >= 0 goto $i1 = i0 + 1;	$i1 = i0 + 1;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1);	return $r1
;block_num 3