(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1823 0)
(declare-sort var1829 0)
(declare-sort var2161 0)
(declare-sort var1881 0)
(declare-sort var3893 0)
(declare-sort var1657 0)
(declare-sort var2824 0)
(declare-sort var232 0)
(declare-sort var3299 0)
(declare-sort var2417 0)
(declare-sort var1687 0)
(declare-sort var1807 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getScope/200456311 (var1829) var1881)
(declare-fun globalNamespaceSupplier/206764520 (var1823) var3893)
(declare-fun var1657_inferStringValue/-1277371266 (var1881 var2161 var3893) String)
(declare-fun toLowerCase/1946809429 (String var232) String)
(declare-fun bannedAtrrs/206764520 (var1823) var3299)
(declare-fun contains/-1788778657 (var2417 var1687) Bool)
(declare-fun cast-from-var3299-to-var2417 (var3299) var2417)
(declare-fun cast-from-String-to-var1687 (String) var1687)
(declare-const null-var1823 var1823)
(declare-const null-var1829 var1829)
(declare-const null-var2161 var2161)
(declare-const null-String String)
(declare-const var232-ROOT var232)
(declare-const var1807-VIOLATION var1807)
(declare-const var1161 var1823) ; Statement: r2 := @this: com.google.javascript.jscomp.ConformanceRules$SecuritySensitiveAttributes 
(assert (not (= var1161 null-var1823)))
(declare-const var541 var1829) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var541 null-var1829)))
(declare-const var1206 var2161) ; Statement: r1 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var1206 null-var2161)))
(assert true)
(define-const var1700 var1881 (getScope/200456311 var541)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.Scope getScope()>() 
(define-const var734 var3893 (globalNamespaceSupplier/206764520 var1161)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.ConformanceRules$SecuritySensitiveAttributes: java.util.function.Supplier globalNamespaceSupplier> 
(define-const var231 String (var1657_inferStringValue/-1277371266 var1700 var1206 var734)) ; Statement: r10 = staticinvoke <com.google.javascript.jscomp.ConformanceRules$ConformanceUtil: java.lang.String inferStringValue(com.google.javascript.jscomp.Scope,com.google.javascript.rhino.Node,java.util.function.Supplier)>($r4, r1, $r3) 
 ; Statement: if r10 != null goto $r5 = <java.util.Locale: java.util.Locale ROOT> 
(assert (not (= var231 null-String))) ; Cond: r10 != null 
(define-const var1937 var232 var232-ROOT) ; Statement: $r5 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1252 String (toLowerCase/1946809429 var231 var1937)) ; Statement: r12 = virtualinvoke r10.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r5) 
(define-const var3718 var3299 (bannedAtrrs/206764520 var1161)) ; Statement: $r6 = r2.<com.google.javascript.jscomp.ConformanceRules$SecuritySensitiveAttributes: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet bannedAtrrs> 
(assert true)
(define-const var669 Bool (contains/-1788778657 (cast-from-var3299-to-var2417 var3718) (cast-from-String-to-var1687 var1252))) ; Statement: $z0 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: boolean contains(java.lang.Object)>(r12) 
 ; Statement: if $z0 != 0 goto $r7 = <com.google.javascript.jscomp.ConformanceRules$ConformanceResult: com.google.javascript.jscomp.ConformanceRules$ConformanceResult VIOLATION> 
(assert (not (= (ite var669 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2118 var1807 var1807-VIOLATION) ; Statement: $r7 = <com.google.javascript.jscomp.ConformanceRules$ConformanceResult: com.google.javascript.jscomp.ConformanceRules$ConformanceResult VIOLATION> 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getScope/200456311=([com.google.javascript.jscomp.NodeTraversal], com.google.javascript.jscomp.Scope), globalNamespaceSupplier/206764520=([com.google.javascript.jscomp.ConformanceRules$SecuritySensitiveAttributes], java.util.function.Supplier), var1657_inferStringValue/-1277371266=([com.google.javascript.jscomp.Scope, com.google.javascript.rhino.Node, java.util.function.Supplier], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), bannedAtrrs/206764520=([com.google.javascript.jscomp.ConformanceRules$SecuritySensitiveAttributes], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), contains/-1788778657=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableCollection, java.lang.Object], boolean), cast-from-var3299-to-var2417=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableCollection), cast-from-String-to-var1687=([java.lang.String], java.lang.Object)}
; {var1823=com.google.javascript.jscomp.ConformanceRules$SecuritySensitiveAttributes, var1161=r2, var1829=com.google.javascript.jscomp.NodeTraversal, var541=r0, var2161=com.google.javascript.rhino.Node, var1206=r1, var1881=com.google.javascript.jscomp.Scope, var1700=$r4, var3893=java.util.function.Supplier, var734=$r3, var1657=com.google.javascript.jscomp.ConformanceRules$ConformanceUtil, var231=r10, var2824=null_type, var232=java.util.Locale, var1937=$r5, var1252=r12, var3299=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3718=$r6, var2417=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableCollection, var1687=java.lang.Object, var669=$z0, var1807=com.google.javascript.jscomp.ConformanceRules$ConformanceResult, var2118=$r7}
; {com.google.javascript.jscomp.ConformanceRules$SecuritySensitiveAttributes=var1823, r2=var1161, com.google.javascript.jscomp.NodeTraversal=var1829, r0=var541, com.google.javascript.rhino.Node=var2161, r1=var1206, com.google.javascript.jscomp.Scope=var1881, $r4=var1700, java.util.function.Supplier=var3893, $r3=var734, com.google.javascript.jscomp.ConformanceRules$ConformanceUtil=var1657, r10=var231, null_type=var2824, java.util.Locale=var232, $r5=var1937, r12=var1252, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3299, $r6=var3718, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableCollection=var2417, java.lang.Object=var1687, $z0=var669, com.google.javascript.jscomp.ConformanceRules$ConformanceResult=var1807, $r7=var2118}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.ConformanceRules$SecuritySensitiveAttributes;	r0 := @parameter0: com.google.javascript.jscomp.NodeTraversal;	r1 := @parameter1: com.google.javascript.rhino.Node;	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.Scope getScope()>();	$r3 = r2.<com.google.javascript.jscomp.ConformanceRules$SecuritySensitiveAttributes: java.util.function.Supplier globalNamespaceSupplier>;	r10 = staticinvoke <com.google.javascript.jscomp.ConformanceRules$ConformanceUtil: java.lang.String inferStringValue(com.google.javascript.jscomp.Scope,com.google.javascript.rhino.Node,java.util.function.Supplier)>($r4, r1, $r3);	if r10 != null goto $r5 = <java.util.Locale: java.util.Locale ROOT>;	$r5 = <java.util.Locale: java.util.Locale ROOT>;	r12 = virtualinvoke r10.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r5);	$r6 = r2.<com.google.javascript.jscomp.ConformanceRules$SecuritySensitiveAttributes: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet bannedAtrrs>;	$z0 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: boolean contains(java.lang.Object)>(r12);	if $z0 != 0 goto $r7 = <com.google.javascript.jscomp.ConformanceRules$ConformanceResult: com.google.javascript.jscomp.ConformanceRules$ConformanceResult VIOLATION>;	$r7 = <com.google.javascript.jscomp.ConformanceRules$ConformanceResult: com.google.javascript.jscomp.ConformanceRules$ConformanceResult VIOLATION>;	return $r7
;block_num 3