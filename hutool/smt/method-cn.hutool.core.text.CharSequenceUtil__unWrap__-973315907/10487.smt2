(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1713 0)
(declare-sort var1472 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1472_isWrap/1383528585 (String String String) Bool)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var1472_sub/-2049909290 (String Int Int) String)
(declare-const null-String String)
(declare-const var1377 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1377 null-String)))
(declare-const var519 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var519 null-String)))
(declare-const var3545 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var3545 null-String)))
(define-const var1776 Bool (var1472_isWrap/1383528585 var1377 var519 var3545)) ; Statement: $z0 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isWrap(java.lang.CharSequence,java.lang.String,java.lang.String)>(r0, r1, r2) 
 ; Statement: if $z0 == 0 goto $r3 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert (not (= (ite var1776 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var226 Int (length/-134980193 var519)) ; Statement: $i3 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2328 Int (String_length/-667254855 var1377)) ; Statement: $i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert true)
(define-const var890 Int (length/-134980193 var3545)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var3830 Int (- var2328 var890)) ; Statement: $i2 = $i1 - $i0 
(define-const var2544 String (var1472_sub/-2049909290 var1377 var226 var3830)) ; Statement: $r4 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: java.lang.String sub(java.lang.CharSequence,int,int)>(r0, $i3, $i2) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1472_isWrap/1383528585=([java.lang.CharSequence, java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), String_length/-667254855=([java.lang.CharSequence], int), var1472_sub/-2049909290=([java.lang.CharSequence, int, int], java.lang.String)}
; {var1377=r0, var519=r1, var1713=null_type, var3545=r2, var1472=cn.hutool.core.text.CharSequenceUtil, var1776=$z0, var226=$i3, var2328=$i1, var890=$i0, var3830=$i2, var2544=$r4}
; {r0=var1377, r1=var519, null_type=var1713, r2=var3545, cn.hutool.core.text.CharSequenceUtil=var1472, $z0=var1776, $i3=var226, $i1=var2328, $i0=var890, $i2=var3830, $r4=var2544}
;seq <java.lang.String: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	$z0 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isWrap(java.lang.CharSequence,java.lang.String,java.lang.String)>(r0, r1, r2);	if $z0 == 0 goto $r3 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$i3 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	$i2 = $i1 - $i0;	$r4 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: java.lang.String sub(java.lang.CharSequence,int,int)>(r0, $i3, $i2);	return $r4
;block_num 2