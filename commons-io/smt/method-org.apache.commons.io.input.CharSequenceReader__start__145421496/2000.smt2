(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3432 0)
(declare-sort var1279 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun charSequence/759679242 (var3432) String)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun start/759679242 (var3432) Int)
(declare-fun var1279_min/-1112089438 (Int Int) Int)
(declare-const null-var3432 var3432)
(declare-const var877 var3432) ; Statement: r0 := @this: org.apache.commons.io.input.CharSequenceReader 
(assert (not (= var877 null-var3432)))
(define-const var3116 String (charSequence/759679242 var877)) ; Statement: $r1 = r0.<org.apache.commons.io.input.CharSequenceReader: java.lang.CharSequence charSequence> 
(define-const var827 Int (String_length/-667254855 var3116)) ; Statement: $i1 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>() 
(define-const var639 Int (start/759679242 var877)) ; Statement: $i0 = r0.<org.apache.commons.io.input.CharSequenceReader: int start> 
(define-const var256 Int (var1279_min/-1112089438 var827 var639)) ; Statement: $i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0) 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {charSequence/759679242=([org.apache.commons.io.input.CharSequenceReader], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), start/759679242=([org.apache.commons.io.input.CharSequenceReader], int), var1279_min/-1112089438=([int, int], int)}
; {var3432=org.apache.commons.io.input.CharSequenceReader, var877=r0, var3116=$r1, var827=$i1, var639=$i0, var1279=java.lang.Math, var256=$i2}
; {org.apache.commons.io.input.CharSequenceReader=var3432, r0=var877, $r1=var3116, $i1=var827, $i0=var639, java.lang.Math=var1279, $i2=var256}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: org.apache.commons.io.input.CharSequenceReader;	$r1 = r0.<org.apache.commons.io.input.CharSequenceReader: java.lang.CharSequence charSequence>;	$i1 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>();	$i0 = r0.<org.apache.commons.io.input.CharSequenceReader: int start>;	$i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0);	return $i2
;block_num 1