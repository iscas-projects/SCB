(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2569 0)
(declare-sort var3805 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun String_charAt/1466887330 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2569 var2569)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3805 var3805)
(declare-const var3756 var2569) ; Statement: r2 := @this: org.apache.commons.lang3.text.translate.OctalUnescaper 
(assert (not (= var3756 null-var2569)))
(declare-const var3363 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3363 null-String)))
(declare-const var3747 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3747 null-Int)))
(declare-const var2382 var3805) ; Statement: r3 := @parameter2: java.io.Writer 
(assert (not (= var2382 null-var3805)))
(define-const var3324 Int (String_length/-667254855 var3363)) ; Statement: $i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var1866 Int (- var3324 var3747)) ; Statement: $i2 = $i1 - i0 
(define-const var1302 Int (- var1866 1)) ; Statement: i3 = $i2 - 1 
(define-const var903 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var903)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var903!1 String)
(assert (= var903!1 ""))
(define-const var27 Int (String_charAt/1466887330 var3363 var3747)) ; Statement: $c4 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(i0) 
(define-const var1713 Int (cast-from-Int-to-Int var27)) ; Statement: $i19 = (int) $c4 
 ; Statement: if $i19 != 92 goto return 0 
(assert (not (= var1713 92))) ; Cond: $i19 != 92 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), String_charAt/1466887330=([java.lang.CharSequence, int], char), cast-from-Int-to-Int=([char], int)}
; {var2569=org.apache.commons.lang3.text.translate.OctalUnescaper, var3756=r2, var3363=r0, var3747=i0, var3805=java.io.Writer, var2382=r3, var3324=$i1, var1866=$i2, var1302=i3, var903=$r5, var27=$c4, var1713=$i19}
; {org.apache.commons.lang3.text.translate.OctalUnescaper=var2569, r2=var3756, r0=var3363, i0=var3747, java.io.Writer=var3805, r3=var2382, $i1=var3324, $i2=var1866, i3=var1302, $r5=var903, $c4=var27, $i19=var1713}
;seq <java.lang.CharSequence: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.CharSequence: char charAt(int)>
;cnt {"<java.lang.CharSequence: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.CharSequence: char charAt(int)>": 1}
;stmts r2 := @this: org.apache.commons.lang3.text.translate.OctalUnescaper;	r0 := @parameter0: java.lang.CharSequence;	i0 := @parameter1: int;	r3 := @parameter2: java.io.Writer;	$i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i2 = $i1 - i0;	i3 = $i2 - 1;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$c4 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(i0);	$i19 = (int) $c4;	if $i19 != 92 goto return 0;	return 0
;block_num 2