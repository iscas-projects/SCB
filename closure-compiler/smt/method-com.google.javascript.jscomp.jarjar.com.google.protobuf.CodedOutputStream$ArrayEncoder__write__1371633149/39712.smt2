(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3271 0)
(declare-sort var787 0)
(declare-sort var1431 0)
(declare-sort var1504 0)
(declare-sort var2874 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/1295197723 (var3271) (Array Int Int))
(declare-fun position/1295197723 (var3271) Int)
(declare-fun var1431-init () var1431)
(declare-fun arr-var1504-init () (Array Int var1504))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1504 (Int) var1504)
(declare-fun limit/1295197723 (var3271) Int)
(declare-fun String_format/1339386452 (String (Array Int var1504)) String)
(declare-fun <init>/-1360024860 (var1431 String var2874) void)
(declare-fun cast-from-var787-to-var2874 (var787) var2874)
(declare-const null-var3271 var3271)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-var787 var787)
(declare-const null-__Array__Int__var1504__ (Array Int var1504))
(declare-const var3686 var3271) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder 
(assert (not (= var3686 null-var3271)))
(declare-const var1425 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var1425 null-__Array__Int__Int__)))
(declare-const var1712 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1712 null-Int)))
(declare-const var1753 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1753 null-Int)))
(define-const var1266 (Array Int Int) (buffer/1295197723 var3686)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: byte[] buffer> 
(define-const var2467 Int (position/1295197723 var3686)) ; Statement: $i2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1104 var787) ; Statement: $r3 := @caughtexception 
(assert (not (= var1104 null-var787)))
(define-const var845 var1431 var1431-init) ; Statement: $r4 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException 
(define-const var325 (Array Int var1504) arr-var1504-init) ; Statement: $r5 = newarray (java.lang.Object)[3] 
(define-const var283 Int (position/1295197723 var3686)) ; Statement: $i5 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> 
(define-const var752 Int (Int_valueOf/-1371140006 var283)) ; Statement: $r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i5) 
(declare-const var325!1 (Array Int var1504))
(assert (not (= var325!1 null-__Array__Int__var1504__)))
(assert (= (select var325!1 0) (cast-from-Int-to-var1504 var752))) ; Statement: $r5[0] = $r6 
(define-const var1436 Int (limit/1295197723 var3686)) ; Statement: $i6 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int limit> 
(define-const var1261 Int (Int_valueOf/-1371140006 var1436)) ; Statement: $r7 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i6) 
(declare-const var325!2 (Array Int var1504))
(assert (not (= var325!2 null-__Array__Int__var1504__)))
(assert (= (select var325!2 1) (cast-from-Int-to-var1504 var1261))) ; Statement: $r5[1] = $r7 
(define-const var3496 Int (Int_valueOf/-1371140006 var1753)) ; Statement: $r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1) 
(declare-const var325!3 (Array Int var1504))
(assert (not (= var325!3 null-__Array__Int__var1504__)))
(assert (= (select var325!3 2) (cast-from-Int-to-var1504 var3496))) ; Statement: $r5[2] = $r8 
(define-const var3458 String (String_format/1339386452 "Pos: %d, limit: %d, len: %d" var325!3)) ; Statement: $r9 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Pos: %d, limit: %d, len: %d", $r5) 
(assert true)
;(assert (<init>/-1360024860 var845 var3458 (cast-from-var787-to-var2874 var1104))) ; Statement: specialinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r3) 

(declare-const var845!1 var1431)
(declare-const var3458!1 String)
(declare-const var1104!1 var787)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/1295197723=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder], byte[]), position/1295197723=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder], int), var1431-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException), arr-var1504-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1504=([java.lang.Integer], java.lang.Object), limit/1295197723=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder], int), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1360024860=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, java.lang.String, java.lang.Throwable], void), cast-from-var787-to-var2874=([java.lang.IndexOutOfBoundsException], java.lang.Throwable)}
; {var3271=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder, var3686=r1, var1425=r0, var1712=i0, var1753=i1, var1266=$r2, var2467=$i2, var787=java.lang.IndexOutOfBoundsException, var1104=$r3, var1431=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, var845=$r4, var1504=java.lang.Object, var325=$r5, var283=$i5, var752=$r6, var1436=$i6, var1261=$r7, var3496=$r8, var3458=$r9, var2874=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder=var3271, r1=var3686, r0=var1425, i0=var1712, i1=var1753, $r2=var1266, $i2=var2467, java.lang.IndexOutOfBoundsException=var787, $r3=var1104, com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException=var1431, $r4=var845, java.lang.Object=var1504, $r5=var325, $i5=var283, $r6=var752, $i6=var1436, $r7=var1261, $r8=var3496, $r9=var3458, java.lang.Throwable=var2874}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder;	r0 := @parameter0: byte[];	i0 := @parameter1: int;	i1 := @parameter2: int;	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: byte[] buffer>;	$i2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position>;	$r3 := @caughtexception;	$r4 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException;	$r5 = newarray (java.lang.Object)[3];	$i5 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position>;	$r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i5);	$r5[0] = $r6;	$i6 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int limit>;	$r7 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i6);	$r5[1] = $r7;	$r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1);	$r5[2] = $r8;	$r9 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Pos: %d, limit: %d, len: %d", $r5);	specialinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r3);	throw $r4
;block_num 2