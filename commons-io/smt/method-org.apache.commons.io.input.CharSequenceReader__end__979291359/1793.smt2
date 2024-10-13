(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var706 0)
(declare-sort var3179 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun charSequence/759679242 (var706) String)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun end/759679242 (var706) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun var3179_min/-1112089438 (Int Int) Int)
(declare-const null-var706 var706)
(declare-const null-Int Int)
(declare-const var1639 var706) ; Statement: r0 := @this: org.apache.commons.io.input.CharSequenceReader 
(assert (not (= var1639 null-var706)))
(define-const var1236 String (charSequence/759679242 var1639)) ; Statement: $r1 = r0.<org.apache.commons.io.input.CharSequenceReader: java.lang.CharSequence charSequence> 
(define-const var1996 Int (String_length/-667254855 var1236)) ; Statement: $i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>() 
(define-const var1634 Int (end/759679242 var1639)) ; Statement: $r2 = r0.<org.apache.commons.io.input.CharSequenceReader: java.lang.Integer end> 
 ; Statement: if $r2 != null goto $r3 = r0.<org.apache.commons.io.input.CharSequenceReader: java.lang.Integer end> 
(assert (not (= var1634 null-Int))) ; Cond: $r2 != null 
(define-const var3840 Int (end/759679242 var1639)) ; Statement: $r3 = r0.<org.apache.commons.io.input.CharSequenceReader: java.lang.Integer end> 
(assert true)
(define-const var2077 Int (intValue/-1815674922 var3840)) ; Statement: $i2 = virtualinvoke $r3.<java.lang.Integer: int intValue()>() 
(assert true) ; Non Conditional
(define-const var343 Int (var3179_min/-1112089438 var1996 var2077)) ; Statement: $i1 = staticinvoke <java.lang.Math: int min(int,int)>($i0, $i2) 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {charSequence/759679242=([org.apache.commons.io.input.CharSequenceReader], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), end/759679242=([org.apache.commons.io.input.CharSequenceReader], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int), var3179_min/-1112089438=([int, int], int)}
; {var706=org.apache.commons.io.input.CharSequenceReader, var1639=r0, var1236=$r1, var1996=$i0, var1634=$r2, var3840=$r3, var2077=$i2, var3179=java.lang.Math, var343=$i1}
; {org.apache.commons.io.input.CharSequenceReader=var706, r0=var1639, $r1=var1236, $i0=var1996, $r2=var1634, $r3=var3840, $i2=var2077, java.lang.Math=var3179, $i1=var343}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: org.apache.commons.io.input.CharSequenceReader;	$r1 = r0.<org.apache.commons.io.input.CharSequenceReader: java.lang.CharSequence charSequence>;	$i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>();	$r2 = r0.<org.apache.commons.io.input.CharSequenceReader: java.lang.Integer end>;	if $r2 != null goto $r3 = r0.<org.apache.commons.io.input.CharSequenceReader: java.lang.Integer end>;	$r3 = r0.<org.apache.commons.io.input.CharSequenceReader: java.lang.Integer end>;	$i2 = virtualinvoke $r3.<java.lang.Integer: int intValue()>();	$i1 = staticinvoke <java.lang.Math: int min(int,int)>($i0, $i2);	return $i1
;block_num 3