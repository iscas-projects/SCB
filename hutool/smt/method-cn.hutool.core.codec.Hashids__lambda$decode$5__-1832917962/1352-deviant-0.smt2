(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1027 0)
(declare-sort var3320 0)
(declare-sort var1843 0)
(declare-sort var919 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var1843_valueOf/-1186540555 (Int) var1843)
(declare-fun var1027_contains/1636690605 (var1027 var919) Bool)
(declare-fun cast-from-var1843-to-var919 (var1843) var919)
(declare-const null-var1027 var1027)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1691 var1027) ; Statement: r0 := @parameter0: java.util.Set 
(assert (not (= var1691 null-var1027)))
(declare-const var3209 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3209 null-String)))
(declare-const var2405 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2405 null-Int)))
(assert (not (and true (and (> (str.len var3209) var2405) (<= 0 var2405)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), var1843_valueOf/-1186540555=([char], java.lang.Character), var1027_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-var1843-to-var919=([java.lang.Character], java.lang.Object)}
; {var1027=java.util.Set, var1691=r0, var3209=r1, var3320=null_type, var2405=i0, var2760=$c1, var1843=java.lang.Character, var2409=$r2, var919=java.lang.Object, var1625=$z0}
; {java.util.Set=var1027, r0=var1691, r1=var3209, null_type=var3320, i0=var2405, $c1=var2760, java.lang.Character=var1843, $r2=var2409, java.lang.Object=var919, $z0=var1625}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.util.Set;	r1 := @parameter1: java.lang.String;	i0 := @parameter2: int;	$c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i0);	$r2 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>($c1);	$z0 = interfaceinvoke r0.<java.util.Set: boolean contains(java.lang.Object)>($r2);	return $z0
;block_num 1