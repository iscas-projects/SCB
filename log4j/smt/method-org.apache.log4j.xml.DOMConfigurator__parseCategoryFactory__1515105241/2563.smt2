(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1040 0)
(declare-sort var1789 0)
(declare-sort var1943 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1789_getAttribute/210607306 (var1789 String) String)
(declare-fun subst/-1514982940 (var1040 String) String)
(declare-fun var1943_error/-402343703 (String) void)
(declare-fun var1943_debug/381960894 (String) void)
(declare-const null-var1040 var1040)
(declare-const null-var1789 var1789)
(declare-const var590 var1040) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var590 null-var1040)))
(declare-const var1000 var1789) ; Statement: r1 := @parameter0: org.w3c.dom.Element 
(assert (not (= var1000 null-var1789)))
(define-const var1639 String (var1789_getAttribute/210607306 var1000 "class")) ; Statement: $r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert true)
(define-const var2100 String (subst/-1514982940 var590 var1639)) ; Statement: r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2) 
(define-const var471 String "") ; Statement: $r4 = "" 
(assert true)
(define-const var1234 Bool (= var471 var2100)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 == 0 goto $r5 = new java.lang.StringBuffer 
(assert (not (= (ite var1234 1 0) 0))) ; Negate: Cond: $z0 == 0  
;(assert (var1943_error/-402343703 "Category Factory tag class attribute not found.")) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>("Category Factory tag class attribute not found.") 

(declare-const var2388 String)
;(assert (var1943_debug/381960894 "No Category Factory configured.")) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("No Category Factory configured.") 

(declare-const var1084 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1789_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), var1943_error/-402343703=([java.lang.String], void), var1943_debug/381960894=([java.lang.String], void)}
; {var1040=org.apache.log4j.xml.DOMConfigurator, var590=r0, var1789=org.w3c.dom.Element, var1000=r1, var1639=$r2, var2100=r3, var471=$r4, var1234=$z0, var1943=org.apache.log4j.helpers.LogLog, var2388="Category Factory tag class attribute not found.", var1084="No Category Factory configured."}
; {org.apache.log4j.xml.DOMConfigurator=var1040, r0=var590, org.w3c.dom.Element=var1789, r1=var1000, $r2=var1639, r3=var2100, $r4=var471, $z0=var1234, org.apache.log4j.helpers.LogLog=var1943, "Category Factory tag class attribute not found."=var2388, "No Category Factory configured."=var1084}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r1 := @parameter0: org.w3c.dom.Element;	$r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2);	$r4 = "";	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 == 0 goto $r5 = new java.lang.StringBuffer;	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>("Category Factory tag class attribute not found.");	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("No Category Factory configured.");	goto [?= return];	return
;block_num 3