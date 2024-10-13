(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2699 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var1445 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1445 null-String)))
(assert true)
(define-const var1203 Int (length/-134980193 var1445)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 == 15 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, 4) 
(assert (= var1203 15)) ; Cond: i0 == 15 
(assert (not (and true (and (>= 0 0) (>= (str.len var1445) 4) (>= 4 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var1445=r0, var2699=null_type, var1203=i0, var2987=$r1}
; {r0=var1445, null_type=var2699, i0=var1203, $r1=var2987}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 == 15 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, 4);	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, 4);	return $r1
;block_num 2