(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3568 0)
(declare-sort var3808 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun charSequence/759679242 (var3568) String)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun end/759679242 (var3568) Int)
(declare-fun var3808_min/-1112089438 (Int Int) Int)
(declare-const null-var3568 var3568)
(declare-const null-Int Int)
(declare-const var3547 var3568) ; Statement: r0 := @this: org.apache.commons.io.input.CharSequenceReader 
(assert (not (= var3547 null-var3568)))
(define-const var2437 String (charSequence/759679242 var3547)) ; Statement: $r1 = r0.<org.apache.commons.io.input.CharSequenceReader: java.lang.CharSequence charSequence> 
(define-const var2703 Int (String_length/-667254855 var2437)) ; Statement: $i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>() 
(define-const var1371 Int (end/759679242 var3547)) ; Statement: $r2 = r0.<org.apache.commons.io.input.CharSequenceReader: java.lang.Integer end> 
 ; Statement: if $r2 != null goto $r3 = r0.<org.apache.commons.io.input.CharSequenceReader: java.lang.Integer end> 
(assert (not (not (= var1371 null-Int)))) ; Negate: Cond: $r2 != null  
(define-const var550 Int 2147483647) ; Statement: $i2 = 2147483647 
 ; Statement: goto [?= $i1 = staticinvoke <java.lang.Math: int min(int,int)>($i0, $i2)] 
(assert true) ; Non Conditional
(define-const var2982 Int (var3808_min/-1112089438 var2703 var550)) ; Statement: $i1 = staticinvoke <java.lang.Math: int min(int,int)>($i0, $i2) 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {charSequence/759679242=([org.apache.commons.io.input.CharSequenceReader], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), end/759679242=([org.apache.commons.io.input.CharSequenceReader], java.lang.Integer), var3808_min/-1112089438=([int, int], int)}
; {var3568=org.apache.commons.io.input.CharSequenceReader, var3547=r0, var2437=$r1, var2703=$i0, var1371=$r2, var550=$i2, var3808=java.lang.Math, var2982=$i1}
; {org.apache.commons.io.input.CharSequenceReader=var3568, r0=var3547, $r1=var2437, $i0=var2703, $r2=var1371, $i2=var550, java.lang.Math=var3808, $i1=var2982}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: org.apache.commons.io.input.CharSequenceReader;	$r1 = r0.<org.apache.commons.io.input.CharSequenceReader: java.lang.CharSequence charSequence>;	$i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>();	$r2 = r0.<org.apache.commons.io.input.CharSequenceReader: java.lang.Integer end>;	if $r2 != null goto $r3 = r0.<org.apache.commons.io.input.CharSequenceReader: java.lang.Integer end>;	$i2 = 2147483647;	goto [?= $i1 = staticinvoke <java.lang.Math: int min(int,int)>($i0, $i2)];	$i1 = staticinvoke <java.lang.Math: int min(int,int)>($i0, $i2);	return $i1
;block_num 3