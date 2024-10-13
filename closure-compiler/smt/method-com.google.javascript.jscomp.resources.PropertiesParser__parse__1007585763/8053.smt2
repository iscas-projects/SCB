(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var272 0)
(declare-sort var920 0)
(declare-sort var1038 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1038_builder/1998586901 () var920)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun buildOrThrow/891430389 (var920) var1038)
(declare-const null-String String)
(declare-const var2768 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2768 null-String)))
(define-const var1298 var920 var1038_builder/1998586901) ; Statement: r0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder builder()>() 
(assert true)
(define-const var3499 (Array Int String) (split/-636890950 var2768 "\r?\n")) ; Statement: r2 = virtualinvoke r1.<java.lang.String: java.lang.String[] split(java.lang.String)>("\r?\n") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var2768 "\r?\n") i) (re.++ (re.* re.all) (re.++ (re.opt (str.to_re "\u{005c}u{000d}")) (str.to_re "\u{005c}u{000a}")) (re.* re.all))))))
(define-const var2382 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(define-const var3416 Int (getLength-Arr-String-1 var3499)) ; Statement: $i0 = lengthof r2 
 ; Statement: if i7 >= $i0 goto $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap buildOrThrow()>() 
(assert (>= var2382 var3416)) ; Cond: i7 >= $i0 
(assert true)
(define-const var3391 var1038 (buildOrThrow/891430389 var1298)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap buildOrThrow()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1038_builder/1998586901=([], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), buildOrThrow/891430389=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap)}
; {var2768=r1, var272=null_type, var920=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder, var1038=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1298=r0, var3499=r2, var2382=i7, var3416=$i0, var3391=$r3}
; {r1=var2768, null_type=var272, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder=var920, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1038, r0=var1298, r2=var3499, i7=var2382, $i0=var3416, $r3=var3391}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder builder()>();	r2 = virtualinvoke r1.<java.lang.String: java.lang.String[] split(java.lang.String)>("\r?\n");	i7 = 0;	$i0 = lengthof r2;	if i7 >= $i0 goto $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap buildOrThrow()>();	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap buildOrThrow()>();	return $r3
;block_num 3