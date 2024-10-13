(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2944 0)
(declare-sort var1924 0)
(declare-sort var3092 0)
(declare-sort var3180 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3180_getNodeName/2033747668 (var3180) String)
(declare-fun cast-from-var1924-to-var3180 (var1924) var3180)
(declare-const null-var2944 var2944)
(declare-const null-var1924 var1924)
(declare-const null-var3092 var3092)
(declare-const var2633 var2944) ; Statement: r5 := @this: org.apache.log4j.net.SMTPAppender 
(assert (not (= var2633 null-var2944)))
(declare-const var2583 var1924) ; Statement: r0 := @parameter0: org.w3c.dom.Element 
(assert (not (= var2583 null-var1924)))
(declare-const var1830 var3092) ; Statement: r3 := @parameter1: java.util.Properties 
(assert (not (= var1830 null-var3092)))
(define-const var2838 String "triggeringPolicy") ; Statement: $r2 = "triggeringPolicy" 
(define-const var1135 String (var3180_getNodeName/2033747668 (cast-from-var1924-to-var3180 var2583))) ; Statement: $r1 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getNodeName()>() 
(assert true)
(define-const var1428 Bool (= var2838 var1135)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (= (ite var1428 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3180_getNodeName/2033747668=([org.w3c.dom.Node], java.lang.String), cast-from-var1924-to-var3180=([org.w3c.dom.Element], org.w3c.dom.Node)}
; {var2944=org.apache.log4j.net.SMTPAppender, var2633=r5, var1924=org.w3c.dom.Element, var2583=r0, var3092=java.util.Properties, var1830=r3, var2838=$r2, var3180=org.w3c.dom.Node, var1135=$r1, var1428=$z0}
; {org.apache.log4j.net.SMTPAppender=var2944, r5=var2633, org.w3c.dom.Element=var1924, r0=var2583, java.util.Properties=var3092, r3=var1830, $r2=var2838, org.w3c.dom.Node=var3180, $r1=var1135, $z0=var1428}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: org.apache.log4j.net.SMTPAppender;	r0 := @parameter0: org.w3c.dom.Element;	r3 := @parameter1: java.util.Properties;	$r2 = "triggeringPolicy";	$r1 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getNodeName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto return 0;	return 0
;block_num 2