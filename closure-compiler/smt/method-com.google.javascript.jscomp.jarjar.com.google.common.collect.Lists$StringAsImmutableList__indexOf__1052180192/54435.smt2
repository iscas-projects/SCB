(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2833 0)
(declare-sort var63 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2833 var2833)
(declare-const null-var63 var63)
(declare-const var3002 var2833) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList 
(assert (not (= var3002 null-var2833)))
(declare-const var2055 var63) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2055 null-var63)))
(define-const var2611 Bool false) ; Statement: $z0 = r0 instanceof java.lang.Character 
 ; Statement: if $z0 == 0 goto $i4 = (int) -1 
(assert (= (ite var2611 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2559 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
(define-const var1212 Int var2559) ; Statement: $i1 = $i4 
(assert true) ; Non Conditional
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int)}
; {var2833=com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList, var3002=r1, var63=java.lang.Object, var2055=r0, var2611=$z0, var2559=$i4, var1212=$i1}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList=var2833, r1=var3002, java.lang.Object=var63, r0=var2055, $z0=var2611, $i4=var2559, $i1=var1212}
;seq 
;cnt {}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList;	r0 := @parameter0: java.lang.Object;	$z0 = r0 instanceof java.lang.Character;	if $z0 == 0 goto $i4 = (int) -1;	$i4 = (int) -1;	$i1 = $i4;	return $i1
;block_num 3