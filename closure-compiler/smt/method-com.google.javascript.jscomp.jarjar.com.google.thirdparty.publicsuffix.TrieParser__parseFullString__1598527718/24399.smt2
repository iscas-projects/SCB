(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2191 0)
(declare-sort var1381 0)
(declare-sort var2336 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2336_builder/1998586901 () var1381)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun buildOrThrow/891430389 (var1381) var2336)
(declare-const null-String String)
(declare-const var250 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var250 null-String)))
(define-const var2023 var1381 var2336_builder/1998586901) ; Statement: r0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder builder()>() 
(assert true)
(define-const var2276 Int (length/-134980193 var250)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3075 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap buildOrThrow()>() 
(assert (>= var3075 var2276)) ; Cond: i2 >= i0 
(assert true)
(define-const var60 var2336 (buildOrThrow/891430389 var2023)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap buildOrThrow()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2336_builder/1998586901=([], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder), length/-134980193=([java.lang.String], int), buildOrThrow/891430389=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap)}
; {var250=r1, var2191=null_type, var1381=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder, var2336=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2023=r0, var2276=i0, var3075=i2, var60=$r2}
; {r1=var250, null_type=var2191, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder=var1381, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2336, r0=var2023, i0=var2276, i2=var3075, $r2=var60}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder builder()>();	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i2 = 0;	if i2 >= i0 goto $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap buildOrThrow()>();	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap buildOrThrow()>();	return $r2
;block_num 3