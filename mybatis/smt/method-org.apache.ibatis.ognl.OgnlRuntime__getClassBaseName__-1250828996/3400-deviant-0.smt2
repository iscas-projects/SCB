(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-ClassObject ClassObject)
(declare-const var2794 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2794 null-ClassObject)))
(assert true)
(define-const var1217 String (getName/-1958580599 var2794)) ; Statement: r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1747 Int (lastIndexOf/-1292097097 var1217 46)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var3887 Int (+ var1747 1)) ; Statement: $i1 = $i0 + 1 
(assert (not (and true (and (>= var3887 0) (>= (str.len var1217) var3887)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var2794=r0, var1217=r1, var1747=$i0, var3887=$i1, var3164=$r2}
; {r0=var2794, r1=var1217, $i0=var1747, $i1=var3887, $r2=var3164}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(46);	$i1 = $i0 + 1;	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>($i1);	return $r2
;block_num 1