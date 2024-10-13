(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1217 0)
(declare-sort var1662 0)
(declare-sort var2038 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2038_getCurrentEnvironment/-1977882473 () var2038)
(declare-fun getDefaultNS/-140015768 (var2038) String)
(declare-const null-var1217 var1217)
(declare-const null-String String)
(declare-const var2101 var1217) ; Statement: r5 := @this: freemarker.ext.dom.SunInternalXalanXPathSupport$1 
(assert (not (= var2101 null-var1217)))
(declare-const var2736 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2736 null-String)))
(assert true)
(define-const var1998 Bool (= var2736 "D")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("D") 
 ; Statement: if $z0 == 0 goto $r1 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>() 
(assert (not (= (ite var1998 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3747 var2038 var2038_getCurrentEnvironment/-1977882473) ; Statement: $r3 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>() 
(assert true)
(define-const var2442 String (getDefaultNS/-140015768 var3747)) ; Statement: $r4 = virtualinvoke $r3.<freemarker.core.Environment: java.lang.String getDefaultNS()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2038_getCurrentEnvironment/-1977882473=([], freemarker.core.Environment), getDefaultNS/-140015768=([freemarker.core.Environment], java.lang.String)}
; {var1217=freemarker.ext.dom.SunInternalXalanXPathSupport$1, var2101=r5, var2736=r0, var1662=null_type, var1998=$z0, var2038=freemarker.core.Environment, var3747=$r3, var2442=$r4}
; {freemarker.ext.dom.SunInternalXalanXPathSupport$1=var1217, r5=var2101, r0=var2736, null_type=var1662, $z0=var1998, freemarker.core.Environment=var2038, $r3=var3747, $r4=var2442}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: freemarker.ext.dom.SunInternalXalanXPathSupport$1;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("D");	if $z0 == 0 goto $r1 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>();	$r3 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>();	$r4 = virtualinvoke $r3.<freemarker.core.Environment: java.lang.String getDefaultNS()>();	return $r4
;block_num 2