(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var538 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var129 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var129 null-String)))
(declare-const var2262 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2262 null-Int)))
(assert (not (and true (and (> (str.len var129) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var129=r0, var538=null_type, var2262=i1, var3403=c0, var1656=$i2, var2054=$z0, var2257=$r1}
; {r0=var129, null_type=var538, i1=var2262, c0=var3403, $i2=var1656, $z0=var2054, $r1=var2257}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i2 = (int) c0;	if $i2 == 45 goto $z0 = 1;	$z0 = 1;	goto [?= (branch)];	if $z0 == 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i1);	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i1);	return $r1
;block_num 5