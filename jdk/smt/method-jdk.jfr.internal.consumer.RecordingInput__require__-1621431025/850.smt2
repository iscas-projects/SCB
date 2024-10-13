(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1137 0)
(declare-sort var528 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/548216533 (var1137) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun size/548216533 (var1137) Int)
(declare-const null-var1137 var1137)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1600 var1137) ; Statement: r0 := @this: jdk.jfr.internal.consumer.RecordingInput 
(assert (not (= var1600 null-var1137)))
(declare-const var597 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var597 null-Int)))
(declare-const var2681 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2681 null-String)))
(define-const var1139 Int (position/548216533 var1600)) ; Statement: $l2 = r0.<jdk.jfr.internal.consumer.RecordingInput: long position> 
(define-const var3963 Int (cast-from-Int-to-Int var597)) ; Statement: $l1 = (long) i0 
(define-const var1595 Int (+ var1139 var3963)) ; Statement: $l4 = $l2 + $l1 
(define-const var798 Int (size/548216533 var1600)) ; Statement: $l3 = r0.<jdk.jfr.internal.consumer.RecordingInput: long size> 
(define-const var1073 Int (ite (> var1595 var798) 1 (ite (< var1595 var798) (- 1) 0))) ; Statement: $b5 = $l4 cmp $l3 
(define-const var2303 Int (cast-from-Int-to-Int var1073)) ; Statement: $i6 = (int) $b5 
 ; Statement: if $i6 <= 0 goto return 
(assert (<= var2303 0)) ; Cond: $i6 <= 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {position/548216533=([jdk.jfr.internal.consumer.RecordingInput], long), cast-from-Int-to-Int=([int], long), size/548216533=([jdk.jfr.internal.consumer.RecordingInput], long)}
; {var1137=jdk.jfr.internal.consumer.RecordingInput, var1600=r0, var597=i0, var2681=r2, var528=null_type, var1139=$l2, var3963=$l1, var1595=$l4, var798=$l3, var1073=$b5, var2303=$i6}
; {jdk.jfr.internal.consumer.RecordingInput=var1137, r0=var1600, i0=var597, r2=var2681, null_type=var528, $l2=var1139, $l1=var3963, $l4=var1595, $l3=var798, $b5=var1073, $i6=var2303}
;seq 
;cnt {}
;stmts r0 := @this: jdk.jfr.internal.consumer.RecordingInput;	i0 := @parameter0: int;	r2 := @parameter1: java.lang.String;	$l2 = r0.<jdk.jfr.internal.consumer.RecordingInput: long position>;	$l1 = (long) i0;	$l4 = $l2 + $l1;	$l3 = r0.<jdk.jfr.internal.consumer.RecordingInput: long size>;	$b5 = $l4 cmp $l3;	$i6 = (int) $b5;	if $i6 <= 0 goto return;	return
;block_num 2