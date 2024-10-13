(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1141 0)
(declare-sort var1637 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1141_isEmpty/1595667738 (String) Bool)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var1637_lastIndexOf/445018499 (String Int Int) Int)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var437 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var437 null-String)))
(declare-const var3021 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3021 null-Int)))
(define-const var366 Bool (var1141_isEmpty/1595667738 var437)) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto $i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert (= (ite var366 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3100 Int (String_length/-667254855 var437)) ; Statement: $i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var2178 Int (var1637_lastIndexOf/445018499 var437 var3021 var3100)) ; Statement: $i2 = staticinvoke <org.apache.commons.lang3.CharSequenceUtils: int lastIndexOf(java.lang.CharSequence,int,int)>(r0, i0, $i1) 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {var1141_isEmpty/1595667738=([java.lang.CharSequence], boolean), String_length/-667254855=([java.lang.CharSequence], int), var1637_lastIndexOf/445018499=([java.lang.CharSequence, int, int], int)}
; {var437=r0, var3021=i0, var1141=org.apache.commons.lang3.StringUtils, var366=$z0, var3100=$i1, var1637=org.apache.commons.lang3.CharSequenceUtils, var2178=$i2}
; {r0=var437, i0=var3021, org.apache.commons.lang3.StringUtils=var1141, $z0=var366, $i1=var3100, org.apache.commons.lang3.CharSequenceUtils=var1637, $i2=var2178}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	i0 := @parameter1: int;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 == 0 goto $i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i2 = staticinvoke <org.apache.commons.lang3.CharSequenceUtils: int lastIndexOf(java.lang.CharSequence,int,int)>(r0, i0, $i1);	return $i2
;block_num 2