(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3032 0)
(declare-sort var733 0)
(declare-sort var1805 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/443167375 (var3032) Int)
(declare-fun oneVarintLimit/443167375 (var3032) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun limit/443167375 (var3032) Int)
(declare-fun var733-init () var733)
(declare-fun arr-var1805-init () (Array Int var1805))
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun cast-from-Int-to-var1805 (Int) var1805)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun String_format/1339386452 (String (Array Int var1805)) String)
(declare-fun <init>/140713380 (var733 String) void)
(declare-const null-var3032 var3032)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var1805__ (Array Int var1805))
(declare-const var1284 var3032) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder 
(assert (not (= var1284 null-var3032)))
(declare-const var163 Int) ; Statement: i26 := @parameter0: int 
(assert (not (= var163 null-Int)))
(define-const var1709 Int (position/443167375 var1284)) ; Statement: $l1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position> 
(define-const var42 Int (oneVarintLimit/443167375 var1284)) ; Statement: $l0 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long oneVarintLimit> 
(define-const var1816 Int (ite (> var1709 var42) 1 (ite (< var1709 var42) (- 1) 0))) ; Statement: $b2 = $l1 cmp $l0 
(define-const var2284 Int (cast-from-Int-to-Int var1816)) ; Statement: $i27 = (int) $b2 
 ; Statement: if $i27 > 0 goto $l4 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position> 
(assert (> var2284 0)) ; Cond: $i27 > 0 
(define-const var2641 Int (position/443167375 var1284)) ; Statement: $l4 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position> 
(define-const var2577 Int (limit/443167375 var1284)) ; Statement: $l3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long limit> 
(define-const var1954 Int (ite (> var2641 var2577) 1 (ite (< var2641 var2577) (- 1) 0))) ; Statement: $b5 = $l4 cmp $l3 
(define-const var3369 Int (cast-from-Int-to-Int var1954)) ; Statement: $i30 = (int) $b5 
 ; Statement: if $i30 >= 0 goto $r7 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException 
(assert (>= var3369 0)) ; Cond: $i30 >= 0 
(define-const var3346 var733 var733-init) ; Statement: $r7 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException 
(define-const var1812 (Array Int var1805) arr-var1805-init) ; Statement: $r2 = newarray (java.lang.Object)[3] 
(define-const var1564 Int (position/443167375 var1284)) ; Statement: $l6 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position> 
(define-const var2697 Int (Int_valueOf/-1102777585 var1564)) ; Statement: $r3 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l6) 
(declare-const var1812!1 (Array Int var1805))
(assert (not (= var1812!1 null-__Array__Int__var1805__)))
(assert (= (select var1812!1 0) (cast-from-Int-to-var1805 var2697))) ; Statement: $r2[0] = $r3 
(define-const var3821 Int (limit/443167375 var1284)) ; Statement: $l7 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long limit> 
(define-const var2244 Int (Int_valueOf/-1102777585 var3821)) ; Statement: $r4 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l7) 
(declare-const var1812!2 (Array Int var1805))
(assert (not (= var1812!2 null-__Array__Int__var1805__)))
(assert (= (select var1812!2 1) (cast-from-Int-to-var1805 var2244))) ; Statement: $r2[1] = $r4 
(define-const var166 Int (Int_valueOf/-1371140006 1)) ; Statement: $r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(1) 
(declare-const var1812!3 (Array Int var1805))
(assert (not (= var1812!3 null-__Array__Int__var1805__)))
(assert (= (select var1812!3 2) (cast-from-Int-to-var1805 var166))) ; Statement: $r2[2] = $r5 
(define-const var1454 String (String_format/1339386452 "Pos: %d, limit: %d, len: %d" var1812!3)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Pos: %d, limit: %d, len: %d", $r2) 
(assert true)
;(assert (<init>/140713380 var3346 var1454)) ; Statement: specialinvoke $r7.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException: void <init>(java.lang.String)>($r6) 

(declare-const var3346!1 var733)
(declare-const var1454!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {position/443167375=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder], long), oneVarintLimit/443167375=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder], long), cast-from-Int-to-Int=([byte], int), limit/443167375=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder], long), var733-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException), arr-var1805-init=([], java.lang.Object[]), Int_valueOf/-1102777585=([long], java.lang.Long), cast-from-Int-to-var1805=([java.lang.Long], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/140713380=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, java.lang.String], void)}
; {var3032=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder, var1284=r0, var163=i26, var1709=$l1, var42=$l0, var1816=$b2, var2284=$i27, var2641=$l4, var2577=$l3, var1954=$b5, var3369=$i30, var733=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, var3346=$r7, var1805=java.lang.Object, var1812=$r2, var1564=$l6, var2697=$r3, var3821=$l7, var2244=$r4, var166=$r5, var1454=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder=var3032, r0=var1284, i26=var163, $l1=var1709, $l0=var42, $b2=var1816, $i27=var2284, $l4=var2641, $l3=var2577, $b5=var1954, $i30=var3369, com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException=var733, $r7=var3346, java.lang.Object=var1805, $r2=var1812, $l6=var1564, $r3=var2697, $l7=var3821, $r4=var2244, $r5=var166, $r6=var1454}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder;	i26 := @parameter0: int;	$l1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position>;	$l0 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long oneVarintLimit>;	$b2 = $l1 cmp $l0;	$i27 = (int) $b2;	if $i27 > 0 goto $l4 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position>;	$l4 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position>;	$l3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long limit>;	$b5 = $l4 cmp $l3;	$i30 = (int) $b5;	if $i30 >= 0 goto $r7 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException;	$r7 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException;	$r2 = newarray (java.lang.Object)[3];	$l6 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position>;	$r3 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l6);	$r2[0] = $r3;	$l7 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long limit>;	$r4 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l7);	$r2[1] = $r4;	$r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(1);	$r2[2] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Pos: %d, limit: %d, len: %d", $r2);	specialinvoke $r7.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException: void <init>(java.lang.String)>($r6);	throw $r7
;block_num 3