(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var442 0)
(declare-sort var2995 0)
(declare-sort var2999 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/443167375 (var442) Int)
(declare-fun oneVarintLimit/443167375 (var442) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun limit/443167375 (var442) Int)
(declare-fun var2995-init () var2995)
(declare-fun arr-var2999-init () (Array Int var2999))
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun cast-from-Int-to-var2999 (Int) var2999)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun String_format/1339386452 (String (Array Int var2999)) String)
(declare-fun <init>/140713380 (var2995 String) void)
(declare-const null-var442 var442)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var2999__ (Array Int var2999))
(declare-const var1652 var442) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder 
(assert (not (= var1652 null-var442)))
(declare-const var2717 Int) ; Statement: l32 := @parameter0: long 
(assert (not (= var2717 null-Int)))
(define-const var2308 Int (position/443167375 var1652)) ; Statement: $l1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position> 
(define-const var2443 Int (oneVarintLimit/443167375 var1652)) ; Statement: $l0 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long oneVarintLimit> 
(define-const var1460 Int (ite (> var2308 var2443) 1 (ite (< var2308 var2443) (- 1) 0))) ; Statement: $b2 = $l1 cmp $l0 
(define-const var474 Int (cast-from-Int-to-Int var1460)) ; Statement: $i33 = (int) $b2 
 ; Statement: if $i33 > 0 goto $l4 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position> 
(assert (> var474 0)) ; Cond: $i33 > 0 
(define-const var669 Int (position/443167375 var1652)) ; Statement: $l4 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position> 
(define-const var2110 Int (limit/443167375 var1652)) ; Statement: $l3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long limit> 
(define-const var2834 Int (ite (> var669 var2110) 1 (ite (< var669 var2110) (- 1) 0))) ; Statement: $b5 = $l4 cmp $l3 
(define-const var2341 Int (cast-from-Int-to-Int var2834)) ; Statement: $i34 = (int) $b5 
 ; Statement: if $i34 >= 0 goto $r7 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException 
(assert (>= var2341 0)) ; Cond: $i34 >= 0 
(define-const var2525 var2995 var2995-init) ; Statement: $r7 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException 
(define-const var1531 (Array Int var2999) arr-var2999-init) ; Statement: $r2 = newarray (java.lang.Object)[3] 
(define-const var1399 Int (position/443167375 var1652)) ; Statement: $l6 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position> 
(define-const var2890 Int (Int_valueOf/-1102777585 var1399)) ; Statement: $r3 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l6) 
(declare-const var1531!1 (Array Int var2999))
(assert (not (= var1531!1 null-__Array__Int__var2999__)))
(assert (= (select var1531!1 0) (cast-from-Int-to-var2999 var2890))) ; Statement: $r2[0] = $r3 
(define-const var1445 Int (limit/443167375 var1652)) ; Statement: $l7 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long limit> 
(define-const var513 Int (Int_valueOf/-1102777585 var1445)) ; Statement: $r4 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l7) 
(declare-const var1531!2 (Array Int var2999))
(assert (not (= var1531!2 null-__Array__Int__var2999__)))
(assert (= (select var1531!2 1) (cast-from-Int-to-var2999 var513))) ; Statement: $r2[1] = $r4 
(define-const var2959 Int (Int_valueOf/-1371140006 1)) ; Statement: $r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(1) 
(declare-const var1531!3 (Array Int var2999))
(assert (not (= var1531!3 null-__Array__Int__var2999__)))
(assert (= (select var1531!3 2) (cast-from-Int-to-var2999 var2959))) ; Statement: $r2[2] = $r5 
(define-const var2635 String (String_format/1339386452 "Pos: %d, limit: %d, len: %d" var1531!3)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Pos: %d, limit: %d, len: %d", $r2) 
(assert true)
;(assert (<init>/140713380 var2525 var2635)) ; Statement: specialinvoke $r7.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException: void <init>(java.lang.String)>($r6) 

(declare-const var2525!1 var2995)
(declare-const var2635!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {position/443167375=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder], long), oneVarintLimit/443167375=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder], long), cast-from-Int-to-Int=([byte], int), limit/443167375=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder], long), var2995-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException), arr-var2999-init=([], java.lang.Object[]), Int_valueOf/-1102777585=([long], java.lang.Long), cast-from-Int-to-var2999=([java.lang.Long], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/140713380=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, java.lang.String], void)}
; {var442=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder, var1652=r0, var2717=l32, var2308=$l1, var2443=$l0, var1460=$b2, var474=$i33, var669=$l4, var2110=$l3, var2834=$b5, var2341=$i34, var2995=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, var2525=$r7, var2999=java.lang.Object, var1531=$r2, var1399=$l6, var2890=$r3, var1445=$l7, var513=$r4, var2959=$r5, var2635=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder=var442, r0=var1652, l32=var2717, $l1=var2308, $l0=var2443, $b2=var1460, $i33=var474, $l4=var669, $l3=var2110, $b5=var2834, $i34=var2341, com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException=var2995, $r7=var2525, java.lang.Object=var2999, $r2=var1531, $l6=var1399, $r3=var2890, $l7=var1445, $r4=var513, $r5=var2959, $r6=var2635}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder;	l32 := @parameter0: long;	$l1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position>;	$l0 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long oneVarintLimit>;	$b2 = $l1 cmp $l0;	$i33 = (int) $b2;	if $i33 > 0 goto $l4 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position>;	$l4 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position>;	$l3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long limit>;	$b5 = $l4 cmp $l3;	$i34 = (int) $b5;	if $i34 >= 0 goto $r7 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException;	$r7 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException;	$r2 = newarray (java.lang.Object)[3];	$l6 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position>;	$r3 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l6);	$r2[0] = $r3;	$l7 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long limit>;	$r4 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l7);	$r2[1] = $r4;	$r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(1);	$r2[2] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Pos: %d, limit: %d, len: %d", $r2);	specialinvoke $r7.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException: void <init>(java.lang.String)>($r6);	throw $r7
;block_num 3