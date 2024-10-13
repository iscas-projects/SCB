(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1395 0)
(declare-sort var3707 0)
(declare-sort var787 0)
(declare-sort var339 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/548216533 (var1395) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun size/548216533 (var1395) Int)
(declare-fun var787-init () var787)
(declare-fun arr-var339-init () (Array Int var339))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var339 (Int) var339)
(declare-fun String_format/1339386452 (String (Array Int var339)) String)
(declare-fun <init>/-1557872005 (var787 String) void)
(declare-const null-var1395 var1395)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__var339__ (Array Int var339))
(declare-const var3511 var1395) ; Statement: r0 := @this: jdk.jfr.internal.consumer.RecordingInput 
(assert (not (= var3511 null-var1395)))
(declare-const var1016 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1016 null-Int)))
(declare-const var1808 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1808 null-String)))
(define-const var2556 Int (position/548216533 var3511)) ; Statement: $l2 = r0.<jdk.jfr.internal.consumer.RecordingInput: long position> 
(define-const var1867 Int (cast-from-Int-to-Int var1016)) ; Statement: $l1 = (long) i0 
(define-const var3379 Int (+ var2556 var1867)) ; Statement: $l4 = $l2 + $l1 
(define-const var1262 Int (size/548216533 var3511)) ; Statement: $l3 = r0.<jdk.jfr.internal.consumer.RecordingInput: long size> 
(define-const var3593 Int (ite (> var3379 var1262) 1 (ite (< var3379 var1262) (- 1) 0))) ; Statement: $b5 = $l4 cmp $l3 
(define-const var54 Int (cast-from-Int-to-Int var3593)) ; Statement: $i6 = (int) $b5 
 ; Statement: if $i6 <= 0 goto return 
(assert (not (<= var54 0))) ; Negate: Cond: $i6 <= 0  
(define-const var3223 var787 var787-init) ; Statement: $r6 = new java.io.IOException 
(define-const var3520 (Array Int var339) arr-var339-init) ; Statement: $r3 = newarray (java.lang.Object)[1] 
(define-const var883 Int (Int_valueOf/-1371140006 var1016)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var3520!1 (Array Int var339))
(assert (not (= var3520!1 null-__Array__Int__var339__)))
(assert (= (select var3520!1 0) (cast-from-Int-to-var339 var883))) ; Statement: $r3[0] = $r4 
(define-const var1805 String (String_format/1339386452 var1808 var3520!1)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r2, $r3) 
(assert true)
;(assert (<init>/-1557872005 var3223 var1805)) ; Statement: specialinvoke $r6.<java.io.IOException: void <init>(java.lang.String)>($r5) 

(declare-const var3223!1 var787)
(declare-const var1805!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {position/548216533=([jdk.jfr.internal.consumer.RecordingInput], long), cast-from-Int-to-Int=([int], long), size/548216533=([jdk.jfr.internal.consumer.RecordingInput], long), var787-init=([], java.io.IOException), arr-var339-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var339=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var1395=jdk.jfr.internal.consumer.RecordingInput, var3511=r0, var1016=i0, var1808=r2, var3707=null_type, var2556=$l2, var1867=$l1, var3379=$l4, var1262=$l3, var3593=$b5, var54=$i6, var787=java.io.IOException, var3223=$r6, var339=java.lang.Object, var3520=$r3, var883=$r4, var1805=$r5}
; {jdk.jfr.internal.consumer.RecordingInput=var1395, r0=var3511, i0=var1016, r2=var1808, null_type=var3707, $l2=var2556, $l1=var1867, $l4=var3379, $l3=var1262, $b5=var3593, $i6=var54, java.io.IOException=var787, $r6=var3223, java.lang.Object=var339, $r3=var3520, $r4=var883, $r5=var1805}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: jdk.jfr.internal.consumer.RecordingInput;	i0 := @parameter0: int;	r2 := @parameter1: java.lang.String;	$l2 = r0.<jdk.jfr.internal.consumer.RecordingInput: long position>;	$l1 = (long) i0;	$l4 = $l2 + $l1;	$l3 = r0.<jdk.jfr.internal.consumer.RecordingInput: long size>;	$b5 = $l4 cmp $l3;	$i6 = (int) $b5;	if $i6 <= 0 goto return;	$r6 = new java.io.IOException;	$r3 = newarray (java.lang.Object)[1];	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r3[0] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r2, $r3);	specialinvoke $r6.<java.io.IOException: void <init>(java.lang.String)>($r5);	throw $r6
;block_num 2