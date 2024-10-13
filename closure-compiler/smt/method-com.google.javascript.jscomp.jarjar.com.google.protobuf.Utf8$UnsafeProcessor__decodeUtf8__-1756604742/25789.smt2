(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1923 0)
(declare-sort var2842 0)
(declare-sort var3929 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var2842-init () var2842)
(declare-fun arr-var3929-init () (Array Int var3929))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var3929 (Int) var3929)
(declare-fun String_format/1339386452 (String (Array Int var3929)) String)
(declare-fun <init>/-1057600344 (var2842 String) void)
(declare-const null-var1923 var1923)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-__Array__Int__var3929__ (Array Int var3929))
(declare-const var351 var1923) ; Statement: r12 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnsafeProcessor 
(assert (not (= var351 null-var1923)))
(declare-const var1388 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var1388 null-__Array__Int__Int__)))
(declare-const var3285 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3285 null-Int)))
(declare-const var3160 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3160 null-Int)))
(define-const var1911 Int (bv2nat (bvor ((_ int2bv 64) var3285) ((_ int2bv 64) var3160)))) ; Statement: $i5 = i0 | i1 
(define-const var3807 Int (getLength-Arr-Int-1 var1388)) ; Statement: $i2 = lengthof r0 
(define-const var3781 Int (- var3807 var3285)) ; Statement: $i3 = $i2 - i0 
(define-const var3493 Int (- var3781 var3160)) ; Statement: $i4 = $i3 - i1 
(define-const var3982 Int (bv2nat (bvor ((_ int2bv 64) var1911) ((_ int2bv 64) var3493)))) ; Statement: $i6 = $i5 | $i4 
 ; Statement: if $i6 >= 0 goto i34 = i0 
(assert (not (>= var3982 0))) ; Negate: Cond: $i6 >= 0  
(define-const var569 var2842 var2842-init) ; Statement: $r6 = new java.lang.ArrayIndexOutOfBoundsException 
(define-const var3993 (Array Int var3929) arr-var3929-init) ; Statement: $r7 = newarray (java.lang.Object)[3] 
(define-const var1764 Int (getLength-Arr-Int-1 var1388)) ; Statement: $i33 = lengthof r0 
(define-const var3726 Int (Int_valueOf/-1371140006 var1764)) ; Statement: $r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i33) 
(declare-const var3993!1 (Array Int var3929))
(assert (not (= var3993!1 null-__Array__Int__var3929__)))
(assert (= (select var3993!1 0) (cast-from-Int-to-var3929 var3726))) ; Statement: $r7[0] = $r8 
(define-const var3938 Int (Int_valueOf/-1371140006 var3285)) ; Statement: $r9 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var3993!2 (Array Int var3929))
(assert (not (= var3993!2 null-__Array__Int__var3929__)))
(assert (= (select var3993!2 1) (cast-from-Int-to-var3929 var3938))) ; Statement: $r7[1] = $r9 
(define-const var660 Int (Int_valueOf/-1371140006 var3160)) ; Statement: $r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1) 
(declare-const var3993!3 (Array Int var3929))
(assert (not (= var3993!3 null-__Array__Int__var3929__)))
(assert (= (select var3993!3 2) (cast-from-Int-to-var3929 var660))) ; Statement: $r7[2] = $r10 
(define-const var3300 String (String_format/1339386452 "buffer length=%d, index=%d, size=%d" var3993!3)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("buffer length=%d, index=%d, size=%d", $r7) 
(assert true)
;(assert (<init>/-1057600344 var569 var3300)) ; Statement: specialinvoke $r6.<java.lang.ArrayIndexOutOfBoundsException: void <init>(java.lang.String)>($r11) 

(declare-const var569!1 var2842)
(declare-const var3300!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Int-1=([byte[]], int), var2842-init=([], java.lang.ArrayIndexOutOfBoundsException), arr-var3929-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var3929=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1057600344=([java.lang.ArrayIndexOutOfBoundsException, java.lang.String], void)}
; {var1923=com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnsafeProcessor, var351=r12, var1388=r0, var3285=i0, var3160=i1, var1911=$i5, var3807=$i2, var3781=$i3, var3493=$i4, var3982=$i6, var2842=java.lang.ArrayIndexOutOfBoundsException, var569=$r6, var3929=java.lang.Object, var3993=$r7, var1764=$i33, var3726=$r8, var3938=$r9, var660=$r10, var3300=$r11}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnsafeProcessor=var1923, r12=var351, r0=var1388, i0=var3285, i1=var3160, $i5=var1911, $i2=var3807, $i3=var3781, $i4=var3493, $i6=var3982, java.lang.ArrayIndexOutOfBoundsException=var2842, $r6=var569, java.lang.Object=var3929, $r7=var3993, $i33=var1764, $r8=var3726, $r9=var3938, $r10=var660, $r11=var3300}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r12 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnsafeProcessor;	r0 := @parameter0: byte[];	i0 := @parameter1: int;	i1 := @parameter2: int;	$i5 = i0 | i1;	$i2 = lengthof r0;	$i3 = $i2 - i0;	$i4 = $i3 - i1;	$i6 = $i5 | $i4;	if $i6 >= 0 goto i34 = i0;	$r6 = new java.lang.ArrayIndexOutOfBoundsException;	$r7 = newarray (java.lang.Object)[3];	$i33 = lengthof r0;	$r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i33);	$r7[0] = $r8;	$r9 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r7[1] = $r9;	$r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1);	$r7[2] = $r10;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("buffer length=%d, index=%d, size=%d", $r7);	specialinvoke $r6.<java.lang.ArrayIndexOutOfBoundsException: void <init>(java.lang.String)>($r11);	throw $r6
;block_num 2