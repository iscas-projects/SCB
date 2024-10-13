(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1913 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var3236 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3236 null-String)))
(define-const var1257 Int 0) ; Statement: i2 = 0 
(define-const var2898 Int 1) ; Statement: i3 = 1 
(assert true) ; Non Conditional
(assert (and true (and (> (str.len var3236) var2898) (<= 0 var2898))))
(define-const var2346 Int (charAt/698050440 var3236 var2898)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i3) 
(define-const var3053 Int var2346) ; Statement: c4 = $c0 
(define-const var1091 Int (cast-from-Int-to-Int var2346)) ; Statement: $i5 = (int) $c0 
 ; Statement: if $i5 != 41 goto $i6 = (int) c4 
(assert (not (not (= var1091 41)))) ; Negate: Cond: $i5 != 41  
 ; Statement: goto [?= return i2] 
(assert true) ; Non Conditional
 ; Statement: return i2 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var3236=r0, var1913=null_type, var1257=i2, var2898=i3, var2346=$c0, var3053=c4, var1091=$i5}
; {r0=var3236, null_type=var1913, i2=var1257, i3=var2898, $c0=var2346, c4=var3053, $i5=var1091}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i2 = 0;	i3 = 1;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i3);	c4 = $c0;	$i5 = (int) $c0;	if $i5 != 41 goto $i6 = (int) c4;	goto [?= return i2];	return i2
;block_num 4