(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var262 0)
(declare-sort var1585 0)
(declare-sort var2693 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2693_getCurrentEnvironment/-1977882473 () var2693)
(declare-fun getNamespaceForPrefix/-1071833487 (var2693 String) String)
(declare-const null-var262 var262)
(declare-const null-String String)
(declare-const var2289 var262) ; Statement: r5 := @this: freemarker.ext.dom.XalanXPathSupport$1 
(assert (not (= var2289 null-var262)))
(declare-const var774 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var774 null-String)))
(assert true)
(define-const var789 Bool (= var774 "D")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("D") 
 ; Statement: if $z0 == 0 goto $r1 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>() 
(assert (= (ite var789 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1737 var2693 var2693_getCurrentEnvironment/-1977882473) ; Statement: $r1 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>() 
(assert true)
(define-const var2148 String (getNamespaceForPrefix/-1071833487 var1737 var774)) ; Statement: $r2 = virtualinvoke $r1.<freemarker.core.Environment: java.lang.String getNamespaceForPrefix(java.lang.String)>(r0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2693_getCurrentEnvironment/-1977882473=([], freemarker.core.Environment), getNamespaceForPrefix/-1071833487=([freemarker.core.Environment, java.lang.String], java.lang.String)}
; {var262=freemarker.ext.dom.XalanXPathSupport$1, var2289=r5, var774=r0, var1585=null_type, var789=$z0, var2693=freemarker.core.Environment, var1737=$r1, var2148=$r2}
; {freemarker.ext.dom.XalanXPathSupport$1=var262, r5=var2289, r0=var774, null_type=var1585, $z0=var789, freemarker.core.Environment=var2693, $r1=var1737, $r2=var2148}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: freemarker.ext.dom.XalanXPathSupport$1;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("D");	if $z0 == 0 goto $r1 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>();	$r1 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>();	$r2 = virtualinvoke $r1.<freemarker.core.Environment: java.lang.String getNamespaceForPrefix(java.lang.String)>(r0);	return $r2
;block_num 2