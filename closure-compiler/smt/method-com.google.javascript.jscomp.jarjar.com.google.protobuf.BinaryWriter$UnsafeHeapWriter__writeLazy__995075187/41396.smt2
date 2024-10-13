(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2784 0)
(declare-sort var3130 0)
(declare-sort var1185 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3130-init () var3130)
(declare-fun arr-var1185-init () (Array Int var1185))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1185 (Int) var1185)
(declare-fun String_format/1339386452 (String (Array Int var1185)) String)
(declare-fun <init>/-1057600344 (var3130 String) void)
(declare-const null-var2784 var2784)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-__Array__Int__var1185__ (Array Int var1185))
(declare-const var147 var2784) ; Statement: r7 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$UnsafeHeapWriter 
(assert (not (= var147 null-var2784)))
(declare-const var15 (Array Int Int)) ; Statement: r2 := @parameter0: byte[] 
(assert (not (= var15 null-__Array__Int__Int__)))
(declare-const var2534 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2534 null-Int)))
(declare-const var1612 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var1612 null-Int)))
 ; Statement: if i0 < 0 goto $r0 = new java.lang.ArrayIndexOutOfBoundsException 
(assert (< var2534 0)) ; Cond: i0 < 0 
(define-const var768 var3130 var3130-init) ; Statement: $r0 = new java.lang.ArrayIndexOutOfBoundsException 
(define-const var1223 (Array Int var1185) arr-var1185-init) ; Statement: $r1 = newarray (java.lang.Object)[3] 
(define-const var580 Int (getLength-Arr-Int-1 var15)) ; Statement: $i1 = lengthof r2 
(define-const var2164 Int (Int_valueOf/-1371140006 var580)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1) 
(declare-const var1223!1 (Array Int var1185))
(assert (not (= var1223!1 null-__Array__Int__var1185__)))
(assert (= (select var1223!1 0) (cast-from-Int-to-var1185 var2164))) ; Statement: $r1[0] = $r3 
(define-const var523 Int (Int_valueOf/-1371140006 var2534)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var1223!2 (Array Int var1185))
(assert (not (= var1223!2 null-__Array__Int__var1185__)))
(assert (= (select var1223!2 1) (cast-from-Int-to-var1185 var523))) ; Statement: $r1[1] = $r4 
(define-const var1343 Int (Int_valueOf/-1371140006 var1612)) ; Statement: $r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i2) 
(declare-const var1223!3 (Array Int var1185))
(assert (not (= var1223!3 null-__Array__Int__var1185__)))
(assert (= (select var1223!3 2) (cast-from-Int-to-var1185 var1343))) ; Statement: $r1[2] = $r5 
(define-const var1700 String (String_format/1339386452 "value.length=%d, offset=%d, length=%d" var1223!3)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("value.length=%d, offset=%d, length=%d", $r1) 
(assert true)
;(assert (<init>/-1057600344 var768 var1700)) ; Statement: specialinvoke $r0.<java.lang.ArrayIndexOutOfBoundsException: void <init>(java.lang.String)>($r6) 

(declare-const var768!1 var3130)
(declare-const var1700!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3130-init=([], java.lang.ArrayIndexOutOfBoundsException), arr-var1185-init=([], java.lang.Object[]), getLength-Arr-Int-1=([byte[]], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1185=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1057600344=([java.lang.ArrayIndexOutOfBoundsException, java.lang.String], void)}
; {var2784=com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$UnsafeHeapWriter, var147=r7, var15=r2, var2534=i0, var1612=i2, var3130=java.lang.ArrayIndexOutOfBoundsException, var768=$r0, var1185=java.lang.Object, var1223=$r1, var580=$i1, var2164=$r3, var523=$r4, var1343=$r5, var1700=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$UnsafeHeapWriter=var2784, r7=var147, r2=var15, i0=var2534, i2=var1612, java.lang.ArrayIndexOutOfBoundsException=var3130, $r0=var768, java.lang.Object=var1185, $r1=var1223, $i1=var580, $r3=var2164, $r4=var523, $r5=var1343, $r6=var1700}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$UnsafeHeapWriter;	r2 := @parameter0: byte[];	i0 := @parameter1: int;	i2 := @parameter2: int;	if i0 < 0 goto $r0 = new java.lang.ArrayIndexOutOfBoundsException;	$r0 = new java.lang.ArrayIndexOutOfBoundsException;	$r1 = newarray (java.lang.Object)[3];	$i1 = lengthof r2;	$r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1);	$r1[0] = $r3;	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r1[1] = $r4;	$r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i2);	$r1[2] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("value.length=%d, offset=%d, length=%d", $r1);	specialinvoke $r0.<java.lang.ArrayIndexOutOfBoundsException: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 2