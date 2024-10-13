(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2638 0)
(declare-sort var2725 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun String_charAt/1466887330 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2638 var2638)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var2725 var2725)
(declare-const var2955 var2638) ; Statement: r7 := @this: cn.hutool.core.text.escape.NumericEntityUnescaper 
(assert (not (= var2955 null-var2638)))
(declare-const var2466 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2466 null-String)))
(declare-const var3694 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3694 null-Int)))
(declare-const var3859 var2725) ; Statement: r3 := @parameter2: cn.hutool.core.text.StrBuilder 
(assert (not (= var3859 null-var2725)))
(define-const var2937 Int (String_length/-667254855 var2466)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var3093 Int (String_charAt/1466887330 var2466 var3694)) ; Statement: $c2 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(i1) 
(define-const var2845 Int (cast-from-Int-to-Int var3093)) ; Statement: $i17 = (int) $c2 
 ; Statement: if $i17 != 38 goto return 0 
(assert (not (= var2845 38))) ; Cond: $i17 != 38 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), String_charAt/1466887330=([java.lang.CharSequence, int], char), cast-from-Int-to-Int=([char], int)}
; {var2638=cn.hutool.core.text.escape.NumericEntityUnescaper, var2955=r7, var2466=r0, var3694=i1, var2725=cn.hutool.core.text.StrBuilder, var3859=r3, var2937=i0, var3093=$c2, var2845=$i17}
; {cn.hutool.core.text.escape.NumericEntityUnescaper=var2638, r7=var2955, r0=var2466, i1=var3694, cn.hutool.core.text.StrBuilder=var2725, r3=var3859, i0=var2937, $c2=var3093, $i17=var2845}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: char charAt(int)>
;cnt {"<java.lang.CharSequence: int length()>": 1,"<java.lang.CharSequence: char charAt(int)>": 1}
;stmts r7 := @this: cn.hutool.core.text.escape.NumericEntityUnescaper;	r0 := @parameter0: java.lang.CharSequence;	i1 := @parameter1: int;	r3 := @parameter2: cn.hutool.core.text.StrBuilder;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$c2 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(i1);	$i17 = (int) $c2;	if $i17 != 38 goto return 0;	return 0
;block_num 2