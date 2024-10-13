(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3332 0)
(declare-sort var1350 0)
(declare-sort var2490 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3332-init () (Array Int var3332))
(declare-fun var1350_notEmpty/-1155658648 (String String (Array Int var3332)) String)
(declare-fun String_charAt/1466887330 (String Int) Int)
(declare-fun var2490_count/1095128463 (String Int) Int)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-String String)
(declare-const var477 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var477 null-String)))
(define-const var434 (Array Int var3332) arr-var3332-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var1350_notEmpty/-1155658648 var477 "Str to check must be not empty!" var434)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notEmpty(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r0, "Str to check must be not empty!", $r1) 

(declare-const var477!1 String)
(declare-const var3884 String)
(declare-const var434!1 (Array Int var3332))
(define-const var3811 Int (String_charAt/1466887330 var477!1 0)) ; Statement: $c0 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(0) 
(define-const var2200 Int (var2490_count/1095128463 var477!1 var3811)) ; Statement: $i2 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: int count(java.lang.CharSequence,char)>(r0, $c0) 
(define-const var2856 Int (String_length/-667254855 var477!1)) ; Statement: $i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i2 != $i1 goto $z0 = 0 
(assert (not (not (= var2200 var2856)))) ; Negate: Cond: $i2 != $i1  
(define-const var3674 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= return $z0] 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3332-init=([], java.lang.Object[]), var1350_notEmpty/-1155658648=([java.lang.CharSequence, java.lang.String, java.lang.Object[]], java.lang.CharSequence), String_charAt/1466887330=([java.lang.CharSequence, int], char), var2490_count/1095128463=([java.lang.CharSequence, char], int), String_length/-667254855=([java.lang.CharSequence], int)}
; {var477=r0, var3332=java.lang.Object, var434=$r1, var1350=cn.hutool.core.lang.Assert, var3884="Str to check must be not empty!", var3811=$c0, var2490=cn.hutool.core.text.CharSequenceUtil, var2200=$i2, var2856=$i1, var3674=$z0}
; {r0=var477, java.lang.Object=var3332, $r1=var434, cn.hutool.core.lang.Assert=var1350, "Str to check must be not empty!"=var3884, $c0=var3811, cn.hutool.core.text.CharSequenceUtil=var2490, $i2=var2200, $i1=var2856, $z0=var3674}
;seq <java.lang.CharSequence: char charAt(int)>;	<java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: char charAt(int)>": 1,"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notEmpty(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r0, "Str to check must be not empty!", $r1);	$c0 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(0);	$i2 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: int count(java.lang.CharSequence,char)>(r0, $c0);	$i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if $i2 != $i1 goto $z0 = 0;	$z0 = 1;	goto [?= return $z0];	return $z0
;block_num 3