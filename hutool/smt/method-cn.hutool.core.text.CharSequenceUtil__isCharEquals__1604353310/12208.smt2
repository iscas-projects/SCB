(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1570 0)
(declare-sort var3028 0)
(declare-sort var1619 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1570-init () (Array Int var1570))
(declare-fun var3028_notEmpty/-1155658648 (String String (Array Int var1570)) String)
(declare-fun String_charAt/1466887330 (String Int) Int)
(declare-fun var1619_count/1095128463 (String Int) Int)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-String String)
(declare-const var2550 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2550 null-String)))
(define-const var1288 (Array Int var1570) arr-var1570-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var3028_notEmpty/-1155658648 var2550 "Str to check must be not empty!" var1288)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notEmpty(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r0, "Str to check must be not empty!", $r1) 

(declare-const var2550!1 String)
(declare-const var3599 String)
(declare-const var1288!1 (Array Int var1570))
(define-const var1437 Int (String_charAt/1466887330 var2550!1 0)) ; Statement: $c0 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(0) 
(define-const var1788 Int (var1619_count/1095128463 var2550!1 var1437)) ; Statement: $i2 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: int count(java.lang.CharSequence,char)>(r0, $c0) 
(define-const var1170 Int (String_length/-667254855 var2550!1)) ; Statement: $i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i2 != $i1 goto $z0 = 0 
(assert (not (= var1788 var1170))) ; Cond: $i2 != $i1 
(define-const var3124 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1570-init=([], java.lang.Object[]), var3028_notEmpty/-1155658648=([java.lang.CharSequence, java.lang.String, java.lang.Object[]], java.lang.CharSequence), String_charAt/1466887330=([java.lang.CharSequence, int], char), var1619_count/1095128463=([java.lang.CharSequence, char], int), String_length/-667254855=([java.lang.CharSequence], int)}
; {var2550=r0, var1570=java.lang.Object, var1288=$r1, var3028=cn.hutool.core.lang.Assert, var3599="Str to check must be not empty!", var1437=$c0, var1619=cn.hutool.core.text.CharSequenceUtil, var1788=$i2, var1170=$i1, var3124=$z0}
; {r0=var2550, java.lang.Object=var1570, $r1=var1288, cn.hutool.core.lang.Assert=var3028, "Str to check must be not empty!"=var3599, $c0=var1437, cn.hutool.core.text.CharSequenceUtil=var1619, $i2=var1788, $i1=var1170, $z0=var3124}
;seq <java.lang.CharSequence: char charAt(int)>;	<java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: char charAt(int)>": 1,"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notEmpty(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r0, "Str to check must be not empty!", $r1);	$c0 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(0);	$i2 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: int count(java.lang.CharSequence,char)>(r0, $c0);	$i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if $i2 != $i1 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 3