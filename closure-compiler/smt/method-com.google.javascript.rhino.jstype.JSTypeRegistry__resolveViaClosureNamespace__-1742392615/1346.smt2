(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1891 0)
(declare-sort var187 0)
(declare-sort var1139 0)
(declare-sort var2314 0)
(declare-sort var2614 0)
(declare-sort var2531 0)
(declare-sort var687 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2314_builder/-1909122123 () var1139)
(declare-fun closureNamespaces/-1088195336 (var1891) var2614)
(declare-fun var2614_get/1088891777 (var2614 var2531) var2531)
(declare-fun cast-from-String-to-var2531 (String) var2531)
(declare-fun cast-from-var2531-to-var687 (var2531) var687)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(declare-const null-var1891 var1891)
(declare-const null-String String)
(declare-const null-var687 var687)
(declare-const var968 var1891) ; Statement: r2 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry 
(assert (not (= var968 null-var1891)))
(declare-const var817 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var817 null-String)))
(define-const var375 String var817) ; Statement: r12 = r0 
(define-const var2003 var1139 var2314_builder/-1909122123) ; Statement: r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder builder()>() 
(assert true) ; Non Conditional
(define-const var3177 var2614 (closureNamespaces/-1088195336 var968)) ; Statement: $r3 = r2.<com.google.javascript.rhino.jstype.JSTypeRegistry: java.util.Map closureNamespaces> 
(define-const var870 var2531 (var2614_get/1088891777 var3177 (cast-from-String-to-var2531 var375))) ; Statement: $r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r12) 
(define-const var787 var687 (cast-from-var2531-to-var687 var870)) ; Statement: $r6 = (com.google.javascript.rhino.jstype.JSTypeRegistry$ClosureNamespace) $r4 
 ; Statement: if $r6 == null goto i0 = virtualinvoke r12.<java.lang.String: int lastIndexOf(java.lang.String)>(".") 
(assert (= var787 null-var687)) ; Cond: $r6 == null 
(assert true)
(define-const var2626 Int (lastIndexOf/-618837785 var375 ".")) ; Statement: i0 = virtualinvoke r12.<java.lang.String: int lastIndexOf(java.lang.String)>(".") 
 ; Statement: if i0 >= 0 goto $i1 = i0 + 1 
(assert (not (>= var2626 0))) ; Negate: Cond: i0 >= 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var2314_builder/-1909122123=([], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder), closureNamespaces/-1088195336=([com.google.javascript.rhino.jstype.JSTypeRegistry], java.util.Map), var2614_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2531=([java.lang.String], java.lang.Object), cast-from-var2531-to-var687=([java.lang.Object], com.google.javascript.rhino.jstype.JSTypeRegistry$ClosureNamespace), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int)}
; {var1891=com.google.javascript.rhino.jstype.JSTypeRegistry, var968=r2, var817=r0, var187=null_type, var375=r12, var1139=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder, var2314=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2003=r1, var2614=java.util.Map, var3177=$r3, var2531=java.lang.Object, var870=$r4, var687=com.google.javascript.rhino.jstype.JSTypeRegistry$ClosureNamespace, var787=$r6, var2626=i0}
; {com.google.javascript.rhino.jstype.JSTypeRegistry=var1891, r2=var968, r0=var817, null_type=var187, r12=var375, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder=var1139, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2314, r1=var2003, java.util.Map=var2614, $r3=var3177, java.lang.Object=var2531, $r4=var870, com.google.javascript.rhino.jstype.JSTypeRegistry$ClosureNamespace=var687, $r6=var787, i0=var2626}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1}
;stmts r2 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry;	r0 := @parameter0: java.lang.String;	r12 = r0;	r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList$Builder builder()>();	$r3 = r2.<com.google.javascript.rhino.jstype.JSTypeRegistry: java.util.Map closureNamespaces>;	$r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r12);	$r6 = (com.google.javascript.rhino.jstype.JSTypeRegistry$ClosureNamespace) $r4;	if $r6 == null goto i0 = virtualinvoke r12.<java.lang.String: int lastIndexOf(java.lang.String)>(".");	i0 = virtualinvoke r12.<java.lang.String: int lastIndexOf(java.lang.String)>(".");	if i0 >= 0 goto $i1 = i0 + 1;	return null
;block_num 4