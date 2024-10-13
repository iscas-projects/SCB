(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1098 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var1098_lastIndexOf/-155744409 (String String Int) Int)
(declare-const null-String String)
(declare-const var1270 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1270 null-String)))
(declare-const var2731 String) ; Statement: r1 := @parameter1: java.lang.CharSequence 
(assert (not (= var2731 null-String)))
 ; Statement: if r0 != null goto $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert (not (= var1270 null-String))) ; Cond: r0 != null 
(define-const var1265 Int (String_length/-667254855 var1270)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var609 Int (var1098_lastIndexOf/-155744409 var1270 var2731 var1265)) ; Statement: $i1 = staticinvoke <org.apache.commons.lang3.CharSequenceUtils: int lastIndexOf(java.lang.CharSequence,java.lang.CharSequence,int)>(r0, r1, $i0) 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), var1098_lastIndexOf/-155744409=([java.lang.CharSequence, java.lang.CharSequence, int], int)}
; {var1270=r0, var2731=r1, var1265=$i0, var1098=org.apache.commons.lang3.CharSequenceUtils, var609=$i1}
; {r0=var1270, r1=var2731, $i0=var1265, org.apache.commons.lang3.CharSequenceUtils=var1098, $i1=var609}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.CharSequence;	if r0 != null goto $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i1 = staticinvoke <org.apache.commons.lang3.CharSequenceUtils: int lastIndexOf(java.lang.CharSequence,java.lang.CharSequence,int)>(r0, r1, $i0);	return $i1
;block_num 2