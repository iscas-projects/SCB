(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3278 0)
(declare-sort var1086 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1086_getNodeName/2033747668 (var1086) String)
(declare-fun semanticAttributes/112281648 (var3278) Bool)
(declare-const null-var3278 var3278)
(declare-const null-var1086 var1086)
(declare-const var2149 var3278) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty 
(assert (not (= var2149 null-var3278)))
(declare-const var1975 var1086) ; Statement: r0 := @parameter0: org.w3c.dom.Node 
(assert (not (= var1975 null-var1086)))
(define-const var1954 String (var1086_getNodeName/2033747668 var1975)) ; Statement: r1 = interfaceinvoke r0.<org.w3c.dom.Node: java.lang.String getNodeName()>() 
(define-const var2370 Bool (semanticAttributes/112281648 var2149)) ; Statement: $z0 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty: boolean semanticAttributes> 
 ; Statement: if $z0 == 0 goto $z1 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty: boolean collapseAttributes> 
(assert (not (= (ite var2370 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2289 String "refid") ; Statement: $r10 = "refid" 
(assert true)
(define-const var702 Bool (= var2289 var1954)) ; Statement: $z2 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z2 == 0 goto $z3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty: boolean isSemanticAttribute(java.lang.String)>(r1) 
(assert (not (= (ite var702 1 0) 0))) ; Negate: Cond: $z2 == 0  
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {var1086_getNodeName/2033747668=([org.w3c.dom.Node], java.lang.String), semanticAttributes/112281648=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty], boolean)}
; {var3278=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty, var2149=r2, var1086=org.w3c.dom.Node, var1975=r0, var1954=r1, var2370=$z0, var2289=$r10, var702=$z2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty=var3278, r2=var2149, org.w3c.dom.Node=var1086, r0=var1975, r1=var1954, $z0=var2370, $r10=var2289, $z2=var702}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty;	r0 := @parameter0: org.w3c.dom.Node;	r1 = interfaceinvoke r0.<org.w3c.dom.Node: java.lang.String getNodeName()>();	$z0 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty: boolean semanticAttributes>;	if $z0 == 0 goto $z1 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty: boolean collapseAttributes>;	$r10 = "refid";	$z2 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z2 == 0 goto $z3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty: boolean isSemanticAttribute(java.lang.String)>(r1);	return ""
;block_num 3