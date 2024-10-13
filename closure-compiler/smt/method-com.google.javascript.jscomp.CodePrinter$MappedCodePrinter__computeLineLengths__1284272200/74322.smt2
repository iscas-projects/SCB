(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1748 0)
(declare-sort var1811 0)
(declare-sort var338 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var338_builder/-1909122123 () var1811)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun build/-319551664 (var1811) var338)
(declare-const null-String String)
(declare-const var1364 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1364 null-String)))
(define-const var653 var1811 var338_builder/-1909122123) ; Statement: r0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder builder()>() 
(define-const var1033 Int 0) ; Statement: i1 = 0 
(assert true)
(define-const var1655 Int (indexOf/-1037706067 var1364 10)) ; Statement: i2 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(10) 
(assert true) ; Non Conditional
(define-const var2817 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if i2 <= $i4 goto $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList build()>() 
(assert (<= var1655 var2817)) ; Cond: i2 <= $i4 
(assert true)
(define-const var1737 var338 (build/-319551664 var653)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList build()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var338_builder/-1909122123=([], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), build/-319551664=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList)}
; {var1364=r1, var1748=null_type, var1811=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder, var338=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var653=r0, var1033=i1, var1655=i2, var2817=$i4, var1737=$r2}
; {r1=var1364, null_type=var1748, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder=var1811, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var338, r0=var653, i1=var1033, i2=var1655, $i4=var2817, $r2=var1737}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder builder()>();	i1 = 0;	i2 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(10);	$i4 = (int) -1;	if i2 <= $i4 goto $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList build()>();	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList build()>();	return $r2
;block_num 3