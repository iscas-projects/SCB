(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2737 0)
(declare-sort var1126 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2737 var2737)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1398 var2737) ; Statement: r1 := @this: com.google.javascript.jscomp.deps.JsFileLineParser 
(assert (not (= var1398 null-var2737)))
(declare-const var3250 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3250 null-String)))
(declare-const var2514 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2514 null-Int)))
(define-const var2906 Int 0) ; Statement: i3 = 0 
(define-const var1122 Int (- var2514 1)) ; Statement: i4 = i0 - 1 
(assert true) ; Non Conditional
(assert (and true (and (> (str.len var3250) var1122) (<= 0 var1122))))
(define-const var405 Int (charAt/698050440 var3250 var1122)) ; Statement: $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i4) 
(define-const var1922 Int (cast-from-Int-to-Int var405)) ; Statement: $i5 = (int) $c1 
 ; Statement: if $i5 != 92 goto $i2 = i3 % 2 
(assert (not (= var1922 92))) ; Cond: $i5 != 92 
(define-const var2929 Int (mod var2906 2)) ; Statement: $i2 = i3 % 2 
 ; Statement: if $i2 != 1 goto $z0 = 0 
(assert (not (not (= var2929 1)))) ; Negate: Cond: $i2 != 1  
(define-const var2529 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= return $z0] 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var2737=com.google.javascript.jscomp.deps.JsFileLineParser, var1398=r1, var3250=r0, var1126=null_type, var2514=i0, var2906=i3, var1122=i4, var405=$c1, var1922=$i5, var2929=$i2, var2529=$z0}
; {com.google.javascript.jscomp.deps.JsFileLineParser=var2737, r1=var1398, r0=var3250, null_type=var1126, i0=var2514, i3=var2906, i4=var1122, $c1=var405, $i5=var1922, $i2=var2929, $z0=var2529}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.deps.JsFileLineParser;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i3 = 0;	i4 = i0 - 1;	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i4);	$i5 = (int) $c1;	if $i5 != 92 goto $i2 = i3 % 2;	$i2 = i3 % 2;	if $i2 != 1 goto $z0 = 0;	$z0 = 1;	goto [?= return $z0];	return $z0
;block_num 5