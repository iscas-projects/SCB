(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2748 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var3953 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3953 null-String)))
(assert true)
(define-const var2444 Int (length/-134980193 var3953)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1389 Int (- var2444 1)) ; Statement: $i1 = $i0 - 1 
(assert (and true (and (>= 1 0) (>= (str.len var3953) var1389) (>= var1389 1))))
(define-const var1792 String (substring/-1240304868 var3953 1 var1389)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(1, $i1) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3953=r0, var2748=null_type, var2444=$i0, var1389=$i1, var1792=$r1}
; {r0=var3953, null_type=var2748, $i0=var2444, $i1=var1389, $r1=var1792}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = $i0 - 1;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(1, $i1);	return $r1
;block_num 1