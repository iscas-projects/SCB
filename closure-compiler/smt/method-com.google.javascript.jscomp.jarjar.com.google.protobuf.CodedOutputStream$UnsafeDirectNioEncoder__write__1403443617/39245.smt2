(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var555 0)
(declare-sort var33 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/443167375 (var555) Int)
(declare-fun limit/443167375 (var555) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var33_putByte/-2044460282 (Int Int) void)
(declare-const null-var555 var555)
(declare-const null-Int Int)
(declare-const var2573 var555) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder 
(assert (not (= var2573 null-var555)))
(declare-const var3737 Int) ; Statement: b5 := @parameter0: byte 
(assert (not (= var3737 null-Int)))
(define-const var1907 Int (position/443167375 var2573)) ; Statement: $l1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position> 
(define-const var2793 Int (limit/443167375 var2573)) ; Statement: $l0 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long limit> 
(define-const var334 Int (ite (> var1907 var2793) 1 (ite (< var1907 var2793) (- 1) 0))) ; Statement: $b2 = $l1 cmp $l0 
(define-const var3483 Int (cast-from-Int-to-Int var334)) ; Statement: $i8 = (int) $b2 
 ; Statement: if $i8 < 0 goto $l3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position> 
(assert (< var3483 0)) ; Cond: $i8 < 0 
(define-const var3307 Int (position/443167375 var2573)) ; Statement: $l3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position> 
(define-const var3262 Int (+ var3307 1)) ; Statement: $l4 = $l3 + 1L 
(declare-const var2573!1 var555)
(assert (not (= var2573!1 null-var555)))
(assert (= (position/443167375 var2573!1) var3262)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position> = $l4 
;(assert (var33_putByte/-2044460282 var3307 var3737)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.UnsafeUtil: void putByte(long,byte)>($l3, b5) 

(declare-const var3307!1 Int)
(declare-const var3737!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {position/443167375=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder], long), limit/443167375=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder], long), cast-from-Int-to-Int=([byte], int), var33_putByte/-2044460282=([long, byte], void)}
; {var555=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder, var2573=r0, var3737=b5, var1907=$l1, var2793=$l0, var334=$b2, var3483=$i8, var3307=$l3, var3262=$l4, var33=com.google.javascript.jscomp.jarjar.com.google.protobuf.UnsafeUtil}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder=var555, r0=var2573, b5=var3737, $l1=var1907, $l0=var2793, $b2=var334, $i8=var3483, $l3=var3307, $l4=var3262, com.google.javascript.jscomp.jarjar.com.google.protobuf.UnsafeUtil=var33}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder;	b5 := @parameter0: byte;	$l1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position>;	$l0 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long limit>;	$b2 = $l1 cmp $l0;	$i8 = (int) $b2;	if $i8 < 0 goto $l3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position>;	$l3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position>;	$l4 = $l3 + 1L;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$UnsafeDirectNioEncoder: long position> = $l4;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.UnsafeUtil: void putByte(long,byte)>($l3, b5);	return
;block_num 2