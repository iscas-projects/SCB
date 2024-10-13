(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var753 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun index/1665060946 (var753) Int)
(declare-fun desc/1665060946 (var753) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var753 var753)
(declare-const var2477 var753) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.Descriptor$Iterator 
(assert (not (= var2477 null-var753)))
(define-const var3146 Int (index/1665060946 var2477)) ; Statement: $i0 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: int index> 
(define-const var916 String (desc/1665060946 var2477)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: java.lang.String desc> 
(assert true)
(define-const var539 Int (length/-134980193 var916)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 >= $i1 goto $z0 = 0 
(assert (not (>= var3146 var539))) ; Negate: Cond: $i0 >= $i1  
(define-const var1666 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= return $z0] 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {index/1665060946=([org.apache.ibatis.javassist.bytecode.Descriptor$Iterator], int), desc/1665060946=([org.apache.ibatis.javassist.bytecode.Descriptor$Iterator], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var753=org.apache.ibatis.javassist.bytecode.Descriptor$Iterator, var2477=r0, var3146=$i0, var916=$r1, var539=$i1, var1666=$z0}
; {org.apache.ibatis.javassist.bytecode.Descriptor$Iterator=var753, r0=var2477, $i0=var3146, $r1=var916, $i1=var539, $z0=var1666}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.Descriptor$Iterator;	$i0 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: int index>;	$r1 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: java.lang.String desc>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 >= $i1 goto $z0 = 0;	$z0 = 1;	goto [?= return $z0];	return $z0
;block_num 3