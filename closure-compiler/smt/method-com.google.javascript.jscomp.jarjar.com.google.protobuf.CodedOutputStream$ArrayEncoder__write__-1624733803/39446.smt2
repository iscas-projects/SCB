(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1212 0)
(declare-sort var2737 0)
(declare-sort var2446 0)
(declare-sort var1174 0)
(declare-sort var2092 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/1295197723 (var1212) (Array Int Int))
(declare-fun position/1295197723 (var1212) Int)
(declare-fun var2446-init () var2446)
(declare-fun arr-var1174-init () (Array Int var1174))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1174 (Int) var1174)
(declare-fun limit/1295197723 (var1212) Int)
(declare-fun String_format/1339386452 (String (Array Int var1174)) String)
(declare-fun <init>/-1360024860 (var2446 String var2092) void)
(declare-fun cast-from-var2737-to-var2092 (var2737) var2092)
(declare-const null-var1212 var1212)
(declare-const null-Int Int)
(declare-const null-var2737 var2737)
(declare-const null-__Array__Int__var1174__ (Array Int var1174))
(declare-const var983 var1212) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder 
(assert (not (= var983 null-var1212)))
(declare-const var3568 Int) ; Statement: b2 := @parameter0: byte 
(assert (not (= var3568 null-Int)))
(define-const var786 (Array Int Int) (buffer/1295197723 var983)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: byte[] buffer> 
(define-const var548 Int (position/1295197723 var983)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> 
(define-const var2279 Int (+ var548 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var983!1 var1212)
(assert (not (= var983!1 null-var1212)))
(assert (= (position/1295197723 var983!1) var2279)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> = $i1 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1239 var2737) ; Statement: $r2 := @caughtexception 
(assert (not (= var1239 null-var2737)))
(define-const var87 var2446 var2446-init) ; Statement: $r3 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException 
(define-const var1350 (Array Int var1174) arr-var1174-init) ; Statement: $r4 = newarray (java.lang.Object)[3] 
(define-const var3409 Int (position/1295197723 var983!1)) ; Statement: $i3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> 
(define-const var2783 Int (Int_valueOf/-1371140006 var3409)) ; Statement: $r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i3) 
(declare-const var1350!1 (Array Int var1174))
(assert (not (= var1350!1 null-__Array__Int__var1174__)))
(assert (= (select var1350!1 0) (cast-from-Int-to-var1174 var2783))) ; Statement: $r4[0] = $r5 
(define-const var1069 Int (limit/1295197723 var983!1)) ; Statement: $i4 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int limit> 
(define-const var993 Int (Int_valueOf/-1371140006 var1069)) ; Statement: $r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i4) 
(declare-const var1350!2 (Array Int var1174))
(assert (not (= var1350!2 null-__Array__Int__var1174__)))
(assert (= (select var1350!2 1) (cast-from-Int-to-var1174 var993))) ; Statement: $r4[1] = $r6 
(define-const var2710 Int (Int_valueOf/-1371140006 1)) ; Statement: $r7 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(1) 
(declare-const var1350!3 (Array Int var1174))
(assert (not (= var1350!3 null-__Array__Int__var1174__)))
(assert (= (select var1350!3 2) (cast-from-Int-to-var1174 var2710))) ; Statement: $r4[2] = $r7 
(define-const var2250 String (String_format/1339386452 "Pos: %d, limit: %d, len: %d" var1350!3)) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Pos: %d, limit: %d, len: %d", $r4) 
(assert true)
;(assert (<init>/-1360024860 var87 var2250 (cast-from-var2737-to-var2092 var1239))) ; Statement: specialinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r2) 

(declare-const var87!1 var2446)
(declare-const var2250!1 String)
(declare-const var1239!1 var2737)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/1295197723=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder], byte[]), position/1295197723=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder], int), var2446-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException), arr-var1174-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1174=([java.lang.Integer], java.lang.Object), limit/1295197723=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder], int), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1360024860=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, java.lang.String, java.lang.Throwable], void), cast-from-var2737-to-var2092=([java.lang.IndexOutOfBoundsException], java.lang.Throwable)}
; {var1212=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder, var983=r0, var3568=b2, var786=$r1, var548=$i0, var2279=$i1, var2737=java.lang.IndexOutOfBoundsException, var1239=$r2, var2446=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, var87=$r3, var1174=java.lang.Object, var1350=$r4, var3409=$i3, var2783=$r5, var1069=$i4, var993=$r6, var2710=$r7, var2250=$r8, var2092=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder=var1212, r0=var983, b2=var3568, $r1=var786, $i0=var548, $i1=var2279, java.lang.IndexOutOfBoundsException=var2737, $r2=var1239, com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException=var2446, $r3=var87, java.lang.Object=var1174, $r4=var1350, $i3=var3409, $r5=var2783, $i4=var1069, $r6=var993, $r7=var2710, $r8=var2250, java.lang.Throwable=var2092}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder;	b2 := @parameter0: byte;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: byte[] buffer>;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position>;	$i1 = $i0 + 1;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> = $i1;	$r2 := @caughtexception;	$r3 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException;	$r4 = newarray (java.lang.Object)[3];	$i3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position>;	$r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i3);	$r4[0] = $r5;	$i4 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int limit>;	$r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i4);	$r4[1] = $r6;	$r7 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(1);	$r4[2] = $r7;	$r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Pos: %d, limit: %d, len: %d", $r4);	specialinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r2);	throw $r3
;block_num 2