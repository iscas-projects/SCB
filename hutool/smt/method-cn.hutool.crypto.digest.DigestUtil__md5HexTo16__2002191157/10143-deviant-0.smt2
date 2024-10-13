(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3059 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var1275 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1275 null-String)))
(assert (not (and true (and (>= 8 0) (>= (str.len var1275) 24) (>= 24 8)))))
(check-sat)
(get-model)
(get-unsat-core)
; {substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var1275=r0, var3059=null_type, var3494=$r1}
; {r0=var1275, null_type=var3059, $r1=var3494}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(8, 24);	return $r1
;block_num 1