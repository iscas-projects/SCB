(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var588 0)
(declare-sort var51 0)
(declare-sort var1198 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/443167375 (var588) Int)
(declare-fun limit/443167375 (var588) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var51-init () var51)
(declare-fun arr-var1198-init () (Array Int var1198))
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun cast-from-Int-to-var1198 (Int) var1198)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun String_format/1339386452 (String (Array Int var1198)) String)
(declare-fun <init>/140713380 (var51 String) void)
(declare-const null-var588 var588)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var1198__ (Array Int var1198))
(declare-const var1641 var588) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder 
(assert (not (= var1641 null-var588)))
(declare-const var1473 Int) ; Statement: b5 := @parameter0: byte 
(assert (not (= var1473 null-Int)))
(define-const var21 Int (position/443167375 var1641)) ; Statement: $l1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position> 
(define-const var1129 Int (limit/443167375 var1641)) ; Statement: $l0 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long limit> 
(define-const var2793 Int (ite (> var21 var1129) 1 (ite (< var21 var1129) (- 1) 0))) ; Statement: $b2 = $l1 cmp $l0 
(define-const var2295 Int (cast-from-Int-to-Int var2793)) ; Statement: $i8 = (int) $b2 
 ; Statement: if $i8 < 0 goto $l3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position> 
(assert (not (< var2295 0))) ; Negate: Cond: $i8 < 0  
(define-const var1098 var51 var51-init) ; Statement: $r7 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException 
(define-const var3516 (Array Int var1198) arr-var1198-init) ; Statement: $r2 = newarray (java.lang.Object)[3] 
(define-const var1194 Int (position/443167375 var1641)) ; Statement: $l6 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position> 
(define-const var1771 Int (Int_valueOf/-1102777585 var1194)) ; Statement: $r3 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l6) 
(declare-const var3516!1 (Array Int var1198))
(assert (not (= var3516!1 null-__Array__Int__var1198__)))
(assert (= (select var3516!1 0) (cast-from-Int-to-var1198 var1771))) ; Statement: $r2[0] = $r3 
(define-const var2732 Int (limit/443167375 var1641)) ; Statement: $l7 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long limit> 
(define-const var2107 Int (Int_valueOf/-1102777585 var2732)) ; Statement: $r4 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l7) 
(declare-const var3516!2 (Array Int var1198))
(assert (not (= var3516!2 null-__Array__Int__var1198__)))
(assert (= (select var3516!2 1) (cast-from-Int-to-var1198 var2107))) ; Statement: $r2[1] = $r4 
(define-const var1468 Int (Int_valueOf/-1371140006 1)) ; Statement: $r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(1) 
(declare-const var3516!3 (Array Int var1198))
(assert (not (= var3516!3 null-__Array__Int__var1198__)))
(assert (= (select var3516!3 2) (cast-from-Int-to-var1198 var1468))) ; Statement: $r2[2] = $r5 
(define-const var3028 String (String_format/1339386452 "Pos: %d, limit: %d, len: %d" var3516!3)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Pos: %d, limit: %d, len: %d", $r2) 
(assert true)
;(assert (<init>/140713380 var1098 var3028)) ; Statement: specialinvoke $r7.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException: void <init>(java.lang.String)>($r6) 

(declare-const var1098!1 var51)
(declare-const var3028!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {position/443167375=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder], long), limit/443167375=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder], long), cast-from-Int-to-Int=([byte], int), var51-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException), arr-var1198-init=([], java.lang.Object[]), Int_valueOf/-1102777585=([long], java.lang.Long), cast-from-Int-to-var1198=([java.lang.Long], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/140713380=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, java.lang.String], void)}
; {var588=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder, var1641=r0, var1473=b5, var21=$l1, var1129=$l0, var2793=$b2, var2295=$i8, var51=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, var1098=$r7, var1198=java.lang.Object, var3516=$r2, var1194=$l6, var1771=$r3, var2732=$l7, var2107=$r4, var1468=$r5, var3028=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder=var588, r0=var1641, b5=var1473, $l1=var21, $l0=var1129, $b2=var2793, $i8=var2295, com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException=var51, $r7=var1098, java.lang.Object=var1198, $r2=var3516, $l6=var1194, $r3=var1771, $l7=var2732, $r4=var2107, $r5=var1468, $r6=var3028}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder;	b5 := @parameter0: byte;	$l1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position>;	$l0 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long limit>;	$b2 = $l1 cmp $l0;	$i8 = (int) $b2;	if $i8 < 0 goto $l3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position>;	$r7 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException;	$r2 = newarray (java.lang.Object)[3];	$l6 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position>;	$r3 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l6);	$r2[0] = $r3;	$l7 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long limit>;	$r4 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l7);	$r2[1] = $r4;	$r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(1);	$r2[2] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Pos: %d, limit: %d, len: %d", $r2);	specialinvoke $r7.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException: void <init>(java.lang.String)>($r6);	throw $r7
;block_num 2