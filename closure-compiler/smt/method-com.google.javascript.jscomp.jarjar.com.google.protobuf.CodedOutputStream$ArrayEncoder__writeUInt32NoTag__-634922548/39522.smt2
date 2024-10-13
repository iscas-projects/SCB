(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var605 0)
(declare-sort var1930 0)
(declare-sort var3529 0)
(declare-sort var123 0)
(declare-sort var428 0)
(declare-sort var1244 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1930_access$100/-308734914 () Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun buffer/1295197723 (var605) (Array Int Int))
(declare-fun position/1295197723 (var605) Int)
(declare-fun var123-init () var123)
(declare-fun arr-var428-init () (Array Int var428))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var428 (Int) var428)
(declare-fun limit/1295197723 (var605) Int)
(declare-fun String_format/1339386452 (String (Array Int var428)) String)
(declare-fun <init>/-1360024860 (var123 String var1244) void)
(declare-fun cast-from-var3529-to-var1244 (var3529) var1244)
(declare-const null-var605 var605)
(declare-const null-Int Int)
(declare-const null-var3529 var3529)
(declare-const null-__Array__Int__var428__ (Array Int var428))
(declare-const var3396 var605) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder 
(assert (not (= var3396 null-var605)))
(declare-const var2239 Int) ; Statement: i55 := @parameter0: int 
(assert (not (= var2239 null-Int)))
(define-const var1701 Bool var1930_access$100/-308734914) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream: boolean access$100()>() 
 ; Statement: if $z0 == 0 goto $i70 = (int) -128 
(assert (= (ite var1701 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1786 Int (cast-from-Int-to-Int (- 128))) ; Statement: $i70 = (int) -128 
(define-const var851 Int (bv2nat (bvand ((_ int2bv 64) var2239) ((_ int2bv 64) var1786)))) ; Statement: $i60 = i55 & $i70 
 ; Statement: if $i60 != 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: byte[] buffer> 
(assert (not (not (= var851 0)))) ; Negate: Cond: $i60 != 0  
(define-const var943 (Array Int Int) (buffer/1295197723 var3396)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: byte[] buffer> 
(define-const var194 Int (position/1295197723 var3396)) ; Statement: $i5 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> 
(define-const var2699 Int (+ var194 1)) ; Statement: $i6 = $i5 + 1 
(declare-const var3396!1 var605)
(assert (not (= var3396!1 null-var605)))
(assert (= (position/1295197723 var3396!1) var2699)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> = $i6 
(define-const var1041 Int (cast-from-Int-to-Int var2239)) ; Statement: $b7 = (byte) i55 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1070 var3529) ; Statement: $r12 := @caughtexception 
(assert (not (= var1070 null-var3529)))
(define-const var2515 var123 var123-init) ; Statement: $r19 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException 
(define-const var1259 (Array Int var428) arr-var428-init) ; Statement: $r14 = newarray (java.lang.Object)[3] 
(define-const var1770 Int (position/1295197723 var3396!1)) ; Statement: $i53 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> 
(define-const var1449 Int (Int_valueOf/-1371140006 var1770)) ; Statement: $r15 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i53) 
(declare-const var1259!1 (Array Int var428))
(assert (not (= var1259!1 null-__Array__Int__var428__)))
(assert (= (select var1259!1 0) (cast-from-Int-to-var428 var1449))) ; Statement: $r14[0] = $r15 
(define-const var1165 Int (limit/1295197723 var3396!1)) ; Statement: $i54 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int limit> 
(define-const var2147 Int (Int_valueOf/-1371140006 var1165)) ; Statement: $r16 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i54) 
(declare-const var1259!2 (Array Int var428))
(assert (not (= var1259!2 null-__Array__Int__var428__)))
(assert (= (select var1259!2 1) (cast-from-Int-to-var428 var2147))) ; Statement: $r14[1] = $r16 
(define-const var3843 Int (Int_valueOf/-1371140006 1)) ; Statement: $r17 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(1) 
(declare-const var1259!3 (Array Int var428))
(assert (not (= var1259!3 null-__Array__Int__var428__)))
(assert (= (select var1259!3 2) (cast-from-Int-to-var428 var3843))) ; Statement: $r14[2] = $r17 
(define-const var3915 String (String_format/1339386452 "Pos: %d, limit: %d, len: %d" var1259!3)) ; Statement: $r18 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Pos: %d, limit: %d, len: %d", $r14) 
(assert true)
;(assert (<init>/-1360024860 var2515 var3915 (cast-from-var3529-to-var1244 var1070))) ; Statement: specialinvoke $r19.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r12) 

(declare-const var2515!1 var123)
(declare-const var3915!1 String)
(declare-const var1070!1 var3529)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var1930_access$100/-308734914=([], boolean), cast-from-Int-to-Int=([int], int), buffer/1295197723=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder], byte[]), position/1295197723=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder], int), var123-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException), arr-var428-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var428=([java.lang.Integer], java.lang.Object), limit/1295197723=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder], int), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1360024860=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, java.lang.String, java.lang.Throwable], void), cast-from-var3529-to-var1244=([java.lang.IndexOutOfBoundsException], java.lang.Throwable)}
; {var605=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder, var3396=r0, var2239=i55, var1930=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream, var1701=$z0, var1786=$i70, var851=$i60, var943=$r2, var194=$i5, var2699=$i6, var1041=$b7, var3529=java.lang.IndexOutOfBoundsException, var1070=$r12, var123=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, var2515=$r19, var428=java.lang.Object, var1259=$r14, var1770=$i53, var1449=$r15, var1165=$i54, var2147=$r16, var3843=$r17, var3915=$r18, var1244=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder=var605, r0=var3396, i55=var2239, com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream=var1930, $z0=var1701, $i70=var1786, $i60=var851, $r2=var943, $i5=var194, $i6=var2699, $b7=var1041, java.lang.IndexOutOfBoundsException=var3529, $r12=var1070, com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException=var123, $r19=var2515, java.lang.Object=var428, $r14=var1259, $i53=var1770, $r15=var1449, $i54=var1165, $r16=var2147, $r17=var3843, $r18=var3915, java.lang.Throwable=var1244}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder;	i55 := @parameter0: int;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream: boolean access$100()>();	if $z0 == 0 goto $i70 = (int) -128;	$i70 = (int) -128;	$i60 = i55 & $i70;	if $i60 != 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: byte[] buffer>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: byte[] buffer>;	$i5 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position>;	$i6 = $i5 + 1;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> = $i6;	$b7 = (byte) i55;	$r12 := @caughtexception;	$r19 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException;	$r14 = newarray (java.lang.Object)[3];	$i53 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position>;	$r15 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i53);	$r14[0] = $r15;	$i54 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int limit>;	$r16 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i54);	$r14[1] = $r16;	$r17 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(1);	$r14[2] = $r17;	$r18 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Pos: %d, limit: %d, len: %d", $r14);	specialinvoke $r19.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r12);	throw $r19
;block_num 4