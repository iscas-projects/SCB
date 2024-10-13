(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var556 0)
(declare-sort var2924 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getLength-Arr-var556-1 ((Array Int var556)) Int)
(declare-const null-__Array__Int__var556__ (Array Int var556))
(declare-const null-String String)
(declare-const var2707 (Array Int var556)) ; Statement: r1 := @parameter0: jdk.nashorn.internal.runtime.PropertyHashMap$Element[] 
(assert (not (= var2707 null-__Array__Int__var556__)))
(declare-const var216 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var216 null-String)))
(assert true)
(define-const var1199 Int (hashCode/-467973558 var216)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
(define-const var963 Int (getLength-Arr-var556-1 var2707)) ; Statement: $i0 = lengthof r1 
(define-const var3984 Int (- var963 1)) ; Statement: $i1 = $i0 - 1 
(define-const var731 Int (bv2nat (bvand ((_ int2bv 64) var1199) ((_ int2bv 64) var3984)))) ; Statement: $i3 = $i2 & $i1 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), getLength-Arr-var556-1=([jdk.nashorn.internal.runtime.PropertyHashMap$Element[]], int)}
; {var556=jdk.nashorn.internal.runtime.PropertyHashMap$Element, var2707=r1, var216=r0, var2924=null_type, var1199=$i2, var963=$i0, var3984=$i1, var731=$i3}
; {jdk.nashorn.internal.runtime.PropertyHashMap$Element=var556, r1=var2707, r0=var216, null_type=var2924, $i2=var1199, $i0=var963, $i1=var3984, $i3=var731}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @parameter0: jdk.nashorn.internal.runtime.PropertyHashMap$Element[];	r0 := @parameter1: java.lang.String;	$i2 = virtualinvoke r0.<java.lang.String: int hashCode()>();	$i0 = lengthof r1;	$i1 = $i0 - 1;	$i3 = $i2 & $i1;	return $i3
;block_num 1