(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1338 0)
(declare-sort var113 0)
(declare-sort var78 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var78_getCurrentEnvironment/-1977882473 () var78)
(declare-fun getNamespaceForPrefix/-1071833487 (var78 String) String)
(declare-const null-var1338 var1338)
(declare-const null-String String)
(declare-const var1203 var1338) ; Statement: r5 := @this: freemarker.ext.dom.SunInternalXalanXPathSupport$1 
(assert (not (= var1203 null-var1338)))
(declare-const var2316 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2316 null-String)))
(assert true)
(define-const var3659 Bool (= var2316 "D")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("D") 
 ; Statement: if $z0 == 0 goto $r1 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>() 
(assert (= (ite var3659 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3174 var78 var78_getCurrentEnvironment/-1977882473) ; Statement: $r1 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>() 
(assert true)
(define-const var104 String (getNamespaceForPrefix/-1071833487 var3174 var2316)) ; Statement: $r2 = virtualinvoke $r1.<freemarker.core.Environment: java.lang.String getNamespaceForPrefix(java.lang.String)>(r0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var78_getCurrentEnvironment/-1977882473=([], freemarker.core.Environment), getNamespaceForPrefix/-1071833487=([freemarker.core.Environment, java.lang.String], java.lang.String)}
; {var1338=freemarker.ext.dom.SunInternalXalanXPathSupport$1, var1203=r5, var2316=r0, var113=null_type, var3659=$z0, var78=freemarker.core.Environment, var3174=$r1, var104=$r2}
; {freemarker.ext.dom.SunInternalXalanXPathSupport$1=var1338, r5=var1203, r0=var2316, null_type=var113, $z0=var3659, freemarker.core.Environment=var78, $r1=var3174, $r2=var104}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: freemarker.ext.dom.SunInternalXalanXPathSupport$1;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("D");	if $z0 == 0 goto $r1 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>();	$r1 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>();	$r2 = virtualinvoke $r1.<freemarker.core.Environment: java.lang.String getNamespaceForPrefix(java.lang.String)>(r0);	return $r2
;block_num 2