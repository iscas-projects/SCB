(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1933 0)
(declare-sort var2175 0)
(declare-sort var1881 0)
(declare-sort var205 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var205_getNodeName/2033747668 (var205) String)
(declare-fun cast-from-var2175-to-var205 (var2175) var205)
(declare-const null-var1933 var1933)
(declare-const null-var2175 var2175)
(declare-const null-var1881 var1881)
(declare-const var2004 var1933) ; Statement: r5 := @this: org.apache.log4j.rewrite.RewriteAppender 
(assert (not (= var2004 null-var1933)))
(declare-const var1809 var2175) ; Statement: r0 := @parameter0: org.w3c.dom.Element 
(assert (not (= var1809 null-var2175)))
(declare-const var3867 var1881) ; Statement: r3 := @parameter1: java.util.Properties 
(assert (not (= var3867 null-var1881)))
(define-const var2744 String (var205_getNodeName/2033747668 (cast-from-var2175-to-var205 var1809))) ; Statement: r1 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getNodeName()>() 
(define-const var3126 String "rewritePolicy") ; Statement: $r2 = "rewritePolicy" 
(assert true)
(define-const var1644 Bool (= var3126 var2744)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (= (ite var1644 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {var205_getNodeName/2033747668=([org.w3c.dom.Node], java.lang.String), cast-from-var2175-to-var205=([org.w3c.dom.Element], org.w3c.dom.Node)}
; {var1933=org.apache.log4j.rewrite.RewriteAppender, var2004=r5, var2175=org.w3c.dom.Element, var1809=r0, var1881=java.util.Properties, var3867=r3, var205=org.w3c.dom.Node, var2744=r1, var3126=$r2, var1644=$z0}
; {org.apache.log4j.rewrite.RewriteAppender=var1933, r5=var2004, org.w3c.dom.Element=var2175, r0=var1809, java.util.Properties=var1881, r3=var3867, org.w3c.dom.Node=var205, r1=var2744, $r2=var3126, $z0=var1644}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: org.apache.log4j.rewrite.RewriteAppender;	r0 := @parameter0: org.w3c.dom.Element;	r3 := @parameter1: java.util.Properties;	r1 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getNodeName()>();	$r2 = "rewritePolicy";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto return 0;	return 0
;block_num 2