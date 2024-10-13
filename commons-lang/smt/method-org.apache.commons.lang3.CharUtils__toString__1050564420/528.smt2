(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var215 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-const null-Int Int)
(declare-const var215-CHAR_STRING_ARRAY (Array Int String))
(declare-const var3483 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var3483 null-Int)))
(define-const var33 (Array Int String) var215-CHAR_STRING_ARRAY) ; Statement: $r0 = <org.apache.commons.lang3.CharUtils: java.lang.String[] CHAR_STRING_ARRAY> 
(define-const var775 Int (getLength-Arr-String-1 var33)) ; Statement: $i1 = lengthof $r0 
(define-const var222 Int (cast-from-Int-to-Int var3483)) ; Statement: $i2 = (int) c0 
 ; Statement: if $i2 >= $i1 goto $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0) 
(assert (>= var222 var775)) ; Cond: $i2 >= $i1 
(define-const var708 String (String_valueOf/-371898945 var3483)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-String-1=([java.lang.String[]], int), cast-from-Int-to-Int=([char], int), String_valueOf/-371898945=([char], java.lang.String)}
; {var3483=c0, var215=org.apache.commons.lang3.CharUtils, var33=$r0, var775=$i1, var222=$i2, var708=$r1}
; {c0=var3483, org.apache.commons.lang3.CharUtils=var215, $r0=var33, $i1=var775, $i2=var222, $r1=var708}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts c0 := @parameter0: char;	$r0 = <org.apache.commons.lang3.CharUtils: java.lang.String[] CHAR_STRING_ARRAY>;	$i1 = lengthof $r0;	$i2 = (int) c0;	if $i2 >= $i1 goto $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0);	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0);	return $r1
;block_num 2