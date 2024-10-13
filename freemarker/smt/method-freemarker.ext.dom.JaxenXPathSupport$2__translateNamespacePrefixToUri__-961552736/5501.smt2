(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2373 0)
(declare-sort var3430 0)
(declare-sort var523 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var523_getCurrentEnvironment/-1977882473 () var523)
(declare-fun getDefaultNS/-140015768 (var523) String)
(declare-const null-var2373 var2373)
(declare-const null-String String)
(declare-const var3761 var2373) ; Statement: r5 := @this: freemarker.ext.dom.JaxenXPathSupport$2 
(assert (not (= var3761 null-var2373)))
(declare-const var3704 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3704 null-String)))
(assert true)
(define-const var1938 Bool (= var3704 "D")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("D") 
 ; Statement: if $z0 == 0 goto $r1 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>() 
(assert (not (= (ite var1938 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3956 var523 var523_getCurrentEnvironment/-1977882473) ; Statement: $r3 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>() 
(assert true)
(define-const var2651 String (getDefaultNS/-140015768 var3956)) ; Statement: $r4 = virtualinvoke $r3.<freemarker.core.Environment: java.lang.String getDefaultNS()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var523_getCurrentEnvironment/-1977882473=([], freemarker.core.Environment), getDefaultNS/-140015768=([freemarker.core.Environment], java.lang.String)}
; {var2373=freemarker.ext.dom.JaxenXPathSupport$2, var3761=r5, var3704=r0, var3430=null_type, var1938=$z0, var523=freemarker.core.Environment, var3956=$r3, var2651=$r4}
; {freemarker.ext.dom.JaxenXPathSupport$2=var2373, r5=var3761, r0=var3704, null_type=var3430, $z0=var1938, freemarker.core.Environment=var523, $r3=var3956, $r4=var2651}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: freemarker.ext.dom.JaxenXPathSupport$2;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("D");	if $z0 == 0 goto $r1 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>();	$r3 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>();	$r4 = virtualinvoke $r3.<freemarker.core.Environment: java.lang.String getDefaultNS()>();	return $r4
;block_num 2