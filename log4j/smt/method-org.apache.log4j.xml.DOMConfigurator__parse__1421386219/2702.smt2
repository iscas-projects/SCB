(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2891 0)
(declare-sort var2875 0)
(declare-sort var1907 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2875_getTagName/1916305756 (var2875) String)
(declare-fun var1907_error/-402343703 (String) void)
(declare-const null-var2891 var2891)
(declare-const null-var2875 var2875)
(declare-const var1224 var2891) ; Statement: r2 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var1224 null-var2891)))
(declare-const var371 var2875) ; Statement: r0 := @parameter0: org.w3c.dom.Element 
(assert (not (= var371 null-var2875)))
(define-const var372 String (var2875_getTagName/1916305756 var371)) ; Statement: r1 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getTagName()>() 
(assert true)
(define-const var1082 Bool (= var372 "log4j:configuration")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log4j:configuration") 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("debug") 
(assert (not (not (= (ite var1082 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var2628 Bool (= var372 "configuration")) ; Statement: $z19 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("configuration") 
 ; Statement: if $z19 == 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>("DOM element is - not a <log4j:configuration> element.") 
(assert (= (ite var2628 1 0) 0)) ; Cond: $z19 == 0 
;(assert (var1907_error/-402343703 "DOM element is - not a <log4j:configuration> element.")) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>("DOM element is - not a <log4j:configuration> element.") 

(declare-const var2534 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2875_getTagName/1916305756=([org.w3c.dom.Element], java.lang.String), var1907_error/-402343703=([java.lang.String], void)}
; {var2891=org.apache.log4j.xml.DOMConfigurator, var1224=r2, var2875=org.w3c.dom.Element, var371=r0, var372=r1, var1082=$z0, var2628=$z19, var1907=org.apache.log4j.helpers.LogLog, var2534="DOM element is - not a <log4j:configuration> element."}
; {org.apache.log4j.xml.DOMConfigurator=var2891, r2=var1224, org.w3c.dom.Element=var2875, r0=var371, r1=var372, $z0=var1082, $z19=var2628, org.apache.log4j.helpers.LogLog=var1907, "DOM element is - not a <log4j:configuration> element."=var2534}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r2 := @this: org.apache.log4j.xml.DOMConfigurator;	r0 := @parameter0: org.w3c.dom.Element;	r1 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getTagName()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log4j:configuration");	if $z0 != 0 goto $r3 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("debug");	$z19 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("configuration");	if $z19 == 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>("DOM element is - not a <log4j:configuration> element.");	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>("DOM element is - not a <log4j:configuration> element.");	return
;block_num 3