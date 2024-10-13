(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1556 0)
(declare-sort var785 0)
(declare-sort var3394 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var785-init () var785)
(declare-fun arr-var3394-init () (Array Int var3394))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var3394 (Int) var3394)
(declare-fun String_format/1339386452 (String (Array Int var3394)) String)
(declare-fun <init>/-1057600344 (var785 String) void)
(declare-const null-var1556 var1556)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-__Array__Int__var3394__ (Array Int var3394))
(declare-const var3981 var1556) ; Statement: r12 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$SafeProcessor 
(assert (not (= var3981 null-var1556)))
(declare-const var2925 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var2925 null-__Array__Int__Int__)))
(declare-const var2852 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2852 null-Int)))
(declare-const var3319 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3319 null-Int)))
(define-const var959 Int (bv2nat (bvor ((_ int2bv 64) var2852) ((_ int2bv 64) var3319)))) ; Statement: $i5 = i0 | i1 
(define-const var1329 Int (getLength-Arr-Int-1 var2925)) ; Statement: $i2 = lengthof r0 
(define-const var2952 Int (- var1329 var2852)) ; Statement: $i3 = $i2 - i0 
(define-const var1856 Int (- var2952 var3319)) ; Statement: $i4 = $i3 - i1 
(define-const var1436 Int (bv2nat (bvor ((_ int2bv 64) var959) ((_ int2bv 64) var1856)))) ; Statement: $i6 = $i5 | $i4 
 ; Statement: if $i6 >= 0 goto i25 = i0 
(assert (not (>= var1436 0))) ; Negate: Cond: $i6 >= 0  
(define-const var3915 var785 var785-init) ; Statement: $r6 = new java.lang.ArrayIndexOutOfBoundsException 
(define-const var3285 (Array Int var3394) arr-var3394-init) ; Statement: $r7 = newarray (java.lang.Object)[3] 
(define-const var3130 Int (getLength-Arr-Int-1 var2925)) ; Statement: $i24 = lengthof r0 
(define-const var3033 Int (Int_valueOf/-1371140006 var3130)) ; Statement: $r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i24) 
(declare-const var3285!1 (Array Int var3394))
(assert (not (= var3285!1 null-__Array__Int__var3394__)))
(assert (= (select var3285!1 0) (cast-from-Int-to-var3394 var3033))) ; Statement: $r7[0] = $r8 
(define-const var3315 Int (Int_valueOf/-1371140006 var2852)) ; Statement: $r9 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var3285!2 (Array Int var3394))
(assert (not (= var3285!2 null-__Array__Int__var3394__)))
(assert (= (select var3285!2 1) (cast-from-Int-to-var3394 var3315))) ; Statement: $r7[1] = $r9 
(define-const var2278 Int (Int_valueOf/-1371140006 var3319)) ; Statement: $r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1) 
(declare-const var3285!3 (Array Int var3394))
(assert (not (= var3285!3 null-__Array__Int__var3394__)))
(assert (= (select var3285!3 2) (cast-from-Int-to-var3394 var2278))) ; Statement: $r7[2] = $r10 
(define-const var2402 String (String_format/1339386452 "buffer length=%d, index=%d, size=%d" var3285!3)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("buffer length=%d, index=%d, size=%d", $r7) 
(assert true)
;(assert (<init>/-1057600344 var3915 var2402)) ; Statement: specialinvoke $r6.<java.lang.ArrayIndexOutOfBoundsException: void <init>(java.lang.String)>($r11) 

(declare-const var3915!1 var785)
(declare-const var2402!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Int-1=([byte[]], int), var785-init=([], java.lang.ArrayIndexOutOfBoundsException), arr-var3394-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var3394=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1057600344=([java.lang.ArrayIndexOutOfBoundsException, java.lang.String], void)}
; {var1556=com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$SafeProcessor, var3981=r12, var2925=r0, var2852=i0, var3319=i1, var959=$i5, var1329=$i2, var2952=$i3, var1856=$i4, var1436=$i6, var785=java.lang.ArrayIndexOutOfBoundsException, var3915=$r6, var3394=java.lang.Object, var3285=$r7, var3130=$i24, var3033=$r8, var3315=$r9, var2278=$r10, var2402=$r11}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$SafeProcessor=var1556, r12=var3981, r0=var2925, i0=var2852, i1=var3319, $i5=var959, $i2=var1329, $i3=var2952, $i4=var1856, $i6=var1436, java.lang.ArrayIndexOutOfBoundsException=var785, $r6=var3915, java.lang.Object=var3394, $r7=var3285, $i24=var3130, $r8=var3033, $r9=var3315, $r10=var2278, $r11=var2402}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r12 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$SafeProcessor;	r0 := @parameter0: byte[];	i0 := @parameter1: int;	i1 := @parameter2: int;	$i5 = i0 | i1;	$i2 = lengthof r0;	$i3 = $i2 - i0;	$i4 = $i3 - i1;	$i6 = $i5 | $i4;	if $i6 >= 0 goto i25 = i0;	$r6 = new java.lang.ArrayIndexOutOfBoundsException;	$r7 = newarray (java.lang.Object)[3];	$i24 = lengthof r0;	$r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i24);	$r7[0] = $r8;	$r9 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r7[1] = $r9;	$r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1);	$r7[2] = $r10;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("buffer length=%d, index=%d, size=%d", $r7);	specialinvoke $r6.<java.lang.ArrayIndexOutOfBoundsException: void <init>(java.lang.String)>($r11);	throw $r6
;block_num 2