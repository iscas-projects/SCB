(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1168 0)
(declare-sort var3032 0)
(declare-sort var657 0)
(declare-sort var2535 0)
(declare-sort var3529 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/1295197723 (var1168) (Array Int Int))
(declare-fun position/1295197723 (var1168) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var657-init () var657)
(declare-fun arr-var2535-init () (Array Int var2535))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2535 (Int) var2535)
(declare-fun limit/1295197723 (var1168) Int)
(declare-fun String_format/1339386452 (String (Array Int var2535)) String)
(declare-fun <init>/-1360024860 (var657 String var3529) void)
(declare-fun cast-from-var3032-to-var3529 (var3032) var3529)
(declare-const null-var1168 var1168)
(declare-const null-Int Int)
(declare-const null-var3032 var3032)
(declare-const null-__Array__Int__var2535__ (Array Int var2535))
(declare-const var1939 var1168) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder 
(assert (not (= var1939 null-var1168)))
(declare-const var1219 Int) ; Statement: i2 := @parameter0: int 
(assert (not (= var1219 null-Int)))
(define-const var2103 (Array Int Int) (buffer/1295197723 var1939)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: byte[] buffer> 
(define-const var2321 Int (position/1295197723 var1939)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> 
(define-const var669 Int (+ var2321 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var1939!1 var1168)
(assert (not (= var1939!1 null-var1168)))
(assert (= (position/1295197723 var1939!1) var669)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> = $i1 
(define-const var3591 Int (bv2nat (bvand ((_ int2bv 64) var1219) ((_ int2bv 64) 255)))) ; Statement: $i3 = i2 & 255 
(define-const var2230 Int (cast-from-Int-to-Int var3591)) ; Statement: $b4 = (byte) $i3 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3612 var3032) ; Statement: $r5 := @caughtexception 
(assert (not (= var3612 null-var3032)))
(define-const var3520 var657 var657-init) ; Statement: $r6 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException 
(define-const var3344 (Array Int var2535) arr-var2535-init) ; Statement: $r7 = newarray (java.lang.Object)[3] 
(define-const var486 Int (position/1295197723 var1939!1)) ; Statement: $i20 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> 
(define-const var3413 Int (Int_valueOf/-1371140006 var486)) ; Statement: $r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i20) 
(declare-const var3344!1 (Array Int var2535))
(assert (not (= var3344!1 null-__Array__Int__var2535__)))
(assert (= (select var3344!1 0) (cast-from-Int-to-var2535 var3413))) ; Statement: $r7[0] = $r8 
(define-const var2800 Int (limit/1295197723 var1939!1)) ; Statement: $i21 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int limit> 
(define-const var1612 Int (Int_valueOf/-1371140006 var2800)) ; Statement: $r9 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i21) 
(declare-const var3344!2 (Array Int var2535))
(assert (not (= var3344!2 null-__Array__Int__var2535__)))
(assert (= (select var3344!2 1) (cast-from-Int-to-var2535 var1612))) ; Statement: $r7[1] = $r9 
(define-const var717 Int (Int_valueOf/-1371140006 1)) ; Statement: $r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(1) 
(declare-const var3344!3 (Array Int var2535))
(assert (not (= var3344!3 null-__Array__Int__var2535__)))
(assert (= (select var3344!3 2) (cast-from-Int-to-var2535 var717))) ; Statement: $r7[2] = $r10 
(define-const var1816 String (String_format/1339386452 "Pos: %d, limit: %d, len: %d" var3344!3)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Pos: %d, limit: %d, len: %d", $r7) 
(assert true)
;(assert (<init>/-1360024860 var3520 var1816 (cast-from-var3032-to-var3529 var3612))) ; Statement: specialinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5) 

(declare-const var3520!1 var657)
(declare-const var1816!1 String)
(declare-const var3612!1 var3032)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/1295197723=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder], byte[]), position/1295197723=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder], int), cast-from-Int-to-Int=([int], byte), var657-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException), arr-var2535-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2535=([java.lang.Integer], java.lang.Object), limit/1295197723=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder], int), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1360024860=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, java.lang.String, java.lang.Throwable], void), cast-from-var3032-to-var3529=([java.lang.IndexOutOfBoundsException], java.lang.Throwable)}
; {var1168=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder, var1939=r0, var1219=i2, var2103=$r1, var2321=$i0, var669=$i1, var3591=$i3, var2230=$b4, var3032=java.lang.IndexOutOfBoundsException, var3612=$r5, var657=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, var3520=$r6, var2535=java.lang.Object, var3344=$r7, var486=$i20, var3413=$r8, var2800=$i21, var1612=$r9, var717=$r10, var1816=$r11, var3529=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder=var1168, r0=var1939, i2=var1219, $r1=var2103, $i0=var2321, $i1=var669, $i3=var3591, $b4=var2230, java.lang.IndexOutOfBoundsException=var3032, $r5=var3612, com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException=var657, $r6=var3520, java.lang.Object=var2535, $r7=var3344, $i20=var486, $r8=var3413, $i21=var2800, $r9=var1612, $r10=var717, $r11=var1816, java.lang.Throwable=var3529}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder;	i2 := @parameter0: int;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: byte[] buffer>;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position>;	$i1 = $i0 + 1;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> = $i1;	$i3 = i2 & 255;	$b4 = (byte) $i3;	$r5 := @caughtexception;	$r6 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException;	$r7 = newarray (java.lang.Object)[3];	$i20 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position>;	$r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i20);	$r7[0] = $r8;	$i21 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int limit>;	$r9 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i21);	$r7[1] = $r9;	$r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(1);	$r7[2] = $r10;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Pos: %d, limit: %d, len: %d", $r7);	specialinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5);	throw $r6
;block_num 2