(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2838 0)
(declare-sort var2046 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun onlyChar/1847772117 (var2838) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun CanMoveUsingChar/-243996437 (var2838 Int) Bool)
(declare-const null-var2838 var2838)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1377 var2838) ; Statement: r0 := @this: org.javacc.parser.NfaState 
(assert (not (= var1377 null-var2838)))
(declare-const var2450 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2450 null-String)))
(declare-const var2587 Int) ; Statement: i5 := @parameter1: int 
(assert (not (= var2587 null-Int)))
(declare-const var1859 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var1859 null-Int)))
(define-const var2078 Int (onlyChar/1847772117 var1377)) ; Statement: $i0 = r0.<org.javacc.parser.NfaState: int onlyChar> 
 ; Statement: if $i0 != 1 goto $c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i5) 
(assert (not (= var2078 1))) ; Cond: $i0 != 1 
(assert (and true (and (> (str.len var2450) var2587) (<= 0 var2587))))
(define-const var515 Int (charAt/698050440 var2450 var2587)) ; Statement: $c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i5) 
(assert true)
(define-const var2384 Bool (CanMoveUsingChar/-243996437 var1377 var515)) ; Statement: $z0 = virtualinvoke r0.<org.javacc.parser.NfaState: boolean CanMoveUsingChar(char)>($c1) 
 ; Statement: if $z0 == 0 goto i5 = i5 + 1 
(assert (not (= (ite var2384 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return i5 
(check-sat)
(get-model)
(get-unsat-core)
; {onlyChar/1847772117=([org.javacc.parser.NfaState], int), charAt/698050440=([java.lang.String, int], char), CanMoveUsingChar/-243996437=([org.javacc.parser.NfaState, char], boolean)}
; {var2838=org.javacc.parser.NfaState, var1377=r0, var2450=r1, var2046=null_type, var2587=i5, var1859=i2, var2078=$i0, var515=$c1, var2384=$z0}
; {org.javacc.parser.NfaState=var2838, r0=var1377, r1=var2450, null_type=var2046, i5=var2587, i2=var1859, $i0=var2078, $c1=var515, $z0=var2384}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: org.javacc.parser.NfaState;	r1 := @parameter0: java.lang.String;	i5 := @parameter1: int;	i2 := @parameter2: int;	$i0 = r0.<org.javacc.parser.NfaState: int onlyChar>;	if $i0 != 1 goto $c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i5);	$c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i5);	$z0 = virtualinvoke r0.<org.javacc.parser.NfaState: boolean CanMoveUsingChar(char)>($c1);	if $z0 == 0 goto i5 = i5 + 1;	return i5
;block_num 3