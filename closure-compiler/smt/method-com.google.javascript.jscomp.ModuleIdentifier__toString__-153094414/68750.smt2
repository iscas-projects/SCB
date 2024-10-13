(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var596 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClosureNamespace/727654054 (var596) String)
(declare-fun getModuleName/-303603633 (var596) String)
(declare-const null-var596 var596)
(declare-const var2964 var596) ; Statement: r0 := @this: com.google.javascript.jscomp.ModuleIdentifier 
(assert (not (= var2964 null-var596)))
(assert true)
(define-const var776 String (getClosureNamespace/727654054 var2964)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.ModuleIdentifier: java.lang.String getClosureNamespace()>() 
(assert true)
(define-const var1620 String (getModuleName/-303603633 var2964)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.ModuleIdentifier: java.lang.String getModuleName()>() 
(assert true)
(define-const var3146 Bool (= var776 var1620)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke r0.<com.google.javascript.jscomp.ModuleIdentifier: java.lang.String getModuleName()>() 
(assert (not (= (ite var3146 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1373 String (getClosureNamespace/727654054 var2964)) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.ModuleIdentifier: java.lang.String getClosureNamespace()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getClosureNamespace/727654054=([com.google.javascript.jscomp.ModuleIdentifier], java.lang.String), getModuleName/-303603633=([com.google.javascript.jscomp.ModuleIdentifier], java.lang.String)}
; {var596=com.google.javascript.jscomp.ModuleIdentifier, var2964=r0, var776=$r2, var1620=$r1, var3146=$z0, var1373=$r6}
; {com.google.javascript.jscomp.ModuleIdentifier=var596, r0=var2964, $r2=var776, $r1=var1620, $z0=var3146, $r6=var1373}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.ModuleIdentifier;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.ModuleIdentifier: java.lang.String getClosureNamespace()>();	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.ModuleIdentifier: java.lang.String getModuleName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r4 = virtualinvoke r0.<com.google.javascript.jscomp.ModuleIdentifier: java.lang.String getModuleName()>();	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.ModuleIdentifier: java.lang.String getClosureNamespace()>();	return $r6
;block_num 2