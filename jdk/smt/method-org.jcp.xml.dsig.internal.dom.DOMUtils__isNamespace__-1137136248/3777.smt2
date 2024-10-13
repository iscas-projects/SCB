(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var511 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var511_getNodeType/-368491152 (var511) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var511_getNamespaceURI/-1958997008 (var511) String)
(declare-const null-var511 var511)
(declare-const var3818 var511) ; Statement: r0 := @parameter0: org.w3c.dom.Node 
(assert (not (= var3818 null-var511)))
(define-const var2924 Int (var511_getNodeType/-368491152 var3818)) ; Statement: s0 = interfaceinvoke r0.<org.w3c.dom.Node: short getNodeType()>() 
(define-const var3953 Int (cast-from-Int-to-Int var2924)) ; Statement: $i1 = (int) s0 
 ; Statement: if $i1 != 2 goto return 0 
(assert (not (not (= var3953 2)))) ; Negate: Cond: $i1 != 2  
(define-const var796 String (var511_getNamespaceURI/-1958997008 var3818)) ; Statement: r1 = interfaceinvoke r0.<org.w3c.dom.Node: java.lang.String getNamespaceURI()>() 
(define-const var1824 String "http://www.w3.org/2000/xmlns/") ; Statement: $r2 = "http://www.w3.org/2000/xmlns/" 
(assert true)
(define-const var3004 Bool (= var1824 var796)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {var511_getNodeType/-368491152=([org.w3c.dom.Node], short), cast-from-Int-to-Int=([short], int), var511_getNamespaceURI/-1958997008=([org.w3c.dom.Node], java.lang.String)}
; {var511=org.w3c.dom.Node, var3818=r0, var2924=s0, var3953=$i1, var796=r1, var1824=$r2, var3004=$z0}
; {org.w3c.dom.Node=var511, r0=var3818, s0=var2924, $i1=var3953, r1=var796, $r2=var1824, $z0=var3004}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: org.w3c.dom.Node;	s0 = interfaceinvoke r0.<org.w3c.dom.Node: short getNodeType()>();	$i1 = (int) s0;	if $i1 != 2 goto return 0;	r1 = interfaceinvoke r0.<org.w3c.dom.Node: java.lang.String getNamespaceURI()>();	$r2 = "http://www.w3.org/2000/xmlns/";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	return $z0
;block_num 2