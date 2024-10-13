(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1996 0)
(declare-sort var2232 0)
(declare-sort var3341 0)
(declare-sort var3039 0)
(declare-sort var1355 0)
(declare-sort var419 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2232_access$100/-308734914 () Bool)
(declare-fun buffer/1295197723 (var1996) (Array Int Int))
(declare-fun position/1295197723 (var1996) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3039-init () var3039)
(declare-fun arr-var1355-init () (Array Int var1355))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1355 (Int) var1355)
(declare-fun limit/1295197723 (var1996) Int)
(declare-fun String_format/1339386452 (String (Array Int var1355)) String)
(declare-fun <init>/-1360024860 (var3039 String var419) void)
(declare-fun cast-from-var3341-to-var419 (var3341) var419)
(declare-const null-var1996 var1996)
(declare-const null-Int Int)
(declare-const null-var3341 var3341)
(declare-const null-__Array__Int__var1355__ (Array Int var1355))
(declare-const var3809 var1996) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder 
(assert (not (= var3809 null-var1996)))
(declare-const var60 Int) ; Statement: l27 := @parameter0: long 
(assert (not (= var60 null-Int)))
(define-const var3969 Bool var2232_access$100/-308734914) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream: boolean access$100()>() 
 ; Statement: if $z0 == 0 goto $l28 = l27 & -128L 
(assert (= (ite var3969 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3616 Int (bv2nat (bvand ((_ int2bv 64) var60) ((_ int2bv 64) (- 128))))) ; Statement: $l28 = l27 & -128L 
(define-const var39 Int (ite (> var3616 0) 1 (ite (< var3616 0) (- 1) 0))) ; Statement: $b29 = $l28 cmp 0L 
 ; Statement: if $b29 != 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: byte[] buffer> 
(assert (not (= var39 0))) ; Cond: $b29 != 0 
(define-const var2103 (Array Int Int) (buffer/1295197723 var3809)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: byte[] buffer> 
(define-const var152 Int (position/1295197723 var3809)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> 
(define-const var130 Int (+ var152 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var3809!1 var1996)
(assert (not (= var3809!1 null-var1996)))
(assert (= (position/1295197723 var3809!1) var130)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> = $i1 
(define-const var3305 Int (cast-from-Int-to-Int var60)) ; Statement: $i2 = (int) l27 
(define-const var3379 Int (bv2nat (bvand ((_ int2bv 64) var3305) ((_ int2bv 64) 127)))) ; Statement: $i3 = $i2 & 127 
(define-const var3371 Int (bv2nat (bvor ((_ int2bv 64) var3379) ((_ int2bv 64) 128)))) ; Statement: $i4 = $i3 | 128 
(define-const var1030 Int (cast-from-Int-to-Int var3371)) ; Statement: $b5 = (byte) $i4 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var685 var3341) ; Statement: $r5 := @caughtexception 
(assert (not (= var685 null-var3341)))
(define-const var1147 var3039 var3039-init) ; Statement: $r6 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException 
(define-const var2742 (Array Int var1355) arr-var1355-init) ; Statement: $r7 = newarray (java.lang.Object)[3] 
(define-const var2704 Int (position/1295197723 var3809!1)) ; Statement: $i25 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> 
(define-const var2220 Int (Int_valueOf/-1371140006 var2704)) ; Statement: $r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i25) 
(declare-const var2742!1 (Array Int var1355))
(assert (not (= var2742!1 null-__Array__Int__var1355__)))
(assert (= (select var2742!1 0) (cast-from-Int-to-var1355 var2220))) ; Statement: $r7[0] = $r8 
(define-const var2438 Int (limit/1295197723 var3809!1)) ; Statement: $i26 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int limit> 
(define-const var3175 Int (Int_valueOf/-1371140006 var2438)) ; Statement: $r9 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i26) 
(declare-const var2742!2 (Array Int var1355))
(assert (not (= var2742!2 null-__Array__Int__var1355__)))
(assert (= (select var2742!2 1) (cast-from-Int-to-var1355 var3175))) ; Statement: $r7[1] = $r9 
(define-const var679 Int (Int_valueOf/-1371140006 1)) ; Statement: $r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(1) 
(declare-const var2742!3 (Array Int var1355))
(assert (not (= var2742!3 null-__Array__Int__var1355__)))
(assert (= (select var2742!3 2) (cast-from-Int-to-var1355 var679))) ; Statement: $r7[2] = $r10 
(define-const var582 String (String_format/1339386452 "Pos: %d, limit: %d, len: %d" var2742!3)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Pos: %d, limit: %d, len: %d", $r7) 
(assert true)
;(assert (<init>/-1360024860 var1147 var582 (cast-from-var3341-to-var419 var685))) ; Statement: specialinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5) 

(declare-const var1147!1 var3039)
(declare-const var582!1 String)
(declare-const var685!1 var3341)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var2232_access$100/-308734914=([], boolean), buffer/1295197723=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder], byte[]), position/1295197723=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder], int), cast-from-Int-to-Int=([long], int), var3039-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException), arr-var1355-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1355=([java.lang.Integer], java.lang.Object), limit/1295197723=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder], int), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1360024860=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, java.lang.String, java.lang.Throwable], void), cast-from-var3341-to-var419=([java.lang.IndexOutOfBoundsException], java.lang.Throwable)}
; {var1996=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder, var3809=r0, var60=l27, var2232=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream, var3969=$z0, var3616=$l28, var39=$b29, var2103=$r1, var152=$i0, var130=$i1, var3305=$i2, var3379=$i3, var3371=$i4, var1030=$b5, var3341=java.lang.IndexOutOfBoundsException, var685=$r5, var3039=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, var1147=$r6, var1355=java.lang.Object, var2742=$r7, var2704=$i25, var2220=$r8, var2438=$i26, var3175=$r9, var679=$r10, var582=$r11, var419=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder=var1996, r0=var3809, l27=var60, com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream=var2232, $z0=var3969, $l28=var3616, $b29=var39, $r1=var2103, $i0=var152, $i1=var130, $i2=var3305, $i3=var3379, $i4=var3371, $b5=var1030, java.lang.IndexOutOfBoundsException=var3341, $r5=var685, com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException=var3039, $r6=var1147, java.lang.Object=var1355, $r7=var2742, $i25=var2704, $r8=var2220, $i26=var2438, $r9=var3175, $r10=var679, $r11=var582, java.lang.Throwable=var419}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder;	l27 := @parameter0: long;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream: boolean access$100()>();	if $z0 == 0 goto $l28 = l27 & -128L;	$l28 = l27 & -128L;	$b29 = $l28 cmp 0L;	if $b29 != 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: byte[] buffer>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: byte[] buffer>;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position>;	$i1 = $i0 + 1;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> = $i1;	$i2 = (int) l27;	$i3 = $i2 & 127;	$i4 = $i3 | 128;	$b5 = (byte) $i4;	$r5 := @caughtexception;	$r6 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException;	$r7 = newarray (java.lang.Object)[3];	$i25 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position>;	$r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i25);	$r7[0] = $r8;	$i26 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int limit>;	$r9 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i26);	$r7[1] = $r9;	$r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(1);	$r7[2] = $r10;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Pos: %d, limit: %d, len: %d", $r7);	specialinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5);	throw $r6
;block_num 4