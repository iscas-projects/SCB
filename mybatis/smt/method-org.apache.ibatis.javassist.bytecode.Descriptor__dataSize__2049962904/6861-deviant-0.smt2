(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2774 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2197 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2197 null-String)))
(declare-const var2619 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2619 null-Bool)))
(define-const var1587 Int 0) ; Statement: i3 = 0 
(assert (not (and true (and (> (str.len var2197) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var2197=r0, var2774=null_type, var2619=z0, var1587=i3, var3603=c4, var3086=$i7}
; {r0=var2197, null_type=var2774, z0=var2619, i3=var1587, c4=var3603, $i7=var3086}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	i3 = 0;	c4 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i7 = (int) c4;	if $i7 != 40 goto (branch);	if z0 == 0 goto return i3;	return i3
;block_num 3