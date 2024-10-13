(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2103 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun verifyOpen/1950655353 (var2103) void)
(declare-fun position/814526081 (var2103) Int)
(declare-fun length/814526081 (var2103) Int)
(declare-fun charSequence/814526081 (var2103) String)
(declare-fun String_charAt/1466887330 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2103 var2103)
(declare-const var1097 var2103) ; Statement: r0 := @this: org.hibernate.internal.util.io.CharSequenceReader 
(assert (not (= var1097 null-var2103)))
(assert true)
;(assert (verifyOpen/1950655353 var1097)) ; Statement: virtualinvoke r0.<org.hibernate.internal.util.io.CharSequenceReader: void verifyOpen()>() 

(declare-const var1097!1 var2103)
(define-const var430 Int (position/814526081 var1097!1)) ; Statement: $i1 = r0.<org.hibernate.internal.util.io.CharSequenceReader: int position> 
(define-const var3599 Int (length/814526081 var1097!1)) ; Statement: $i0 = r0.<org.hibernate.internal.util.io.CharSequenceReader: int length> 
 ; Statement: if $i1 < $i0 goto $r1 = r0.<org.hibernate.internal.util.io.CharSequenceReader: java.lang.CharSequence charSequence> 
(assert (< var430 var3599)) ; Cond: $i1 < $i0 
(define-const var3961 String (charSequence/814526081 var1097!1)) ; Statement: $r1 = r0.<org.hibernate.internal.util.io.CharSequenceReader: java.lang.CharSequence charSequence> 
(define-const var1259 Int (position/814526081 var1097!1)) ; Statement: $i2 = r0.<org.hibernate.internal.util.io.CharSequenceReader: int position> 
(define-const var1536 Int (+ var1259 1)) ; Statement: $i3 = $i2 + 1 
(declare-const var1097!2 var2103)
(assert (not (= var1097!2 null-var2103)))
(assert (= (position/814526081 var1097!2) var1536)) ; Statement: r0.<org.hibernate.internal.util.io.CharSequenceReader: int position> = $i3 
(define-const var2200 Int (String_charAt/1466887330 var3961 var1259)) ; Statement: $c4 = interfaceinvoke $r1.<java.lang.CharSequence: char charAt(int)>($i2) 
(define-const var441 Int (cast-from-Int-to-Int var2200)) ; Statement: $i7 = (int) $c4 
 ; Statement: return $i7 
(check-sat)
(get-model)
(get-unsat-core)
; {verifyOpen/1950655353=([org.hibernate.internal.util.io.CharSequenceReader], void), position/814526081=([org.hibernate.internal.util.io.CharSequenceReader], int), length/814526081=([org.hibernate.internal.util.io.CharSequenceReader], int), charSequence/814526081=([org.hibernate.internal.util.io.CharSequenceReader], java.lang.CharSequence), String_charAt/1466887330=([java.lang.CharSequence, int], char), cast-from-Int-to-Int=([char], int)}
; {var2103=org.hibernate.internal.util.io.CharSequenceReader, var1097=r0, var430=$i1, var3599=$i0, var3961=$r1, var1259=$i2, var1536=$i3, var2200=$c4, var441=$i7}
; {org.hibernate.internal.util.io.CharSequenceReader=var2103, r0=var1097, $i1=var430, $i0=var3599, $r1=var3961, $i2=var1259, $i3=var1536, $c4=var2200, $i7=var441}
;seq <java.lang.CharSequence: char charAt(int)>
;cnt {"<java.lang.CharSequence: char charAt(int)>": 1}
;stmts r0 := @this: org.hibernate.internal.util.io.CharSequenceReader;	virtualinvoke r0.<org.hibernate.internal.util.io.CharSequenceReader: void verifyOpen()>();	$i1 = r0.<org.hibernate.internal.util.io.CharSequenceReader: int position>;	$i0 = r0.<org.hibernate.internal.util.io.CharSequenceReader: int length>;	if $i1 < $i0 goto $r1 = r0.<org.hibernate.internal.util.io.CharSequenceReader: java.lang.CharSequence charSequence>;	$r1 = r0.<org.hibernate.internal.util.io.CharSequenceReader: java.lang.CharSequence charSequence>;	$i2 = r0.<org.hibernate.internal.util.io.CharSequenceReader: int position>;	$i3 = $i2 + 1;	r0.<org.hibernate.internal.util.io.CharSequenceReader: int position> = $i3;	$c4 = interfaceinvoke $r1.<java.lang.CharSequence: char charAt(int)>($i2);	$i7 = (int) $c4;	return $i7
;block_num 2