(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1058 0)
(declare-sort var1755 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1058 var1058)
(declare-const null-var1755 var1755)
(declare-const var2501 var1058) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList 
(assert (not (= var2501 null-var1058)))
(declare-const var3937 var1755) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3937 null-var1755)))
(define-const var683 Bool false) ; Statement: $z0 = r0 instanceof java.lang.Character 
 ; Statement: if $z0 == 0 goto $i4 = (int) -1 
(assert (= (ite var683 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1030 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
(define-const var2980 Int var1030) ; Statement: $i1 = $i4 
(assert true) ; Non Conditional
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int)}
; {var1058=com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList, var2501=r1, var1755=java.lang.Object, var3937=r0, var683=$z0, var1030=$i4, var2980=$i1}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList=var1058, r1=var2501, java.lang.Object=var1755, r0=var3937, $z0=var683, $i4=var1030, $i1=var2980}
;seq 
;cnt {}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList;	r0 := @parameter0: java.lang.Object;	$z0 = r0 instanceof java.lang.Character;	if $z0 == 0 goto $i4 = (int) -1;	$i4 = (int) -1;	$i1 = $i4;	return $i1
;block_num 3