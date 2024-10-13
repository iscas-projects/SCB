(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var922 0)
(declare-sort var2703 0)
(declare-sort var1292 0)
(declare-sort var3157 0)
(declare-sort var217 0)
(declare-sort var3100 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2703_access$100/-308734914 () Bool)
(declare-fun buffer/1295197723 (var922) (Array Int Int))
(declare-fun position/1295197723 (var922) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3157-init () var3157)
(declare-fun arr-var217-init () (Array Int var217))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var217 (Int) var217)
(declare-fun limit/1295197723 (var922) Int)
(declare-fun String_format/1339386452 (String (Array Int var217)) String)
(declare-fun <init>/-1360024860 (var3157 String var3100) void)
(declare-fun cast-from-var1292-to-var3100 (var1292) var3100)
(declare-const null-var922 var922)
(declare-const null-Int Int)
(declare-const null-var1292 var1292)
(declare-const null-__Array__Int__var217__ (Array Int var217))
(declare-const var1242 var922) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder 
(assert (not (= var1242 null-var922)))
(declare-const var1011 Int) ; Statement: l27 := @parameter0: long 
(assert (not (= var1011 null-Int)))
(define-const var726 Bool var2703_access$100/-308734914) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream: boolean access$100()>() 
 ; Statement: if $z0 == 0 goto $l28 = l27 & -128L 
(assert (= (ite var726 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1738 Int (bv2nat (bvand ((_ int2bv 64) var1011) ((_ int2bv 64) (- 128))))) ; Statement: $l28 = l27 & -128L 
(define-const var3251 Int (ite (> var1738 0) 1 (ite (< var1738 0) (- 1) 0))) ; Statement: $b29 = $l28 cmp 0L 
 ; Statement: if $b29 != 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: byte[] buffer> 
(assert (not (not (= var3251 0)))) ; Negate: Cond: $b29 != 0  
(define-const var2670 (Array Int Int) (buffer/1295197723 var1242)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: byte[] buffer> 
(define-const var1964 Int (position/1295197723 var1242)) ; Statement: $i6 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> 
(define-const var386 Int (+ var1964 1)) ; Statement: $i7 = $i6 + 1 
(declare-const var1242!1 var922)
(assert (not (= var1242!1 null-var922)))
(assert (= (position/1295197723 var1242!1) var386)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> = $i7 
(define-const var1723 Int (cast-from-Int-to-Int var1011)) ; Statement: $i8 = (int) l27 
(define-const var234 Int (cast-from-Int-to-Int var1723)) ; Statement: $b9 = (byte) $i8 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2422 var1292) ; Statement: $r5 := @caughtexception 
(assert (not (= var2422 null-var1292)))
(define-const var1673 var3157 var3157-init) ; Statement: $r6 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException 
(define-const var2850 (Array Int var217) arr-var217-init) ; Statement: $r7 = newarray (java.lang.Object)[3] 
(define-const var3396 Int (position/1295197723 var1242!1)) ; Statement: $i25 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> 
(define-const var3831 Int (Int_valueOf/-1371140006 var3396)) ; Statement: $r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i25) 
(declare-const var2850!1 (Array Int var217))
(assert (not (= var2850!1 null-__Array__Int__var217__)))
(assert (= (select var2850!1 0) (cast-from-Int-to-var217 var3831))) ; Statement: $r7[0] = $r8 
(define-const var1751 Int (limit/1295197723 var1242!1)) ; Statement: $i26 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int limit> 
(define-const var2509 Int (Int_valueOf/-1371140006 var1751)) ; Statement: $r9 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i26) 
(declare-const var2850!2 (Array Int var217))
(assert (not (= var2850!2 null-__Array__Int__var217__)))
(assert (= (select var2850!2 1) (cast-from-Int-to-var217 var2509))) ; Statement: $r7[1] = $r9 
(define-const var679 Int (Int_valueOf/-1371140006 1)) ; Statement: $r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(1) 
(declare-const var2850!3 (Array Int var217))
(assert (not (= var2850!3 null-__Array__Int__var217__)))
(assert (= (select var2850!3 2) (cast-from-Int-to-var217 var679))) ; Statement: $r7[2] = $r10 
(define-const var2439 String (String_format/1339386452 "Pos: %d, limit: %d, len: %d" var2850!3)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Pos: %d, limit: %d, len: %d", $r7) 
(assert true)
;(assert (<init>/-1360024860 var1673 var2439 (cast-from-var1292-to-var3100 var2422))) ; Statement: specialinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5) 

(declare-const var1673!1 var3157)
(declare-const var2439!1 String)
(declare-const var2422!1 var1292)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var2703_access$100/-308734914=([], boolean), buffer/1295197723=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder], byte[]), position/1295197723=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder], int), cast-from-Int-to-Int=([long], int), var3157-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException), arr-var217-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var217=([java.lang.Integer], java.lang.Object), limit/1295197723=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder], int), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1360024860=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, java.lang.String, java.lang.Throwable], void), cast-from-var1292-to-var3100=([java.lang.IndexOutOfBoundsException], java.lang.Throwable)}
; {var922=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder, var1242=r0, var1011=l27, var2703=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream, var726=$z0, var1738=$l28, var3251=$b29, var2670=$r2, var1964=$i6, var386=$i7, var1723=$i8, var234=$b9, var1292=java.lang.IndexOutOfBoundsException, var2422=$r5, var3157=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, var1673=$r6, var217=java.lang.Object, var2850=$r7, var3396=$i25, var3831=$r8, var1751=$i26, var2509=$r9, var679=$r10, var2439=$r11, var3100=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder=var922, r0=var1242, l27=var1011, com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream=var2703, $z0=var726, $l28=var1738, $b29=var3251, $r2=var2670, $i6=var1964, $i7=var386, $i8=var1723, $b9=var234, java.lang.IndexOutOfBoundsException=var1292, $r5=var2422, com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException=var3157, $r6=var1673, java.lang.Object=var217, $r7=var2850, $i25=var3396, $r8=var3831, $i26=var1751, $r9=var2509, $r10=var679, $r11=var2439, java.lang.Throwable=var3100}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder;	l27 := @parameter0: long;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream: boolean access$100()>();	if $z0 == 0 goto $l28 = l27 & -128L;	$l28 = l27 & -128L;	$b29 = $l28 cmp 0L;	if $b29 != 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: byte[] buffer>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: byte[] buffer>;	$i6 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position>;	$i7 = $i6 + 1;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> = $i7;	$i8 = (int) l27;	$b9 = (byte) $i8;	$r5 := @caughtexception;	$r6 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException;	$r7 = newarray (java.lang.Object)[3];	$i25 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position>;	$r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i25);	$r7[0] = $r8;	$i26 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int limit>;	$r9 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i26);	$r7[1] = $r9;	$r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(1);	$r7[2] = $r10;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Pos: %d, limit: %d, len: %d", $r7);	specialinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5);	throw $r6
;block_num 4