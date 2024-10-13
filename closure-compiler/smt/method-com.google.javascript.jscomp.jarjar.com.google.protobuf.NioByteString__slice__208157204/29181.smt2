(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2995 0)
(declare-sort var3321 0)
(declare-sort var2274 0)
(declare-sort var1526 0)
(declare-sort var954 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/-795301631 (var2995) var3321)
(declare-fun position/38072115 (var2274) Int)
(declare-fun cast-from-var3321-to-var2274 (var3321) var2274)
(declare-fun var1526-init () var1526)
(declare-fun arr-var954-init () (Array Int var954))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var954 (Int) var954)
(declare-fun String_format/1339386452 (String (Array Int var954)) String)
(declare-fun <init>/875830710 (var1526 String) void)
(declare-const null-var2995 var2995)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var954__ (Array Int var954))
(declare-const var711 var2995) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString 
(assert (not (= var711 null-var2995)))
(declare-const var221 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var221 null-Int)))
(declare-const var2458 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var2458 null-Int)))
(define-const var3701 var3321 (buffer/-795301631 var711)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString: java.nio.ByteBuffer buffer> 
(assert true)
(define-const var278 Int (position/38072115 (cast-from-var3321-to-var2274 var3701))) ; Statement: $i1 = virtualinvoke $r1.<java.nio.ByteBuffer: int position()>() 
 ; Statement: if i0 < $i1 goto $r7 = new java.lang.IllegalArgumentException 
(assert (< var221 var278)) ; Cond: i0 < $i1 
(define-const var833 var1526 var1526-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var2446 (Array Int var954) arr-var954-init) ; Statement: $r8 = newarray (java.lang.Object)[2] 
(define-const var936 Int (Int_valueOf/-1371140006 var221)) ; Statement: $r9 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var2446!1 (Array Int var954))
(assert (not (= var2446!1 null-__Array__Int__var954__)))
(assert (= (select var2446!1 0) (cast-from-Int-to-var954 var936))) ; Statement: $r8[0] = $r9 
(define-const var2854 Int (Int_valueOf/-1371140006 var2458)) ; Statement: $r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i2) 
(declare-const var2446!2 (Array Int var954))
(assert (not (= var2446!2 null-__Array__Int__var954__)))
(assert (= (select var2446!2 1) (cast-from-Int-to-var954 var2854))) ; Statement: $r8[1] = $r10 
(define-const var1497 String (String_format/1339386452 "Invalid indices [%d, %d]" var2446!2)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Invalid indices [%d, %d]", $r8) 
(assert true)
;(assert (<init>/875830710 var833 var1497)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var833!1 var1526)
(declare-const var1497!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/-795301631=([com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString], java.nio.ByteBuffer), position/38072115=([java.nio.Buffer], int), cast-from-var3321-to-var2274=([java.nio.ByteBuffer], java.nio.Buffer), var1526-init=([], java.lang.IllegalArgumentException), arr-var954-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var954=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2995=com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString, var711=r0, var221=i0, var2458=i2, var3321=java.nio.ByteBuffer, var3701=$r1, var2274=java.nio.Buffer, var278=$i1, var1526=java.lang.IllegalArgumentException, var833=$r7, var954=java.lang.Object, var2446=$r8, var936=$r9, var2854=$r10, var1497=$r11}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString=var2995, r0=var711, i0=var221, i2=var2458, java.nio.ByteBuffer=var3321, $r1=var3701, java.nio.Buffer=var2274, $i1=var278, java.lang.IllegalArgumentException=var1526, $r7=var833, java.lang.Object=var954, $r8=var2446, $r9=var936, $r10=var2854, $r11=var1497}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString;	i0 := @parameter0: int;	i2 := @parameter1: int;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString: java.nio.ByteBuffer buffer>;	$i1 = virtualinvoke $r1.<java.nio.ByteBuffer: int position()>();	if i0 < $i1 goto $r7 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.IllegalArgumentException;	$r8 = newarray (java.lang.Object)[2];	$r9 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r8[0] = $r9;	$r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i2);	$r8[1] = $r10;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Invalid indices [%d, %d]", $r8);	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r7
;block_num 2