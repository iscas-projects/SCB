(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3093 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var973 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var973 null-String)))
(assert true)
(define-const var727 Int (indexOf/-1037706067 var973 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
 ; Statement: if i0 >= 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (>= var727 0)) ; Cond: i0 >= 0 
(assert (and true (and (>= 0 0) (>= (str.len var973) var727) (>= var727 0))))
(define-const var3123 String (substring/-1240304868 var973 0 var727)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var973=r0, var3093=null_type, var727=i0, var3123=$r1}
; {r0=var973, null_type=var3093, i0=var727, $r1=var3123}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	if i0 >= 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	return $r1
;block_num 3