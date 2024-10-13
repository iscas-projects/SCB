(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var351 0)
(declare-sort var536 0)
(declare-sort var2844 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var536-init () var536)
(declare-fun arr-var2844-init () (Array Int var2844))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2844 (Int) var2844)
(declare-fun String_format/1339386452 (String (Array Int var2844)) String)
(declare-fun <init>/-1057600344 (var536 String) void)
(declare-const null-var351 var351)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-__Array__Int__var2844__ (Array Int var2844))
(declare-const var2101 var351) ; Statement: r7 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$UnsafeHeapWriter 
(assert (not (= var2101 null-var351)))
(declare-const var1179 (Array Int Int)) ; Statement: r2 := @parameter0: byte[] 
(assert (not (= var1179 null-__Array__Int__Int__)))
(declare-const var1463 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1463 null-Int)))
(declare-const var2579 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var2579 null-Int)))
 ; Statement: if i0 < 0 goto $r0 = new java.lang.ArrayIndexOutOfBoundsException 
(assert (< var1463 0)) ; Cond: i0 < 0 
(define-const var852 var536 var536-init) ; Statement: $r0 = new java.lang.ArrayIndexOutOfBoundsException 
(define-const var1320 (Array Int var2844) arr-var2844-init) ; Statement: $r1 = newarray (java.lang.Object)[3] 
(define-const var325 Int (getLength-Arr-Int-1 var1179)) ; Statement: $i1 = lengthof r2 
(define-const var3970 Int (Int_valueOf/-1371140006 var325)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1) 
(declare-const var1320!1 (Array Int var2844))
(assert (not (= var1320!1 null-__Array__Int__var2844__)))
(assert (= (select var1320!1 0) (cast-from-Int-to-var2844 var3970))) ; Statement: $r1[0] = $r3 
(define-const var1484 Int (Int_valueOf/-1371140006 var1463)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var1320!2 (Array Int var2844))
(assert (not (= var1320!2 null-__Array__Int__var2844__)))
(assert (= (select var1320!2 1) (cast-from-Int-to-var2844 var1484))) ; Statement: $r1[1] = $r4 
(define-const var2395 Int (Int_valueOf/-1371140006 var2579)) ; Statement: $r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i2) 
(declare-const var1320!3 (Array Int var2844))
(assert (not (= var1320!3 null-__Array__Int__var2844__)))
(assert (= (select var1320!3 2) (cast-from-Int-to-var2844 var2395))) ; Statement: $r1[2] = $r5 
(define-const var767 String (String_format/1339386452 "value.length=%d, offset=%d, length=%d" var1320!3)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("value.length=%d, offset=%d, length=%d", $r1) 
(assert true)
;(assert (<init>/-1057600344 var852 var767)) ; Statement: specialinvoke $r0.<java.lang.ArrayIndexOutOfBoundsException: void <init>(java.lang.String)>($r6) 

(declare-const var852!1 var536)
(declare-const var767!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var536-init=([], java.lang.ArrayIndexOutOfBoundsException), arr-var2844-init=([], java.lang.Object[]), getLength-Arr-Int-1=([byte[]], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2844=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1057600344=([java.lang.ArrayIndexOutOfBoundsException, java.lang.String], void)}
; {var351=com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$UnsafeHeapWriter, var2101=r7, var1179=r2, var1463=i0, var2579=i2, var536=java.lang.ArrayIndexOutOfBoundsException, var852=$r0, var2844=java.lang.Object, var1320=$r1, var325=$i1, var3970=$r3, var1484=$r4, var2395=$r5, var767=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$UnsafeHeapWriter=var351, r7=var2101, r2=var1179, i0=var1463, i2=var2579, java.lang.ArrayIndexOutOfBoundsException=var536, $r0=var852, java.lang.Object=var2844, $r1=var1320, $i1=var325, $r3=var3970, $r4=var1484, $r5=var2395, $r6=var767}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$UnsafeHeapWriter;	r2 := @parameter0: byte[];	i0 := @parameter1: int;	i2 := @parameter2: int;	if i0 < 0 goto $r0 = new java.lang.ArrayIndexOutOfBoundsException;	$r0 = new java.lang.ArrayIndexOutOfBoundsException;	$r1 = newarray (java.lang.Object)[3];	$i1 = lengthof r2;	$r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1);	$r1[0] = $r3;	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r1[1] = $r4;	$r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i2);	$r1[2] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("value.length=%d, offset=%d, length=%d", $r1);	specialinvoke $r0.<java.lang.ArrayIndexOutOfBoundsException: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 2