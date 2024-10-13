(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var527 0)
(declare-sort var2417 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cloneMap/1309393268 (var527) var527)
(declare-fun getKey/-1967431913 (var2417) String)
(declare-fun replaceNoClone/1755318552 (var527 String var2417) var527)
(declare-const null-var527 var527)
(declare-const null-var2417 var2417)
(declare-const var527-$assertionsDisabled Bool)
(declare-const var2684 var527) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.PropertyHashMap 
(assert (not (= var2684 null-var527)))
(declare-const var2850 var2417) ; Statement: r1 := @parameter0: jdk.nashorn.internal.runtime.Property 
(assert (not (= var2850 null-var2417)))
(declare-const var2694 var2417) ; Statement: r2 := @parameter1: jdk.nashorn.internal.runtime.Property 
(assert (not (= var2694 null-var2417)))
(define-const var1934 Bool var527-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.PropertyHashMap: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $z1 = <jdk.nashorn.internal.runtime.PropertyHashMap: boolean $assertionsDisabled> 
(assert (not (= (ite var1934 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2376 Bool var527-$assertionsDisabled) ; Statement: $z1 = <jdk.nashorn.internal.runtime.PropertyHashMap: boolean $assertionsDisabled> 
 ; Statement: if $z1 != 0 goto $r4 = specialinvoke r0.<jdk.nashorn.internal.runtime.PropertyHashMap: jdk.nashorn.internal.runtime.PropertyHashMap cloneMap()>() 
(assert (not (= (ite var2376 1 0) 0))) ; Cond: $z1 != 0 
(assert true)
(define-const var1634 var527 (cloneMap/1309393268 var2684)) ; Statement: $r4 = specialinvoke r0.<jdk.nashorn.internal.runtime.PropertyHashMap: jdk.nashorn.internal.runtime.PropertyHashMap cloneMap()>() 
(assert true)
(define-const var3755 String (getKey/-1967431913 var2850)) ; Statement: $r3 = virtualinvoke r1.<jdk.nashorn.internal.runtime.Property: java.lang.String getKey()>() 
(assert true)
(define-const var1916 var527 (replaceNoClone/1755318552 var1634 var3755 var2694)) ; Statement: $r5 = specialinvoke $r4.<jdk.nashorn.internal.runtime.PropertyHashMap: jdk.nashorn.internal.runtime.PropertyHashMap replaceNoClone(java.lang.String,jdk.nashorn.internal.runtime.Property)>($r3, r2) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {cloneMap/1309393268=([jdk.nashorn.internal.runtime.PropertyHashMap], jdk.nashorn.internal.runtime.PropertyHashMap), getKey/-1967431913=([jdk.nashorn.internal.runtime.Property], java.lang.String), replaceNoClone/1755318552=([jdk.nashorn.internal.runtime.PropertyHashMap, java.lang.String, jdk.nashorn.internal.runtime.Property], jdk.nashorn.internal.runtime.PropertyHashMap)}
; {var527=jdk.nashorn.internal.runtime.PropertyHashMap, var2684=r0, var2417=jdk.nashorn.internal.runtime.Property, var2850=r1, var2694=r2, var1934=$z0, var2376=$z1, var1634=$r4, var3755=$r3, var1916=$r5}
; {jdk.nashorn.internal.runtime.PropertyHashMap=var527, r0=var2684, jdk.nashorn.internal.runtime.Property=var2417, r1=var2850, r2=var2694, $z0=var1934, $z1=var2376, $r4=var1634, $r3=var3755, $r5=var1916}
;seq 
;cnt {}
;stmts r0 := @this: jdk.nashorn.internal.runtime.PropertyHashMap;	r1 := @parameter0: jdk.nashorn.internal.runtime.Property;	r2 := @parameter1: jdk.nashorn.internal.runtime.Property;	$z0 = <jdk.nashorn.internal.runtime.PropertyHashMap: boolean $assertionsDisabled>;	if $z0 != 0 goto $z1 = <jdk.nashorn.internal.runtime.PropertyHashMap: boolean $assertionsDisabled>;	$z1 = <jdk.nashorn.internal.runtime.PropertyHashMap: boolean $assertionsDisabled>;	if $z1 != 0 goto $r4 = specialinvoke r0.<jdk.nashorn.internal.runtime.PropertyHashMap: jdk.nashorn.internal.runtime.PropertyHashMap cloneMap()>();	$r4 = specialinvoke r0.<jdk.nashorn.internal.runtime.PropertyHashMap: jdk.nashorn.internal.runtime.PropertyHashMap cloneMap()>();	$r3 = virtualinvoke r1.<jdk.nashorn.internal.runtime.Property: java.lang.String getKey()>();	$r5 = specialinvoke $r4.<jdk.nashorn.internal.runtime.PropertyHashMap: jdk.nashorn.internal.runtime.PropertyHashMap replaceNoClone(java.lang.String,jdk.nashorn.internal.runtime.Property)>($r3, r2);	return $r5
;block_num 3