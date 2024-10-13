(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2321 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3327 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3327 null-String)))
(declare-const var2738 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2738 null-Int)))
(assert (and true (and (> (str.len var3327) 0) (<= 0 0))))
(define-const var473 Int (charAt/698050440 var3327 0)) ; Statement: c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var2804 Int (cast-from-Int-to-Int var473)) ; Statement: $i2 = (int) c0 
 ; Statement: if $i2 == 45 goto $z0 = 1 
(assert (= var2804 45)) ; Cond: $i2 == 45 
(define-const var756 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 == 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i1) 
(assert (not (= (ite var756 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert (not (and true (and (>= 1 0) (>= (str.len var3327) var2738) (>= var2738 1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3327=r0, var2321=null_type, var2738=i1, var473=c0, var2804=$i2, var756=$z0, var1832=$r1}
; {r0=var3327, null_type=var2321, i1=var2738, c0=var473, $i2=var2804, $z0=var756, $r1=var1832}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i2 = (int) c0;	if $i2 == 45 goto $z0 = 1;	$z0 = 1;	goto [?= (branch)];	if $z0 == 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i1);	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(1, i1);	goto [?= return $r1];	return $r1
;block_num 5