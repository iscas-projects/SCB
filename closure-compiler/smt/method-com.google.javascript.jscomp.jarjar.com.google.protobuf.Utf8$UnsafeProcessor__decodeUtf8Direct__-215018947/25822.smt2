(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var244 0)
(declare-sort var2581 0)
(declare-sort var3096 0)
(declare-sort var2707 0)
(declare-sort var2907 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun limit/2102002819 (var3096) Int)
(declare-fun cast-from-var2581-to-var3096 (var2581) var3096)
(declare-fun var2707-init () var2707)
(declare-fun arr-var2907-init () (Array Int var2907))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2907 (Int) var2907)
(declare-fun String_format/1339386452 (String (Array Int var2907)) String)
(declare-fun <init>/-1057600344 (var2707 String) void)
(declare-const null-var244 var244)
(declare-const null-var2581 var2581)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var2907__ (Array Int var2907))
(declare-const var3904 var244) ; Statement: r12 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnsafeProcessor 
(assert (not (= var3904 null-var244)))
(declare-const var2266 var2581) ; Statement: r0 := @parameter0: java.nio.ByteBuffer 
(assert (not (= var2266 null-var2581)))
(declare-const var2045 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2045 null-Int)))
(declare-const var1068 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1068 null-Int)))
(define-const var2847 Int (bv2nat (bvor ((_ int2bv 64) var2045) ((_ int2bv 64) var1068)))) ; Statement: $i5 = i0 | i1 
(assert true)
(define-const var1909 Int (limit/2102002819 (cast-from-var2581-to-var3096 var2266))) ; Statement: $i2 = virtualinvoke r0.<java.nio.ByteBuffer: int limit()>() 
(define-const var739 Int (- var1909 var2045)) ; Statement: $i3 = $i2 - i0 
(define-const var1628 Int (- var739 var1068)) ; Statement: $i4 = $i3 - i1 
(define-const var2313 Int (bv2nat (bvor ((_ int2bv 64) var2847) ((_ int2bv 64) var1628)))) ; Statement: $i6 = $i5 | $i4 
 ; Statement: if $i6 >= 0 goto $l8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.UnsafeUtil: long addressOffset(java.nio.ByteBuffer)>(r0) 
(assert (not (>= var2313 0))) ; Negate: Cond: $i6 >= 0  
(define-const var2704 var2707 var2707-init) ; Statement: $r13 = new java.lang.ArrayIndexOutOfBoundsException 
(define-const var3501 (Array Int var2907) arr-var2907-init) ; Statement: $r7 = newarray (java.lang.Object)[3] 
(assert true)
(define-const var1942 Int (limit/2102002819 (cast-from-var2581-to-var3096 var2266))) ; Statement: $i32 = virtualinvoke r0.<java.nio.ByteBuffer: int limit()>() 
(define-const var2026 Int (Int_valueOf/-1371140006 var1942)) ; Statement: $r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i32) 
(declare-const var3501!1 (Array Int var2907))
(assert (not (= var3501!1 null-__Array__Int__var2907__)))
(assert (= (select var3501!1 0) (cast-from-Int-to-var2907 var2026))) ; Statement: $r7[0] = $r8 
(define-const var2713 Int (Int_valueOf/-1371140006 var2045)) ; Statement: $r9 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var3501!2 (Array Int var2907))
(assert (not (= var3501!2 null-__Array__Int__var2907__)))
(assert (= (select var3501!2 1) (cast-from-Int-to-var2907 var2713))) ; Statement: $r7[1] = $r9 
(define-const var569 Int (Int_valueOf/-1371140006 var1068)) ; Statement: $r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1) 
(declare-const var3501!3 (Array Int var2907))
(assert (not (= var3501!3 null-__Array__Int__var2907__)))
(assert (= (select var3501!3 2) (cast-from-Int-to-var2907 var569))) ; Statement: $r7[2] = $r10 
(define-const var2011 String (String_format/1339386452 "buffer limit=%d, index=%d, limit=%d" var3501!3)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("buffer limit=%d, index=%d, limit=%d", $r7) 
(assert true)
;(assert (<init>/-1057600344 var2704 var2011)) ; Statement: specialinvoke $r13.<java.lang.ArrayIndexOutOfBoundsException: void <init>(java.lang.String)>($r11) 

(declare-const var2704!1 var2707)
(declare-const var2011!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {limit/2102002819=([java.nio.Buffer], int), cast-from-var2581-to-var3096=([java.nio.ByteBuffer], java.nio.Buffer), var2707-init=([], java.lang.ArrayIndexOutOfBoundsException), arr-var2907-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2907=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1057600344=([java.lang.ArrayIndexOutOfBoundsException, java.lang.String], void)}
; {var244=com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnsafeProcessor, var3904=r12, var2581=java.nio.ByteBuffer, var2266=r0, var2045=i0, var1068=i1, var2847=$i5, var3096=java.nio.Buffer, var1909=$i2, var739=$i3, var1628=$i4, var2313=$i6, var2707=java.lang.ArrayIndexOutOfBoundsException, var2704=$r13, var2907=java.lang.Object, var3501=$r7, var1942=$i32, var2026=$r8, var2713=$r9, var569=$r10, var2011=$r11}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnsafeProcessor=var244, r12=var3904, java.nio.ByteBuffer=var2581, r0=var2266, i0=var2045, i1=var1068, $i5=var2847, java.nio.Buffer=var3096, $i2=var1909, $i3=var739, $i4=var1628, $i6=var2313, java.lang.ArrayIndexOutOfBoundsException=var2707, $r13=var2704, java.lang.Object=var2907, $r7=var3501, $i32=var1942, $r8=var2026, $r9=var2713, $r10=var569, $r11=var2011}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r12 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnsafeProcessor;	r0 := @parameter0: java.nio.ByteBuffer;	i0 := @parameter1: int;	i1 := @parameter2: int;	$i5 = i0 | i1;	$i2 = virtualinvoke r0.<java.nio.ByteBuffer: int limit()>();	$i3 = $i2 - i0;	$i4 = $i3 - i1;	$i6 = $i5 | $i4;	if $i6 >= 0 goto $l8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.UnsafeUtil: long addressOffset(java.nio.ByteBuffer)>(r0);	$r13 = new java.lang.ArrayIndexOutOfBoundsException;	$r7 = newarray (java.lang.Object)[3];	$i32 = virtualinvoke r0.<java.nio.ByteBuffer: int limit()>();	$r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i32);	$r7[0] = $r8;	$r9 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r7[1] = $r9;	$r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1);	$r7[2] = $r10;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("buffer limit=%d, index=%d, limit=%d", $r7);	specialinvoke $r13.<java.lang.ArrayIndexOutOfBoundsException: void <init>(java.lang.String)>($r11);	throw $r13
;block_num 2