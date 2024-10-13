(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2871 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var1339 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1339 null-String)))
(define-const var432 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(assert (and true (and (> (str.len var1339) var432) (<= 0 var432))))
(define-const var1075 Int (charAt/698050440 var1339 var432)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i1) 
(define-const var330 Int (cast-from-Int-to-Int var1075)) ; Statement: $i2 = (int) $c0 
 ; Statement: if $i2 != 91 goto return i1 
(assert (not (= var330 91))) ; Cond: $i2 != 91 
 ; Statement: return i1 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var1339=r0, var2871=null_type, var432=i1, var1075=$c0, var330=$i2}
; {r0=var1339, null_type=var2871, i1=var432, $c0=var1075, $i2=var330}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 = 0;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i1);	$i2 = (int) $c0;	if $i2 != 91 goto return i1;	return i1
;block_num 3