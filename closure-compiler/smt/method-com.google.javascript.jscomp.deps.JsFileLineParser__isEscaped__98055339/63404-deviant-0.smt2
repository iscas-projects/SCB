(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var850 0)
(declare-sort var2771 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var850 var850)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2343 var850) ; Statement: r1 := @this: com.google.javascript.jscomp.deps.JsFileLineParser 
(assert (not (= var2343 null-var850)))
(declare-const var1483 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1483 null-String)))
(declare-const var1489 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1489 null-Int)))
(define-const var2539 Int 0) ; Statement: i3 = 0 
(define-const var972 Int (- var1489 1)) ; Statement: i4 = i0 - 1 
(assert true) ; Non Conditional
(assert (not (and true (and (> (str.len var1483) var972) (<= 0 var972)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var850=com.google.javascript.jscomp.deps.JsFileLineParser, var2343=r1, var1483=r0, var2771=null_type, var1489=i0, var2539=i3, var972=i4, var54=$c1, var800=$i5, var2242=$i2, var2093=$z0}
; {com.google.javascript.jscomp.deps.JsFileLineParser=var850, r1=var2343, r0=var1483, null_type=var2771, i0=var1489, i3=var2539, i4=var972, $c1=var54, $i5=var800, $i2=var2242, $z0=var2093}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.deps.JsFileLineParser;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i3 = 0;	i4 = i0 - 1;	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i4);	$i5 = (int) $c1;	if $i5 != 92 goto $i2 = i3 % 2;	$i2 = i3 % 2;	if $i2 != 1 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 5