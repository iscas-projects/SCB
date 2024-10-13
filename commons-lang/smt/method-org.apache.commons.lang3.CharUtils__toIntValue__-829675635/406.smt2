(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2857 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2857_isAsciiNumeric/641335549 (Int) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-Int Int)
(declare-const var2134 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var2134 null-Int)))
(define-const var181 Bool (var2857_isAsciiNumeric/641335549 var2134)) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.CharUtils: boolean isAsciiNumeric(char)>(c0) 
 ; Statement: if $z0 != 0 goto $i2 = (int) c0 
(assert (not (= (ite var181 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1713 Int (cast-from-Int-to-Int var2134)) ; Statement: $i2 = (int) c0 
(define-const var1469 Int (- var1713 48)) ; Statement: $i1 = $i2 - 48 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2857_isAsciiNumeric/641335549=([char], boolean), cast-from-Int-to-Int=([char], int)}
; {var2134=c0, var2857=org.apache.commons.lang3.CharUtils, var181=$z0, var1713=$i2, var1469=$i1}
; {c0=var2134, org.apache.commons.lang3.CharUtils=var2857, $z0=var181, $i2=var1713, $i1=var1469}
;seq 
;cnt {}
;stmts c0 := @parameter0: char;	$z0 = staticinvoke <org.apache.commons.lang3.CharUtils: boolean isAsciiNumeric(char)>(c0);	if $z0 != 0 goto $i2 = (int) c0;	$i2 = (int) c0;	$i1 = $i2 - 48;	return $i1
;block_num 2