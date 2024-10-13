(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var356 0)
(declare-sort var1775 0)
(declare-sort var1608 0)
(declare-sort var3656 0)
(declare-sort var1580 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/1295197723 (var356) (Array Int Int))
(declare-fun position/1295197723 (var356) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1608-init () var1608)
(declare-fun arr-var3656-init () (Array Int var3656))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var3656 (Int) var3656)
(declare-fun limit/1295197723 (var356) Int)
(declare-fun String_format/1339386452 (String (Array Int var3656)) String)
(declare-fun <init>/-1360024860 (var1608 String var1580) void)
(declare-fun cast-from-var1775-to-var1580 (var1775) var1580)
(declare-const null-var356 var356)
(declare-const null-Int Int)
(declare-const null-var1775 var1775)
(declare-const null-__Array__Int__var3656__ (Array Int var3656))
(declare-const var3178 var356) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder 
(assert (not (= var3178 null-var356)))
(declare-const var2089 Int) ; Statement: l2 := @parameter0: long 
(assert (not (= var2089 null-Int)))
(define-const var2148 (Array Int Int) (buffer/1295197723 var3178)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: byte[] buffer> 
(define-const var1326 Int (position/1295197723 var3178)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> 
(define-const var2036 Int (+ var1326 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var3178!1 var356)
(assert (not (= var3178!1 null-var356)))
(assert (= (position/1295197723 var3178!1) var2036)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> = $i1 
(define-const var2364 Int (cast-from-Int-to-Int var2089)) ; Statement: $i3 = (int) l2 
(define-const var1118 Int (bv2nat (bvand ((_ int2bv 64) var2364) ((_ int2bv 64) 255)))) ; Statement: $i4 = $i3 & 255 
(define-const var2673 Int (cast-from-Int-to-Int var1118)) ; Statement: $b5 = (byte) $i4 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var300 var1775) ; Statement: $r9 := @caughtexception 
(assert (not (= var300 null-var1775)))
(define-const var157 var1608 var1608-init) ; Statement: $r10 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException 
(define-const var1765 (Array Int var3656) arr-var3656-init) ; Statement: $r11 = newarray (java.lang.Object)[3] 
(define-const var1939 Int (position/1295197723 var3178!1)) ; Statement: $i48 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> 
(define-const var2978 Int (Int_valueOf/-1371140006 var1939)) ; Statement: $r12 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i48) 
(declare-const var1765!1 (Array Int var3656))
(assert (not (= var1765!1 null-__Array__Int__var3656__)))
(assert (= (select var1765!1 0) (cast-from-Int-to-var3656 var2978))) ; Statement: $r11[0] = $r12 
(define-const var3300 Int (limit/1295197723 var3178!1)) ; Statement: $i49 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int limit> 
(define-const var2607 Int (Int_valueOf/-1371140006 var3300)) ; Statement: $r13 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i49) 
(declare-const var1765!2 (Array Int var3656))
(assert (not (= var1765!2 null-__Array__Int__var3656__)))
(assert (= (select var1765!2 1) (cast-from-Int-to-var3656 var2607))) ; Statement: $r11[1] = $r13 
(define-const var979 Int (Int_valueOf/-1371140006 1)) ; Statement: $r14 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(1) 
(declare-const var1765!3 (Array Int var3656))
(assert (not (= var1765!3 null-__Array__Int__var3656__)))
(assert (= (select var1765!3 2) (cast-from-Int-to-var3656 var979))) ; Statement: $r11[2] = $r14 
(define-const var1726 String (String_format/1339386452 "Pos: %d, limit: %d, len: %d" var1765!3)) ; Statement: $r15 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Pos: %d, limit: %d, len: %d", $r11) 
(assert true)
;(assert (<init>/-1360024860 var157 var1726 (cast-from-var1775-to-var1580 var300))) ; Statement: specialinvoke $r10.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r9) 

(declare-const var157!1 var1608)
(declare-const var1726!1 String)
(declare-const var300!1 var1775)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/1295197723=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder], byte[]), position/1295197723=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder], int), cast-from-Int-to-Int=([long], int), var1608-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException), arr-var3656-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var3656=([java.lang.Integer], java.lang.Object), limit/1295197723=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder], int), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1360024860=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, java.lang.String, java.lang.Throwable], void), cast-from-var1775-to-var1580=([java.lang.IndexOutOfBoundsException], java.lang.Throwable)}
; {var356=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder, var3178=r0, var2089=l2, var2148=$r1, var1326=$i0, var2036=$i1, var2364=$i3, var1118=$i4, var2673=$b5, var1775=java.lang.IndexOutOfBoundsException, var300=$r9, var1608=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, var157=$r10, var3656=java.lang.Object, var1765=$r11, var1939=$i48, var2978=$r12, var3300=$i49, var2607=$r13, var979=$r14, var1726=$r15, var1580=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder=var356, r0=var3178, l2=var2089, $r1=var2148, $i0=var1326, $i1=var2036, $i3=var2364, $i4=var1118, $b5=var2673, java.lang.IndexOutOfBoundsException=var1775, $r9=var300, com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException=var1608, $r10=var157, java.lang.Object=var3656, $r11=var1765, $i48=var1939, $r12=var2978, $i49=var3300, $r13=var2607, $r14=var979, $r15=var1726, java.lang.Throwable=var1580}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder;	l2 := @parameter0: long;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: byte[] buffer>;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position>;	$i1 = $i0 + 1;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position> = $i1;	$i3 = (int) l2;	$i4 = $i3 & 255;	$b5 = (byte) $i4;	$r9 := @caughtexception;	$r10 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException;	$r11 = newarray (java.lang.Object)[3];	$i48 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int position>;	$r12 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i48);	$r11[0] = $r12;	$i49 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$ArrayEncoder: int limit>;	$r13 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i49);	$r11[1] = $r13;	$r14 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(1);	$r11[2] = $r14;	$r15 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Pos: %d, limit: %d, len: %d", $r11);	specialinvoke $r10.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r9);	throw $r10
;block_num 2