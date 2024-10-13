(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3882 0)
(declare-sort var751 0)
(declare-sort var2257 0)
(declare-sort var66 0)
(declare-sort var2858 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun boms/631444026 (var3882) var2257)
(declare-fun var2257_contains/-441121415 (var2257 var66) Bool)
(declare-fun cast-from-var751-to-var66 (var751) var66)
(declare-fun getBOM/1524523806 (var3882) var751)
(declare-fun var2858_equals/1031735566 (var66 var66) Bool)
(declare-const null-var3882 var3882)
(declare-const null-var751 var751)
(declare-const var2289 var3882) ; Statement: r0 := @this: org.apache.commons.io.input.BOMInputStream 
(assert (not (= var2289 null-var3882)))
(declare-const var2071 var751) ; Statement: r1 := @parameter0: org.apache.commons.io.ByteOrderMark 
(assert (not (= var2071 null-var751)))
(define-const var1623 var2257 (boms/631444026 var2289)) ; Statement: $r2 = r0.<org.apache.commons.io.input.BOMInputStream: java.util.List boms> 
(define-const var1382 Bool (var2257_contains/-441121415 var1623 (cast-from-var751-to-var66 var2071))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.List: boolean contains(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $r3 = virtualinvoke r0.<org.apache.commons.io.input.BOMInputStream: org.apache.commons.io.ByteOrderMark getBOM()>() 
(assert (not (= (ite var1382 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var1888 var751 (getBOM/1524523806 var2289)) ; Statement: $r3 = virtualinvoke r0.<org.apache.commons.io.input.BOMInputStream: org.apache.commons.io.ByteOrderMark getBOM()>() 
(define-const var1100 Bool (var2858_equals/1031735566 (cast-from-var751-to-var66 var1888) (cast-from-var751-to-var66 var2071))) ; Statement: $z1 = staticinvoke <java.util.Objects: boolean equals(java.lang.Object,java.lang.Object)>($r3, r1) 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {boms/631444026=([org.apache.commons.io.input.BOMInputStream], java.util.List), var2257_contains/-441121415=([java.util.List, java.lang.Object], boolean), cast-from-var751-to-var66=([org.apache.commons.io.ByteOrderMark], java.lang.Object), getBOM/1524523806=([org.apache.commons.io.input.BOMInputStream], org.apache.commons.io.ByteOrderMark), var2858_equals/1031735566=([java.lang.Object, java.lang.Object], boolean)}
; {var3882=org.apache.commons.io.input.BOMInputStream, var2289=r0, var751=org.apache.commons.io.ByteOrderMark, var2071=r1, var2257=java.util.List, var1623=$r2, var66=java.lang.Object, var1382=$z0, var1888=$r3, var2858=java.util.Objects, var1100=$z1}
; {org.apache.commons.io.input.BOMInputStream=var3882, r0=var2289, org.apache.commons.io.ByteOrderMark=var751, r1=var2071, java.util.List=var2257, $r2=var1623, java.lang.Object=var66, $z0=var1382, $r3=var1888, java.util.Objects=var2858, $z1=var1100}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.commons.io.input.BOMInputStream;	r1 := @parameter0: org.apache.commons.io.ByteOrderMark;	$r2 = r0.<org.apache.commons.io.input.BOMInputStream: java.util.List boms>;	$z0 = interfaceinvoke $r2.<java.util.List: boolean contains(java.lang.Object)>(r1);	if $z0 != 0 goto $r3 = virtualinvoke r0.<org.apache.commons.io.input.BOMInputStream: org.apache.commons.io.ByteOrderMark getBOM()>();	$r3 = virtualinvoke r0.<org.apache.commons.io.input.BOMInputStream: org.apache.commons.io.ByteOrderMark getBOM()>();	$z1 = staticinvoke <java.util.Objects: boolean equals(java.lang.Object,java.lang.Object)>($r3, r1);	return $z1
;block_num 2