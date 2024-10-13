(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2956 0)
(declare-sort var289 0)
(declare-sort var972 0)
(declare-sort var2264 0)
(declare-sort var24 0)
(declare-sort var2477 0)
(declare-sort var2985 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun remaining/-1331500056 (var972) Int)
(declare-fun cast-from-var289-to-var972 (var289) var972)
(declare-fun buffer/1295197723 (var2956) (Array Int Int))
(declare-fun position/1295197723 (var2956) Int)
(declare-fun var24-init () var24)
(declare-fun arr-var2477-init () (Array Int var2477))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2477 (Int) var2477)
(declare-fun limit/1295197723 (var2956) Int)
(declare-fun String_format/1339386452 (String (Array Int var2477)) String)
(declare-fun <init>/-1360024860 (var24 String var2985) void)
(declare-fun cast-from-var2264-to-var2985 (var2264) var2985)
(declare-const null-var2956 var2956)
(declare-const null-var289 var289)
(declare-const null-var2264 var2264)
(declare-const null-__Array__Int__var2477__ (Array Int var2477))
(declare-const var775 var2956) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder 
(assert (not (= var775 null-var2956)))
(declare-const var2177 var289) ; Statement: r0 := @parameter0: java.nio.ByteBuffer 
(assert (not (= var2177 null-var289)))
(assert true)
(define-const var1962 Int (remaining/-1331500056 (cast-from-var289-to-var972 var2177))) ; Statement: i0 = virtualinvoke r0.<java.nio.ByteBuffer: int remaining()>() 
(define-const var2629 (Array Int Int) (buffer/1295197723 var775)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: byte[] buffer> 
(define-const var3484 Int (position/1295197723 var775)) ; Statement: $i1 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3702 var2264) ; Statement: $r3 := @caughtexception 
(assert (not (= var3702 null-var2264)))
(define-const var1787 var24 var24-init) ; Statement: $r4 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException 
(define-const var241 (Array Int var2477) arr-var2477-init) ; Statement: $r5 = newarray (java.lang.Object)[3] 
(define-const var819 Int (position/1295197723 var775)) ; Statement: $i4 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> 
(define-const var2546 Int (Int_valueOf/-1371140006 var819)) ; Statement: $r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i4) 
(declare-const var241!1 (Array Int var2477))
(assert (not (= var241!1 null-__Array__Int__var2477__)))
(assert (= (select var241!1 0) (cast-from-Int-to-var2477 var2546))) ; Statement: $r5[0] = $r6 
(define-const var3926 Int (limit/1295197723 var775)) ; Statement: $i5 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int limit> 
(define-const var716 Int (Int_valueOf/-1371140006 var3926)) ; Statement: $r7 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i5) 
(declare-const var241!2 (Array Int var2477))
(assert (not (= var241!2 null-__Array__Int__var2477__)))
(assert (= (select var241!2 1) (cast-from-Int-to-var2477 var716))) ; Statement: $r5[1] = $r7 
(define-const var2169 Int (Int_valueOf/-1371140006 var1962)) ; Statement: $r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var241!3 (Array Int var2477))
(assert (not (= var241!3 null-__Array__Int__var2477__)))
(assert (= (select var241!3 2) (cast-from-Int-to-var2477 var2169))) ; Statement: $r5[2] = $r8 
(define-const var1404 String (String_format/1339386452 "Pos: %d, limit: %d, len: %d" var241!3)) ; Statement: $r9 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Pos: %d, limit: %d, len: %d", $r5) 
(assert true)
;(assert (<init>/-1360024860 var1787 var1404 (cast-from-var2264-to-var2985 var3702))) ; Statement: specialinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r3) 

(declare-const var1787!1 var24)
(declare-const var1404!1 String)
(declare-const var3702!1 var2264)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {remaining/-1331500056=([java.nio.Buffer], int), cast-from-var289-to-var972=([java.nio.ByteBuffer], java.nio.Buffer), buffer/1295197723=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder], byte[]), position/1295197723=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder], int), var24-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException), arr-var2477-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2477=([java.lang.Integer], java.lang.Object), limit/1295197723=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder], int), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1360024860=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, java.lang.String, java.lang.Throwable], void), cast-from-var2264-to-var2985=([java.lang.IndexOutOfBoundsException], java.lang.Throwable)}
; {var2956=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder, var775=r1, var289=java.nio.ByteBuffer, var2177=r0, var972=java.nio.Buffer, var1962=i0, var2629=$r2, var3484=$i1, var2264=java.lang.IndexOutOfBoundsException, var3702=$r3, var24=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, var1787=$r4, var2477=java.lang.Object, var241=$r5, var819=$i4, var2546=$r6, var3926=$i5, var716=$r7, var2169=$r8, var1404=$r9, var2985=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder=var2956, r1=var775, java.nio.ByteBuffer=var289, r0=var2177, java.nio.Buffer=var972, i0=var1962, $r2=var2629, $i1=var3484, java.lang.IndexOutOfBoundsException=var2264, $r3=var3702, com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException=var24, $r4=var1787, java.lang.Object=var2477, $r5=var241, $i4=var819, $r6=var2546, $i5=var3926, $r7=var716, $r8=var2169, $r9=var1404, java.lang.Throwable=var2985}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder;	r0 := @parameter0: java.nio.ByteBuffer;	i0 = virtualinvoke r0.<java.nio.ByteBuffer: int remaining()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: byte[] buffer>;	$i1 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position>;	$r3 := @caughtexception;	$r4 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException;	$r5 = newarray (java.lang.Object)[3];	$i4 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position>;	$r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i4);	$r5[0] = $r6;	$i5 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int limit>;	$r7 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i5);	$r5[1] = $r7;	$r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r5[2] = $r8;	$r9 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Pos: %d, limit: %d, len: %d", $r5);	specialinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r3);	throw $r4
;block_num 2