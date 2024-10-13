(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var277 0)
(declare-sort var1962 0)
(declare-sort var3076 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun node/1974960422 (var277) var1962)
(declare-fun var1962_getNodeType/-368491152 (var1962) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1962_getNamespaceURI/-1958997008 (var1962) String)
(declare-const null-var277 var277)
(declare-const null-String String)
(declare-const var881 var277) ; Statement: r0 := @this: freemarker.ext.dom.NodeModel 
(assert (not (= var881 null-var277)))
(define-const var1121 var1962 (node/1974960422 var881)) ; Statement: $r1 = r0.<freemarker.ext.dom.NodeModel: org.w3c.dom.Node node> 
(define-const var3504 Int (var1962_getNodeType/-368491152 var1121)) ; Statement: s0 = interfaceinvoke $r1.<org.w3c.dom.Node: short getNodeType()>() 
(define-const var3372 Int (cast-from-Int-to-Int var3504)) ; Statement: $i1 = (int) s0 
 ; Statement: if $i1 == 2 goto $r2 = r0.<freemarker.ext.dom.NodeModel: org.w3c.dom.Node node> 
(assert (= var3372 2)) ; Cond: $i1 == 2 
(define-const var2761 var1962 (node/1974960422 var881)) ; Statement: $r2 = r0.<freemarker.ext.dom.NodeModel: org.w3c.dom.Node node> 
(define-const var1630 String (var1962_getNamespaceURI/-1958997008 var2761)) ; Statement: $r4 = interfaceinvoke $r2.<org.w3c.dom.Node: java.lang.String getNamespaceURI()>() 
(define-const var1805 String var1630) ; Statement: r5 = $r4 
 ; Statement: if $r4 != null goto $r3 = "" 
(assert (not (= var1630 null-String))) ; Cond: $r4 != null 
(define-const var3272 String "") ; Statement: $r3 = "" 
(assert true)
(define-const var3464 Bool (= var3272 var1630)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z0 == 0 goto return r5 
(assert (= (ite var3464 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {node/1974960422=([freemarker.ext.dom.NodeModel], org.w3c.dom.Node), var1962_getNodeType/-368491152=([org.w3c.dom.Node], short), cast-from-Int-to-Int=([short], int), var1962_getNamespaceURI/-1958997008=([org.w3c.dom.Node], java.lang.String)}
; {var277=freemarker.ext.dom.NodeModel, var881=r0, var1962=org.w3c.dom.Node, var1121=$r1, var3504=s0, var3372=$i1, var2761=$r2, var1630=$r4, var1805=r5, var3076=null_type, var3272=$r3, var3464=$z0}
; {freemarker.ext.dom.NodeModel=var277, r0=var881, org.w3c.dom.Node=var1962, $r1=var1121, s0=var3504, $i1=var3372, $r2=var2761, $r4=var1630, r5=var1805, null_type=var3076, $r3=var3272, $z0=var3464}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: freemarker.ext.dom.NodeModel;	$r1 = r0.<freemarker.ext.dom.NodeModel: org.w3c.dom.Node node>;	s0 = interfaceinvoke $r1.<org.w3c.dom.Node: short getNodeType()>();	$i1 = (int) s0;	if $i1 == 2 goto $r2 = r0.<freemarker.ext.dom.NodeModel: org.w3c.dom.Node node>;	$r2 = r0.<freemarker.ext.dom.NodeModel: org.w3c.dom.Node node>;	$r4 = interfaceinvoke $r2.<org.w3c.dom.Node: java.lang.String getNamespaceURI()>();	r5 = $r4;	if $r4 != null goto $r3 = "";	$r3 = "";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z0 == 0 goto return r5;	return r5
;block_num 4