(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var947 0)
(declare-sort var1113 0)
(declare-sort var2019 0)
(declare-sort var337 0)
(declare-sort var1254 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun limit/2102002819 (var2019) Int)
(declare-fun cast-from-var1113-to-var2019 (var1113) var2019)
(declare-fun var337-init () var337)
(declare-fun arr-var1254-init () (Array Int var1254))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1254 (Int) var1254)
(declare-fun String_format/1339386452 (String (Array Int var1254)) String)
(declare-fun <init>/-1057600344 (var337 String) void)
(declare-const null-var947 var947)
(declare-const null-Int Int)
(declare-const null-var1113 var1113)
(declare-const null-__Array__Int__var1254__ (Array Int var1254))
(declare-const var2492 var947) ; Statement: r7 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnsafeProcessor 
(assert (not (= var2492 null-var947)))
(declare-const var3240 Int) ; Statement: i11 := @parameter0: int 
(assert (not (= var3240 null-Int)))
(declare-const var1080 var1113) ; Statement: r0 := @parameter1: java.nio.ByteBuffer 
(assert (not (= var1080 null-var1113)))
(declare-const var2259 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2259 null-Int)))
(declare-const var2537 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var2537 null-Int)))
(define-const var927 Int (bv2nat (bvor ((_ int2bv 64) var2259) ((_ int2bv 64) var2537)))) ; Statement: $i4 = i0 | i1 
(assert true)
(define-const var3026 Int (limit/2102002819 (cast-from-var1113-to-var2019 var1080))) ; Statement: $i2 = virtualinvoke r0.<java.nio.ByteBuffer: int limit()>() 
(define-const var1887 Int (- var3026 var2537)) ; Statement: $i3 = $i2 - i1 
(define-const var1992 Int (bv2nat (bvor ((_ int2bv 64) var927) ((_ int2bv 64) var1887)))) ; Statement: $i5 = $i4 | $i3 
 ; Statement: if $i5 >= 0 goto $l7 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.UnsafeUtil: long addressOffset(java.nio.ByteBuffer)>(r0) 
(assert (not (>= var1992 0))) ; Negate: Cond: $i5 >= 0  
(define-const var269 var337 var337-init) ; Statement: $r8 = new java.lang.ArrayIndexOutOfBoundsException 
(define-const var2844 (Array Int var1254) arr-var1254-init) ; Statement: $r2 = newarray (java.lang.Object)[3] 
(assert true)
(define-const var3113 Int (limit/2102002819 (cast-from-var1113-to-var2019 var1080))) ; Statement: $i38 = virtualinvoke r0.<java.nio.ByteBuffer: int limit()>() 
(define-const var434 Int (Int_valueOf/-1371140006 var3113)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i38) 
(declare-const var2844!1 (Array Int var1254))
(assert (not (= var2844!1 null-__Array__Int__var1254__)))
(assert (= (select var2844!1 0) (cast-from-Int-to-var1254 var434))) ; Statement: $r2[0] = $r3 
(define-const var2061 Int (Int_valueOf/-1371140006 var2259)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var2844!2 (Array Int var1254))
(assert (not (= var2844!2 null-__Array__Int__var1254__)))
(assert (= (select var2844!2 1) (cast-from-Int-to-var1254 var2061))) ; Statement: $r2[1] = $r4 
(define-const var8 Int (Int_valueOf/-1371140006 var2537)) ; Statement: $r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1) 
(declare-const var2844!3 (Array Int var1254))
(assert (not (= var2844!3 null-__Array__Int__var1254__)))
(assert (= (select var2844!3 2) (cast-from-Int-to-var1254 var8))) ; Statement: $r2[2] = $r5 
(define-const var1525 String (String_format/1339386452 "buffer limit=%d, index=%d, limit=%d" var2844!3)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("buffer limit=%d, index=%d, limit=%d", $r2) 
(assert true)
;(assert (<init>/-1057600344 var269 var1525)) ; Statement: specialinvoke $r8.<java.lang.ArrayIndexOutOfBoundsException: void <init>(java.lang.String)>($r6) 

(declare-const var269!1 var337)
(declare-const var1525!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {limit/2102002819=([java.nio.Buffer], int), cast-from-var1113-to-var2019=([java.nio.ByteBuffer], java.nio.Buffer), var337-init=([], java.lang.ArrayIndexOutOfBoundsException), arr-var1254-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1254=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1057600344=([java.lang.ArrayIndexOutOfBoundsException, java.lang.String], void)}
; {var947=com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnsafeProcessor, var2492=r7, var3240=i11, var1113=java.nio.ByteBuffer, var1080=r0, var2259=i0, var2537=i1, var927=$i4, var2019=java.nio.Buffer, var3026=$i2, var1887=$i3, var1992=$i5, var337=java.lang.ArrayIndexOutOfBoundsException, var269=$r8, var1254=java.lang.Object, var2844=$r2, var3113=$i38, var434=$r3, var2061=$r4, var8=$r5, var1525=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnsafeProcessor=var947, r7=var2492, i11=var3240, java.nio.ByteBuffer=var1113, r0=var1080, i0=var2259, i1=var2537, $i4=var927, java.nio.Buffer=var2019, $i2=var3026, $i3=var1887, $i5=var1992, java.lang.ArrayIndexOutOfBoundsException=var337, $r8=var269, java.lang.Object=var1254, $r2=var2844, $i38=var3113, $r3=var434, $r4=var2061, $r5=var8, $r6=var1525}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnsafeProcessor;	i11 := @parameter0: int;	r0 := @parameter1: java.nio.ByteBuffer;	i0 := @parameter2: int;	i1 := @parameter3: int;	$i4 = i0 | i1;	$i2 = virtualinvoke r0.<java.nio.ByteBuffer: int limit()>();	$i3 = $i2 - i1;	$i5 = $i4 | $i3;	if $i5 >= 0 goto $l7 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.UnsafeUtil: long addressOffset(java.nio.ByteBuffer)>(r0);	$r8 = new java.lang.ArrayIndexOutOfBoundsException;	$r2 = newarray (java.lang.Object)[3];	$i38 = virtualinvoke r0.<java.nio.ByteBuffer: int limit()>();	$r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i38);	$r2[0] = $r3;	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r2[1] = $r4;	$r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1);	$r2[2] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("buffer limit=%d, index=%d, limit=%d", $r2);	specialinvoke $r8.<java.lang.ArrayIndexOutOfBoundsException: void <init>(java.lang.String)>($r6);	throw $r8
;block_num 2