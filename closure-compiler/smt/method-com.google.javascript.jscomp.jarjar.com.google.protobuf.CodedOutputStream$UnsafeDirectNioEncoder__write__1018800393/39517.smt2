(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3208 0)
(declare-sort var3052 0)
(declare-sort var2585 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3052-init () var3052)
(declare-fun arr-var2585-init () (Array Int var2585))
(declare-fun position/443167375 (var3208) Int)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun cast-from-Int-to-var2585 (Int) var2585)
(declare-fun limit/443167375 (var3208) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun String_format/1339386452 (String (Array Int var2585)) String)
(declare-fun <init>/140713380 (var3052 String) void)
(declare-const null-var3208 var3208)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-__Array__Int__var2585__ (Array Int var2585))
(declare-const var3579 var3208) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder 
(assert (not (= var3579 null-var3208)))
(declare-const var360 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var360 null-__Array__Int__Int__)))
(declare-const var560 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var560 null-Int)))
(declare-const var2471 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var2471 null-Int)))
 ; Statement: if r0 == null goto (branch) 
(assert (= var360 null-__Array__Int__Int__)) ; Cond: r0 == null 
 ; Statement: if r0 != null goto $r10 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException 
(assert (not (= var360 null-__Array__Int__Int__))) ; Cond: r0 != null 
(define-const var2527 var3052 var3052-init) ; Statement: $r10 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException 
(define-const var1809 (Array Int var2585) arr-var2585-init) ; Statement: $r2 = newarray (java.lang.Object)[3] 
(define-const var399 Int (position/443167375 var3579)) ; Statement: $l0 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position> 
(define-const var3023 Int (Int_valueOf/-1102777585 var399)) ; Statement: $r4 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0) 
(declare-const var1809!1 (Array Int var2585))
(assert (not (= var1809!1 null-__Array__Int__var2585__)))
(assert (= (select var1809!1 0) (cast-from-Int-to-var2585 var3023))) ; Statement: $r2[0] = $r4 
(define-const var1270 Int (limit/443167375 var3579)) ; Statement: $l1 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long limit> 
(define-const var1831 Int (Int_valueOf/-1102777585 var1270)) ; Statement: $r5 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l1) 
(declare-const var1809!2 (Array Int var2585))
(assert (not (= var1809!2 null-__Array__Int__var2585__)))
(assert (= (select var1809!2 1) (cast-from-Int-to-var2585 var1831))) ; Statement: $r2[1] = $r5 
(define-const var2221 Int (Int_valueOf/-1371140006 var2471)) ; Statement: $r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i2) 
(declare-const var1809!3 (Array Int var2585))
(assert (not (= var1809!3 null-__Array__Int__var2585__)))
(assert (= (select var1809!3 2) (cast-from-Int-to-var2585 var2221))) ; Statement: $r2[2] = $r6 
(define-const var3785 String (String_format/1339386452 "Pos: %d, limit: %d, len: %d" var1809!3)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Pos: %d, limit: %d, len: %d", $r2) 
(assert true)
;(assert (<init>/140713380 var2527 var3785)) ; Statement: specialinvoke $r10.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException: void <init>(java.lang.String)>($r7) 

(declare-const var2527!1 var3052)
(declare-const var3785!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var3052-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException), arr-var2585-init=([], java.lang.Object[]), position/443167375=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder], long), Int_valueOf/-1102777585=([long], java.lang.Long), cast-from-Int-to-var2585=([java.lang.Long], java.lang.Object), limit/443167375=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder], long), Int_valueOf/-1371140006=([int], java.lang.Integer), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/140713380=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, java.lang.String], void)}
; {var3208=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder, var3579=r3, var360=r0, var560=i3, var2471=i2, var3052=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, var2527=$r10, var2585=java.lang.Object, var1809=$r2, var399=$l0, var3023=$r4, var1270=$l1, var1831=$r5, var2221=$r6, var3785=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder=var3208, r3=var3579, r0=var360, i3=var560, i2=var2471, com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException=var3052, $r10=var2527, java.lang.Object=var2585, $r2=var1809, $l0=var399, $r4=var3023, $l1=var1270, $r5=var1831, $r6=var2221, $r7=var3785}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder;	r0 := @parameter0: byte[];	i3 := @parameter1: int;	i2 := @parameter2: int;	if r0 == null goto (branch);	if r0 != null goto $r10 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException;	$r10 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException;	$r2 = newarray (java.lang.Object)[3];	$l0 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position>;	$r4 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0);	$r2[0] = $r4;	$l1 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long limit>;	$r5 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l1);	$r2[1] = $r5;	$r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i2);	$r2[2] = $r6;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Pos: %d, limit: %d, len: %d", $r2);	specialinvoke $r10.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException: void <init>(java.lang.String)>($r7);	throw $r10
;block_num 3