(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var68 0)
(declare-sort var3776 0)
(declare-sort var1272 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1272_getCurrentEnvironment/-1977882473 () var1272)
(declare-fun getNamespaceForPrefix/-1071833487 (var1272 String) String)
(declare-const null-var68 var68)
(declare-const null-String String)
(declare-const var3410 var68) ; Statement: r5 := @this: freemarker.ext.dom.JaxenXPathSupport$2 
(assert (not (= var3410 null-var68)))
(declare-const var899 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var899 null-String)))
(assert true)
(define-const var3958 Bool (= var899 "D")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("D") 
 ; Statement: if $z0 == 0 goto $r1 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>() 
(assert (= (ite var3958 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1818 var1272 var1272_getCurrentEnvironment/-1977882473) ; Statement: $r1 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>() 
(assert true)
(define-const var2884 String (getNamespaceForPrefix/-1071833487 var1818 var899)) ; Statement: $r2 = virtualinvoke $r1.<freemarker.core.Environment: java.lang.String getNamespaceForPrefix(java.lang.String)>(r0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var1272_getCurrentEnvironment/-1977882473=([], freemarker.core.Environment), getNamespaceForPrefix/-1071833487=([freemarker.core.Environment, java.lang.String], java.lang.String)}
; {var68=freemarker.ext.dom.JaxenXPathSupport$2, var3410=r5, var899=r0, var3776=null_type, var3958=$z0, var1272=freemarker.core.Environment, var1818=$r1, var2884=$r2}
; {freemarker.ext.dom.JaxenXPathSupport$2=var68, r5=var3410, r0=var899, null_type=var3776, $z0=var3958, freemarker.core.Environment=var1272, $r1=var1818, $r2=var2884}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: freemarker.ext.dom.JaxenXPathSupport$2;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("D");	if $z0 == 0 goto $r1 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>();	$r1 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>();	$r2 = virtualinvoke $r1.<freemarker.core.Environment: java.lang.String getNamespaceForPrefix(java.lang.String)>(r0);	return $r2
;block_num 2