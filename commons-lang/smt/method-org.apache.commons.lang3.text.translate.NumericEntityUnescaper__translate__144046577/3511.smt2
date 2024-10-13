(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var478 0)
(declare-sort var3929 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun String_charAt/1466887330 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var478 var478)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3929 var3929)
(declare-const var3093 var478) ; Statement: r6 := @this: org.apache.commons.lang3.text.translate.NumericEntityUnescaper 
(assert (not (= var3093 null-var478)))
(declare-const var1112 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1112 null-String)))
(declare-const var3763 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3763 null-Int)))
(declare-const var801 var3929) ; Statement: r3 := @parameter2: java.io.Writer 
(assert (not (= var801 null-var3929)))
(define-const var2962 Int (String_length/-667254855 var1112)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var996 Int (String_charAt/1466887330 var1112 var3763)) ; Statement: $c2 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(i1) 
(define-const var1825 Int (cast-from-Int-to-Int var996)) ; Statement: $i23 = (int) $c2 
 ; Statement: if $i23 != 38 goto return 0 
(assert (not (= var1825 38))) ; Cond: $i23 != 38 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), String_charAt/1466887330=([java.lang.CharSequence, int], char), cast-from-Int-to-Int=([char], int)}
; {var478=org.apache.commons.lang3.text.translate.NumericEntityUnescaper, var3093=r6, var1112=r0, var3763=i1, var3929=java.io.Writer, var801=r3, var2962=i0, var996=$c2, var1825=$i23}
; {org.apache.commons.lang3.text.translate.NumericEntityUnescaper=var478, r6=var3093, r0=var1112, i1=var3763, java.io.Writer=var3929, r3=var801, i0=var2962, $c2=var996, $i23=var1825}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: char charAt(int)>
;cnt {"<java.lang.CharSequence: int length()>": 1,"<java.lang.CharSequence: char charAt(int)>": 1}
;stmts r6 := @this: org.apache.commons.lang3.text.translate.NumericEntityUnescaper;	r0 := @parameter0: java.lang.CharSequence;	i1 := @parameter1: int;	r3 := @parameter2: java.io.Writer;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$c2 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(i1);	$i23 = (int) $c2;	if $i23 != 38 goto return 0;	return 0
;block_num 2