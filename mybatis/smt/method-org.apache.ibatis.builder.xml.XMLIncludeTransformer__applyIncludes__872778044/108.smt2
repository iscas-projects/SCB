(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3800 0)
(declare-sort var2904 0)
(declare-sort var2531 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2904_getNodeName/2033747668 (var2904) String)
(declare-fun var2904_getNodeType/-368491152 (var2904) Int)
(declare-const null-var3800 var3800)
(declare-const null-var2904 var2904)
(declare-const null-var2531 var2531)
(declare-const null-Bool Bool)
(declare-const var2564 var3800) ; Statement: r6 := @this: org.apache.ibatis.builder.xml.XMLIncludeTransformer 
(assert (not (= var2564 null-var3800)))
(declare-const var1463 var2904) ; Statement: r0 := @parameter0: org.w3c.dom.Node 
(assert (not (= var1463 null-var2904)))
(declare-const var1211 var2531) ; Statement: r3 := @parameter1: java.util.Properties 
(assert (not (= var1211 null-var2531)))
(declare-const var1182 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var1182 null-Bool)))
(define-const var2090 String "include") ; Statement: $r2 = "include" 
(define-const var3278 String (var2904_getNodeName/2033747668 var1463)) ; Statement: $r1 = interfaceinvoke r0.<org.w3c.dom.Node: java.lang.String getNodeName()>() 
(assert true)
(define-const var2897 Bool (= var2090 var3278)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $s0 = interfaceinvoke r0.<org.w3c.dom.Node: short getNodeType()>() 
(assert (= (ite var2897 1 0) 0)) ; Cond: $z0 == 0 
(define-const var781 Int (var2904_getNodeType/-368491152 var1463)) ; Statement: $s0 = interfaceinvoke r0.<org.w3c.dom.Node: short getNodeType()>() 
 ; Statement: if $s0 != 1 goto (branch) 
(assert (not (= var781 1))) ; Cond: $s0 != 1 
 ; Statement: if z1 == 0 goto return 
(assert (= (ite var1182 1 0) 0)) ; Cond: z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2904_getNodeName/2033747668=([org.w3c.dom.Node], java.lang.String), var2904_getNodeType/-368491152=([org.w3c.dom.Node], short)}
; {var3800=org.apache.ibatis.builder.xml.XMLIncludeTransformer, var2564=r6, var2904=org.w3c.dom.Node, var1463=r0, var2531=java.util.Properties, var1211=r3, var1182=z1, var2090=$r2, var3278=$r1, var2897=$z0, var781=$s0}
; {org.apache.ibatis.builder.xml.XMLIncludeTransformer=var3800, r6=var2564, org.w3c.dom.Node=var2904, r0=var1463, java.util.Properties=var2531, r3=var1211, z1=var1182, $r2=var2090, $r1=var3278, $z0=var2897, $s0=var781}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r6 := @this: org.apache.ibatis.builder.xml.XMLIncludeTransformer;	r0 := @parameter0: org.w3c.dom.Node;	r3 := @parameter1: java.util.Properties;	z1 := @parameter2: boolean;	$r2 = "include";	$r1 = interfaceinvoke r0.<org.w3c.dom.Node: java.lang.String getNodeName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $s0 = interfaceinvoke r0.<org.w3c.dom.Node: short getNodeType()>();	$s0 = interfaceinvoke r0.<org.w3c.dom.Node: short getNodeType()>();	if $s0 != 1 goto (branch);	if z1 == 0 goto return;	return
;block_num 4