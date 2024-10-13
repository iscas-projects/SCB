(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var480 0)
(declare-sort var1500 0)
(declare-sort var2008 0)
(declare-sort var2485 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun prefixToNamespaceURILookup/-1785025210 (var480) var2008)
(declare-fun var2008_get/1088891777 (var2008 var2485) var2485)
(declare-fun cast-from-String-to-var2485 (String) var2485)
(declare-fun cast-from-var2485-to-String (var2485) String)
(declare-const null-var480 var480)
(declare-const null-String String)
(declare-const var3350 var480) ; Statement: r1 := @this: freemarker.template.Template 
(assert (not (= var3350 null-var480)))
(declare-const var3103 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3103 null-String)))
(assert true)
(define-const var3754 Bool (= var3103 "")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z0 == 0 goto $r2 = r1.<freemarker.template.Template: java.util.Map prefixToNamespaceURILookup> 
(assert (= (ite var3754 1 0) 0)) ; Cond: $z0 == 0 
(define-const var444 var2008 (prefixToNamespaceURILookup/-1785025210 var3350)) ; Statement: $r2 = r1.<freemarker.template.Template: java.util.Map prefixToNamespaceURILookup> 
(define-const var3648 var2485 (var2008_get/1088891777 var444 (cast-from-String-to-var2485 var3103))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0) 
(define-const var161 String (cast-from-var2485-to-String var3648)) ; Statement: $r4 = (java.lang.String) $r3 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {prefixToNamespaceURILookup/-1785025210=([freemarker.template.Template], java.util.Map), var2008_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2485=([java.lang.String], java.lang.Object), cast-from-var2485-to-String=([java.lang.Object], java.lang.String)}
; {var480=freemarker.template.Template, var3350=r1, var3103=r0, var1500=null_type, var3754=$z0, var2008=java.util.Map, var444=$r2, var2485=java.lang.Object, var3648=$r3, var161=$r4}
; {freemarker.template.Template=var480, r1=var3350, r0=var3103, null_type=var1500, $z0=var3754, java.util.Map=var2008, $r2=var444, java.lang.Object=var2485, $r3=var3648, $r4=var161}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: freemarker.template.Template;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z0 == 0 goto $r2 = r1.<freemarker.template.Template: java.util.Map prefixToNamespaceURILookup>;	$r2 = r1.<freemarker.template.Template: java.util.Map prefixToNamespaceURILookup>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0);	$r4 = (java.lang.String) $r3;	return $r4
;block_num 2