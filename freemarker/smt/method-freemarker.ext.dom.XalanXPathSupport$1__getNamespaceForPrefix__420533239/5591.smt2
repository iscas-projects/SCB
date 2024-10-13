(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1001 0)
(declare-sort var1662 0)
(declare-sort var1865 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1865_getCurrentEnvironment/-1977882473 () var1865)
(declare-fun getDefaultNS/-140015768 (var1865) String)
(declare-const null-var1001 var1001)
(declare-const null-String String)
(declare-const var2179 var1001) ; Statement: r5 := @this: freemarker.ext.dom.XalanXPathSupport$1 
(assert (not (= var2179 null-var1001)))
(declare-const var1255 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1255 null-String)))
(assert true)
(define-const var1583 Bool (= var1255 "D")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("D") 
 ; Statement: if $z0 == 0 goto $r1 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>() 
(assert (not (= (ite var1583 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2232 var1865 var1865_getCurrentEnvironment/-1977882473) ; Statement: $r3 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>() 
(assert true)
(define-const var3306 String (getDefaultNS/-140015768 var2232)) ; Statement: $r4 = virtualinvoke $r3.<freemarker.core.Environment: java.lang.String getDefaultNS()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1865_getCurrentEnvironment/-1977882473=([], freemarker.core.Environment), getDefaultNS/-140015768=([freemarker.core.Environment], java.lang.String)}
; {var1001=freemarker.ext.dom.XalanXPathSupport$1, var2179=r5, var1255=r0, var1662=null_type, var1583=$z0, var1865=freemarker.core.Environment, var2232=$r3, var3306=$r4}
; {freemarker.ext.dom.XalanXPathSupport$1=var1001, r5=var2179, r0=var1255, null_type=var1662, $z0=var1583, freemarker.core.Environment=var1865, $r3=var2232, $r4=var3306}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: freemarker.ext.dom.XalanXPathSupport$1;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("D");	if $z0 == 0 goto $r1 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>();	$r3 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>();	$r4 = virtualinvoke $r3.<freemarker.core.Environment: java.lang.String getDefaultNS()>();	return $r4
;block_num 2