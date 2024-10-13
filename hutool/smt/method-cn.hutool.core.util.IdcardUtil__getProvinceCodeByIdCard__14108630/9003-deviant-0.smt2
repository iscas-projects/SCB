(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2509 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var65 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var65 null-String)))
(assert true)
(define-const var2457 Int (length/-134980193 var65)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 == 15 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, 2) 
(assert (= var2457 15)) ; Cond: i0 == 15 
(assert (not (and true (and (>= 0 0) (>= (str.len var65) 2) (>= 2 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var65=r0, var2509=null_type, var2457=i0, var2785=$r1}
; {r0=var65, null_type=var2509, i0=var2457, $r1=var2785}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 == 15 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, 2);	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, 2);	return $r1
;block_num 2