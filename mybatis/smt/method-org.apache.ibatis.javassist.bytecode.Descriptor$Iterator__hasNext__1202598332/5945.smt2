(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var939 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun index/1665060946 (var939) Int)
(declare-fun desc/1665060946 (var939) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var939 var939)
(declare-const var3741 var939) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.Descriptor$Iterator 
(assert (not (= var3741 null-var939)))
(define-const var2782 Int (index/1665060946 var3741)) ; Statement: $i0 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: int index> 
(define-const var2196 String (desc/1665060946 var3741)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: java.lang.String desc> 
(assert true)
(define-const var279 Int (length/-134980193 var2196)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 >= $i1 goto $z0 = 0 
(assert (>= var2782 var279)) ; Cond: $i0 >= $i1 
(define-const var1437 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {index/1665060946=([org.apache.ibatis.javassist.bytecode.Descriptor$Iterator], int), desc/1665060946=([org.apache.ibatis.javassist.bytecode.Descriptor$Iterator], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var939=org.apache.ibatis.javassist.bytecode.Descriptor$Iterator, var3741=r0, var2782=$i0, var2196=$r1, var279=$i1, var1437=$z0}
; {org.apache.ibatis.javassist.bytecode.Descriptor$Iterator=var939, r0=var3741, $i0=var2782, $r1=var2196, $i1=var279, $z0=var1437}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.Descriptor$Iterator;	$i0 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: int index>;	$r1 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: java.lang.String desc>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 >= $i1 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 3