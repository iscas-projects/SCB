(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1381 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var1381_isSubEquals/568409954 (String Int String Int Int Bool) Bool)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var3220 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3220 null-String)))
(declare-const var2484 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2484 null-Int)))
(declare-const var189 String) ; Statement: r1 := @parameter2: java.lang.CharSequence 
(assert (not (= var189 null-String)))
(declare-const var319 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var319 null-Bool)))
(define-const var435 Int (String_length/-667254855 var189)) ; Statement: $i1 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(define-const var1850 Bool (var1381_isSubEquals/568409954 var3220 var2484 var189 0 var435 var319)) ; Statement: $z1 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isSubEquals(java.lang.CharSequence,int,java.lang.CharSequence,int,int,boolean)>(r0, i0, r1, 0, $i1, z0) 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), var1381_isSubEquals/568409954=([java.lang.CharSequence, int, java.lang.CharSequence, int, int, boolean], boolean)}
; {var3220=r0, var2484=i0, var189=r1, var319=z0, var435=$i1, var1381=cn.hutool.core.text.CharSequenceUtil, var1850=$z1}
; {r0=var3220, i0=var2484, r1=var189, z0=var319, $i1=var435, cn.hutool.core.text.CharSequenceUtil=var1381, $z1=var1850}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	i0 := @parameter1: int;	r1 := @parameter2: java.lang.CharSequence;	z0 := @parameter3: boolean;	$i1 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	$z1 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isSubEquals(java.lang.CharSequence,int,java.lang.CharSequence,int,int,boolean)>(r0, i0, r1, 0, $i1, z0);	return $z1
;block_num 1