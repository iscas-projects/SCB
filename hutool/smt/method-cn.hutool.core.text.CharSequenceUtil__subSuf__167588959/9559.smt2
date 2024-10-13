(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2419 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2419_isEmpty/1540305040 (String) Bool)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var2419_sub/-2049909290 (String Int Int) String)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2102 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2102 null-String)))
(declare-const var2250 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2250 null-Int)))
(define-const var3869 Bool (var2419_isEmpty/1540305040 var2102)) ; Statement: $z0 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto $i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert (= (ite var3869 1 0) 0)) ; Cond: $z0 == 0 
(define-const var126 Int (String_length/-667254855 var2102)) ; Statement: $i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var3501 String (var2419_sub/-2049909290 var2102 var2250 var126)) ; Statement: $r1 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: java.lang.String sub(java.lang.CharSequence,int,int)>(r0, i0, $i1) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2419_isEmpty/1540305040=([java.lang.CharSequence], boolean), String_length/-667254855=([java.lang.CharSequence], int), var2419_sub/-2049909290=([java.lang.CharSequence, int, int], java.lang.String)}
; {var2102=r0, var2250=i0, var2419=cn.hutool.core.text.CharSequenceUtil, var3869=$z0, var126=$i1, var3501=$r1}
; {r0=var2102, i0=var2250, cn.hutool.core.text.CharSequenceUtil=var2419, $z0=var3869, $i1=var126, $r1=var3501}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	i0 := @parameter1: int;	$z0 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 == 0 goto $i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$r1 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: java.lang.String sub(java.lang.CharSequence,int,int)>(r0, i0, $i1);	return $r1
;block_num 2