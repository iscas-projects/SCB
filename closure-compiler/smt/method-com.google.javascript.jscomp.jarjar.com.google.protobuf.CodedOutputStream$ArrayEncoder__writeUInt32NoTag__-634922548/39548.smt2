(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3458 0)
(declare-sort var654 0)
(declare-sort var2854 0)
(declare-sort var1836 0)
(declare-sort var2492 0)
(declare-sort var2201 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var654_access$100/-308734914 () Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun buffer/1295197723 (var3458) (Array Int Int))
(declare-fun position/1295197723 (var3458) Int)
(declare-fun var1836-init () var1836)
(declare-fun arr-var2492-init () (Array Int var2492))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2492 (Int) var2492)
(declare-fun limit/1295197723 (var3458) Int)
(declare-fun String_format/1339386452 (String (Array Int var2492)) String)
(declare-fun <init>/-1360024860 (var1836 String var2201) void)
(declare-fun cast-from-var2854-to-var2201 (var2854) var2201)
(declare-const null-var3458 var3458)
(declare-const null-Int Int)
(declare-const null-var2854 var2854)
(declare-const null-__Array__Int__var2492__ (Array Int var2492))
(declare-const var428 var3458) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder 
(assert (not (= var428 null-var3458)))
(declare-const var635 Int) ; Statement: i55 := @parameter0: int 
(assert (not (= var635 null-Int)))
(define-const var2732 Bool var654_access$100/-308734914) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream: boolean access$100()>() 
 ; Statement: if $z0 == 0 goto $i70 = (int) -128 
(assert (= (ite var2732 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1027 Int (cast-from-Int-to-Int (- 128))) ; Statement: $i70 = (int) -128 
(define-const var145 Int (bv2nat (bvand ((_ int2bv 64) var635) ((_ int2bv 64) var1027)))) ; Statement: $i60 = i55 & $i70 
 ; Statement: if $i60 != 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: byte[] buffer> 
(assert (not (= var145 0))) ; Cond: $i60 != 0 
(define-const var3354 (Array Int Int) (buffer/1295197723 var428)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: byte[] buffer> 
(define-const var3073 Int (position/1295197723 var428)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> 
(define-const var87 Int (+ var3073 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var428!1 var3458)
(assert (not (= var428!1 null-var3458)))
(assert (= (position/1295197723 var428!1) var87)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> = $i1 
(define-const var1915 Int (bv2nat (bvand ((_ int2bv 64) var635) ((_ int2bv 64) 127)))) ; Statement: $i2 = i55 & 127 
(define-const var2332 Int (bv2nat (bvor ((_ int2bv 64) var1915) ((_ int2bv 64) 128)))) ; Statement: $i3 = $i2 | 128 
(define-const var3391 Int (cast-from-Int-to-Int var2332)) ; Statement: $b4 = (byte) $i3 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2614 var2854) ; Statement: $r12 := @caughtexception 
(assert (not (= var2614 null-var2854)))
(define-const var2063 var1836 var1836-init) ; Statement: $r19 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException 
(define-const var3466 (Array Int var2492) arr-var2492-init) ; Statement: $r14 = newarray (java.lang.Object)[3] 
(define-const var3566 Int (position/1295197723 var428!1)) ; Statement: $i53 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> 
(define-const var2766 Int (Int_valueOf/-1371140006 var3566)) ; Statement: $r15 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i53) 
(declare-const var3466!1 (Array Int var2492))
(assert (not (= var3466!1 null-__Array__Int__var2492__)))
(assert (= (select var3466!1 0) (cast-from-Int-to-var2492 var2766))) ; Statement: $r14[0] = $r15 
(define-const var110 Int (limit/1295197723 var428!1)) ; Statement: $i54 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int limit> 
(define-const var515 Int (Int_valueOf/-1371140006 var110)) ; Statement: $r16 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i54) 
(declare-const var3466!2 (Array Int var2492))
(assert (not (= var3466!2 null-__Array__Int__var2492__)))
(assert (= (select var3466!2 1) (cast-from-Int-to-var2492 var515))) ; Statement: $r14[1] = $r16 
(define-const var2881 Int (Int_valueOf/-1371140006 1)) ; Statement: $r17 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(1) 
(declare-const var3466!3 (Array Int var2492))
(assert (not (= var3466!3 null-__Array__Int__var2492__)))
(assert (= (select var3466!3 2) (cast-from-Int-to-var2492 var2881))) ; Statement: $r14[2] = $r17 
(define-const var2148 String (String_format/1339386452 "Pos: %d, limit: %d, len: %d" var3466!3)) ; Statement: $r18 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Pos: %d, limit: %d, len: %d", $r14) 
(assert true)
;(assert (<init>/-1360024860 var2063 var2148 (cast-from-var2854-to-var2201 var2614))) ; Statement: specialinvoke $r19.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r12) 

(declare-const var2063!1 var1836)
(declare-const var2148!1 String)
(declare-const var2614!1 var2854)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var654_access$100/-308734914=([], boolean), cast-from-Int-to-Int=([int], int), buffer/1295197723=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder], byte[]), position/1295197723=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder], int), var1836-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException), arr-var2492-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2492=([java.lang.Integer], java.lang.Object), limit/1295197723=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder], int), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1360024860=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, java.lang.String, java.lang.Throwable], void), cast-from-var2854-to-var2201=([java.lang.IndexOutOfBoundsException], java.lang.Throwable)}
; {var3458=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder, var428=r0, var635=i55, var654=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream, var2732=$z0, var1027=$i70, var145=$i60, var3354=$r1, var3073=$i0, var87=$i1, var1915=$i2, var2332=$i3, var3391=$b4, var2854=java.lang.IndexOutOfBoundsException, var2614=$r12, var1836=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, var2063=$r19, var2492=java.lang.Object, var3466=$r14, var3566=$i53, var2766=$r15, var110=$i54, var515=$r16, var2881=$r17, var2148=$r18, var2201=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder=var3458, r0=var428, i55=var635, com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream=var654, $z0=var2732, $i70=var1027, $i60=var145, $r1=var3354, $i0=var3073, $i1=var87, $i2=var1915, $i3=var2332, $b4=var3391, java.lang.IndexOutOfBoundsException=var2854, $r12=var2614, com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException=var1836, $r19=var2063, java.lang.Object=var2492, $r14=var3466, $i53=var3566, $r15=var2766, $i54=var110, $r16=var515, $r17=var2881, $r18=var2148, java.lang.Throwable=var2201}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder;	i55 := @parameter0: int;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream: boolean access$100()>();	if $z0 == 0 goto $i70 = (int) -128;	$i70 = (int) -128;	$i60 = i55 & $i70;	if $i60 != 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: byte[] buffer>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: byte[] buffer>;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position>;	$i1 = $i0 + 1;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> = $i1;	$i2 = i55 & 127;	$i3 = $i2 | 128;	$b4 = (byte) $i3;	$r12 := @caughtexception;	$r19 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException;	$r14 = newarray (java.lang.Object)[3];	$i53 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position>;	$r15 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i53);	$r14[0] = $r15;	$i54 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int limit>;	$r16 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i54);	$r14[1] = $r16;	$r17 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(1);	$r14[2] = $r17;	$r18 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Pos: %d, limit: %d, len: %d", $r14);	specialinvoke $r19.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r12);	throw $r19
;block_num 4