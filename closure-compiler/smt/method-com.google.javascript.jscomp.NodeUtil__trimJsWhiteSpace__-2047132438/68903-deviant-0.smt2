(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3956 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var135 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var135 null-String)))
(define-const var2349 Int 0) ; Statement: i3 = 0 
(assert true)
(define-const var101 Int (length/-134980193 var135)) ; Statement: i4 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i4 <= 0 goto (branch) 
(assert (<= var101 0)) ; Cond: i4 <= 0 
 ; Statement: if i3 >= i4 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i3, i4) 
(assert (>= var2349 var101)) ; Cond: i3 >= i4 
(assert (not (and true (and (>= var2349 0) (>= (str.len var135) var101) (>= var101 var2349)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var135=r0, var3956=null_type, var2349=i3, var101=i4, var1011=$r1}
; {r0=var135, null_type=var3956, i3=var2349, i4=var101, $r1=var1011}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i3 = 0;	i4 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 <= 0 goto (branch);	if i3 >= i4 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i3, i4);	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i3, i4);	return $r1
;block_num 4