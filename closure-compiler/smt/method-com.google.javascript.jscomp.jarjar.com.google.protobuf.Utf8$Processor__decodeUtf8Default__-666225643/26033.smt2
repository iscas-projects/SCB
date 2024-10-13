(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var51 0)
(declare-sort var1558 0)
(declare-sort var232 0)
(declare-sort var255 0)
(declare-sort var2539 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun limit/2102002819 (var232) Int)
(declare-fun cast-from-var1558-to-var232 (var1558) var232)
(declare-fun var255-init () var255)
(declare-fun arr-var2539-init () (Array Int var2539))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2539 (Int) var2539)
(declare-fun String_format/1339386452 (String (Array Int var2539)) String)
(declare-fun <init>/-1057600344 (var255 String) void)
(declare-const null-var51 var51)
(declare-const null-var1558 var1558)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var2539__ (Array Int var2539))
(declare-const var453 var51) ; Statement: r12 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$Processor 
(assert (not (= var453 null-var51)))
(declare-const var3663 var1558) ; Statement: r0 := @parameter0: java.nio.ByteBuffer 
(assert (not (= var3663 null-var1558)))
(declare-const var2501 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2501 null-Int)))
(declare-const var2061 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2061 null-Int)))
(define-const var2775 Int (bv2nat (bvor ((_ int2bv 64) var2501) ((_ int2bv 64) var2061)))) ; Statement: $i5 = i0 | i1 
(assert true)
(define-const var2425 Int (limit/2102002819 (cast-from-var1558-to-var232 var3663))) ; Statement: $i2 = virtualinvoke r0.<java.nio.ByteBuffer: int limit()>() 
(define-const var3123 Int (- var2425 var2501)) ; Statement: $i3 = $i2 - i0 
(define-const var2382 Int (- var3123 var2061)) ; Statement: $i4 = $i3 - i1 
(define-const var1149 Int (bv2nat (bvor ((_ int2bv 64) var2775) ((_ int2bv 64) var2382)))) ; Statement: $i6 = $i5 | $i4 
 ; Statement: if $i6 >= 0 goto i25 = i0 
(assert (not (>= var1149 0))) ; Negate: Cond: $i6 >= 0  
(define-const var3921 var255 var255-init) ; Statement: $r6 = new java.lang.ArrayIndexOutOfBoundsException 
(define-const var381 (Array Int var2539) arr-var2539-init) ; Statement: $r7 = newarray (java.lang.Object)[3] 
(assert true)
(define-const var1569 Int (limit/2102002819 (cast-from-var1558-to-var232 var3663))) ; Statement: $i24 = virtualinvoke r0.<java.nio.ByteBuffer: int limit()>() 
(define-const var879 Int (Int_valueOf/-1371140006 var1569)) ; Statement: $r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i24) 
(declare-const var381!1 (Array Int var2539))
(assert (not (= var381!1 null-__Array__Int__var2539__)))
(assert (= (select var381!1 0) (cast-from-Int-to-var2539 var879))) ; Statement: $r7[0] = $r8 
(define-const var1781 Int (Int_valueOf/-1371140006 var2501)) ; Statement: $r9 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var381!2 (Array Int var2539))
(assert (not (= var381!2 null-__Array__Int__var2539__)))
(assert (= (select var381!2 1) (cast-from-Int-to-var2539 var1781))) ; Statement: $r7[1] = $r9 
(define-const var572 Int (Int_valueOf/-1371140006 var2061)) ; Statement: $r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1) 
(declare-const var381!3 (Array Int var2539))
(assert (not (= var381!3 null-__Array__Int__var2539__)))
(assert (= (select var381!3 2) (cast-from-Int-to-var2539 var572))) ; Statement: $r7[2] = $r10 
(define-const var2358 String (String_format/1339386452 "buffer limit=%d, index=%d, limit=%d" var381!3)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("buffer limit=%d, index=%d, limit=%d", $r7) 
(assert true)
;(assert (<init>/-1057600344 var3921 var2358)) ; Statement: specialinvoke $r6.<java.lang.ArrayIndexOutOfBoundsException: void <init>(java.lang.String)>($r11) 

(declare-const var3921!1 var255)
(declare-const var2358!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {limit/2102002819=([java.nio.Buffer], int), cast-from-var1558-to-var232=([java.nio.ByteBuffer], java.nio.Buffer), var255-init=([], java.lang.ArrayIndexOutOfBoundsException), arr-var2539-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2539=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1057600344=([java.lang.ArrayIndexOutOfBoundsException, java.lang.String], void)}
; {var51=com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$Processor, var453=r12, var1558=java.nio.ByteBuffer, var3663=r0, var2501=i0, var2061=i1, var2775=$i5, var232=java.nio.Buffer, var2425=$i2, var3123=$i3, var2382=$i4, var1149=$i6, var255=java.lang.ArrayIndexOutOfBoundsException, var3921=$r6, var2539=java.lang.Object, var381=$r7, var1569=$i24, var879=$r8, var1781=$r9, var572=$r10, var2358=$r11}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$Processor=var51, r12=var453, java.nio.ByteBuffer=var1558, r0=var3663, i0=var2501, i1=var2061, $i5=var2775, java.nio.Buffer=var232, $i2=var2425, $i3=var3123, $i4=var2382, $i6=var1149, java.lang.ArrayIndexOutOfBoundsException=var255, $r6=var3921, java.lang.Object=var2539, $r7=var381, $i24=var1569, $r8=var879, $r9=var1781, $r10=var572, $r11=var2358}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r12 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$Processor;	r0 := @parameter0: java.nio.ByteBuffer;	i0 := @parameter1: int;	i1 := @parameter2: int;	$i5 = i0 | i1;	$i2 = virtualinvoke r0.<java.nio.ByteBuffer: int limit()>();	$i3 = $i2 - i0;	$i4 = $i3 - i1;	$i6 = $i5 | $i4;	if $i6 >= 0 goto i25 = i0;	$r6 = new java.lang.ArrayIndexOutOfBoundsException;	$r7 = newarray (java.lang.Object)[3];	$i24 = virtualinvoke r0.<java.nio.ByteBuffer: int limit()>();	$r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i24);	$r7[0] = $r8;	$r9 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r7[1] = $r9;	$r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1);	$r7[2] = $r10;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("buffer limit=%d, index=%d, limit=%d", $r7);	specialinvoke $r6.<java.lang.ArrayIndexOutOfBoundsException: void <init>(java.lang.String)>($r11);	throw $r6
;block_num 2