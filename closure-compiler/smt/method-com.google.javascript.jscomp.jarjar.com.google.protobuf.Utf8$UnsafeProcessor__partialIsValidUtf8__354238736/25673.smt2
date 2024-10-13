(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2132 0)
(declare-sort var2648 0)
(declare-sort var1025 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var2648-init () var2648)
(declare-fun arr-var1025-init () (Array Int var1025))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1025 (Int) var1025)
(declare-fun String_format/1339386452 (String (Array Int var1025)) String)
(declare-fun <init>/-1057600344 (var2648 String) void)
(declare-const null-var2132 var2132)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-__Array__Int__var1025__ (Array Int var1025))
(declare-const var2463 var2132) ; Statement: r7 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnsafeProcessor 
(assert (not (= var2463 null-var2132)))
(declare-const var1085 Int) ; Statement: i7 := @parameter0: int 
(assert (not (= var1085 null-Int)))
(declare-const var1953 (Array Int Int)) ; Statement: r0 := @parameter1: byte[] 
(assert (not (= var1953 null-__Array__Int__Int__)))
(declare-const var3894 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3894 null-Int)))
(declare-const var193 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var193 null-Int)))
(define-const var1280 Int (bv2nat (bvor ((_ int2bv 64) var3894) ((_ int2bv 64) var193)))) ; Statement: $i4 = i0 | i1 
(define-const var1875 Int (getLength-Arr-Int-1 var1953)) ; Statement: $i2 = lengthof r0 
(define-const var3868 Int (- var1875 var193)) ; Statement: $i3 = $i2 - i1 
(define-const var2750 Int (bv2nat (bvor ((_ int2bv 64) var1280) ((_ int2bv 64) var3868)))) ; Statement: $i5 = $i4 | $i3 
 ; Statement: if $i5 >= 0 goto l35 = (long) i0 
(assert (not (>= var2750 0))) ; Negate: Cond: $i5 >= 0  
(define-const var205 var2648 var2648-init) ; Statement: $r8 = new java.lang.ArrayIndexOutOfBoundsException 
(define-const var1337 (Array Int var1025) arr-var1025-init) ; Statement: $r2 = newarray (java.lang.Object)[3] 
(define-const var218 Int (getLength-Arr-Int-1 var1953)) ; Statement: $i34 = lengthof r0 
(define-const var2557 Int (Int_valueOf/-1371140006 var218)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i34) 
(declare-const var1337!1 (Array Int var1025))
(assert (not (= var1337!1 null-__Array__Int__var1025__)))
(assert (= (select var1337!1 0) (cast-from-Int-to-var1025 var2557))) ; Statement: $r2[0] = $r3 
(define-const var498 Int (Int_valueOf/-1371140006 var3894)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var1337!2 (Array Int var1025))
(assert (not (= var1337!2 null-__Array__Int__var1025__)))
(assert (= (select var1337!2 1) (cast-from-Int-to-var1025 var498))) ; Statement: $r2[1] = $r4 
(define-const var391 Int (Int_valueOf/-1371140006 var193)) ; Statement: $r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1) 
(declare-const var1337!3 (Array Int var1025))
(assert (not (= var1337!3 null-__Array__Int__var1025__)))
(assert (= (select var1337!3 2) (cast-from-Int-to-var1025 var391))) ; Statement: $r2[2] = $r5 
(define-const var1269 String (String_format/1339386452 "Array length=%d, index=%d, limit=%d" var1337!3)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Array length=%d, index=%d, limit=%d", $r2) 
(assert true)
;(assert (<init>/-1057600344 var205 var1269)) ; Statement: specialinvoke $r8.<java.lang.ArrayIndexOutOfBoundsException: void <init>(java.lang.String)>($r6) 

(declare-const var205!1 var2648)
(declare-const var1269!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Int-1=([byte[]], int), var2648-init=([], java.lang.ArrayIndexOutOfBoundsException), arr-var1025-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1025=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1057600344=([java.lang.ArrayIndexOutOfBoundsException, java.lang.String], void)}
; {var2132=com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnsafeProcessor, var2463=r7, var1085=i7, var1953=r0, var3894=i0, var193=i1, var1280=$i4, var1875=$i2, var3868=$i3, var2750=$i5, var2648=java.lang.ArrayIndexOutOfBoundsException, var205=$r8, var1025=java.lang.Object, var1337=$r2, var218=$i34, var2557=$r3, var498=$r4, var391=$r5, var1269=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnsafeProcessor=var2132, r7=var2463, i7=var1085, r0=var1953, i0=var3894, i1=var193, $i4=var1280, $i2=var1875, $i3=var3868, $i5=var2750, java.lang.ArrayIndexOutOfBoundsException=var2648, $r8=var205, java.lang.Object=var1025, $r2=var1337, $i34=var218, $r3=var2557, $r4=var498, $r5=var391, $r6=var1269}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnsafeProcessor;	i7 := @parameter0: int;	r0 := @parameter1: byte[];	i0 := @parameter2: int;	i1 := @parameter3: int;	$i4 = i0 | i1;	$i2 = lengthof r0;	$i3 = $i2 - i1;	$i5 = $i4 | $i3;	if $i5 >= 0 goto l35 = (long) i0;	$r8 = new java.lang.ArrayIndexOutOfBoundsException;	$r2 = newarray (java.lang.Object)[3];	$i34 = lengthof r0;	$r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i34);	$r2[0] = $r3;	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r2[1] = $r4;	$r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1);	$r2[2] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Array length=%d, index=%d, limit=%d", $r2);	specialinvoke $r8.<java.lang.ArrayIndexOutOfBoundsException: void <init>(java.lang.String)>($r6);	throw $r8
;block_num 2