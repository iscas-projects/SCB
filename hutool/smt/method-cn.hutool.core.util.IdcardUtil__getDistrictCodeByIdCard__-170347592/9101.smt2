(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var310 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var2129 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2129 null-String)))
(assert true)
(define-const var2077 Int (length/-134980193 var2129)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 == 15 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, 6) 
(assert (= var2077 15)) ; Cond: i0 == 15 
(assert (and true (and (>= 0 0) (>= (str.len var2129) 6) (>= 6 0))))
(define-const var3448 String (substring/-1240304868 var2129 0 6)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, 6) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var2129=r0, var310=null_type, var2077=i0, var3448=$r1}
; {r0=var2129, null_type=var310, i0=var2077, $r1=var3448}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 == 15 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, 6);	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, 6);	return $r1
;block_num 2