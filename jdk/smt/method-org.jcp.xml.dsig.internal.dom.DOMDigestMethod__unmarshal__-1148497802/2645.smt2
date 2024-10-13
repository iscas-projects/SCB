(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2279 0)
(declare-sort var3606 0)
(declare-sort var28 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3606_getAttributeValue/-210720006 (var2279 String) String)
(declare-fun var28-init () var28)
(declare-fun <init>/44645202 (var28 var2279) void)
(declare-const null-var2279 var2279)
(declare-const var796 var2279) ; Statement: r0 := @parameter0: org.w3c.dom.Element 
(assert (not (= var796 null-var2279)))
(define-const var3950 String (var3606_getAttributeValue/-210720006 var796 "Algorithm")) ; Statement: r1 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: java.lang.String getAttributeValue(org.w3c.dom.Element,java.lang.String)>(r0, "Algorithm") 
(assert true)
(define-const var2741 Bool (= var3950 "http://www.w3.org/2000/09/xmldsig#sha1")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("http://www.w3.org/2000/09/xmldsig#sha1") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("http://www.w3.org/2001/04/xmldsig-more#sha224") 
(assert (not (= (ite var2741 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1129 var28 var28-init) ; Statement: $r12 = new org.jcp.xml.dsig.internal.dom.DOMDigestMethod$SHA1 
(assert true)
;(assert (<init>/44645202 var1129 var796)) ; Statement: specialinvoke $r12.<org.jcp.xml.dsig.internal.dom.DOMDigestMethod$SHA1: void <init>(org.w3c.dom.Element)>(r0) 

(declare-const var1129!1 var28)
(declare-const var796!1 var2279)
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var3606_getAttributeValue/-210720006=([org.w3c.dom.Element, java.lang.String], java.lang.String), var28-init=([], org.jcp.xml.dsig.internal.dom.DOMDigestMethod$SHA1), <init>/44645202=([org.jcp.xml.dsig.internal.dom.DOMDigestMethod$SHA1, org.w3c.dom.Element], void)}
; {var2279=org.w3c.dom.Element, var796=r0, var3606=org.jcp.xml.dsig.internal.dom.DOMUtils, var3950=r1, var2741=$z0, var28=org.jcp.xml.dsig.internal.dom.DOMDigestMethod$SHA1, var1129=$r12}
; {org.w3c.dom.Element=var2279, r0=var796, org.jcp.xml.dsig.internal.dom.DOMUtils=var3606, r1=var3950, $z0=var2741, org.jcp.xml.dsig.internal.dom.DOMDigestMethod$SHA1=var28, $r12=var1129}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: org.w3c.dom.Element;	r1 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: java.lang.String getAttributeValue(org.w3c.dom.Element,java.lang.String)>(r0, "Algorithm");	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("http://www.w3.org/2000/09/xmldsig#sha1");	if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("http://www.w3.org/2001/04/xmldsig-more#sha224");	$r12 = new org.jcp.xml.dsig.internal.dom.DOMDigestMethod$SHA1;	specialinvoke $r12.<org.jcp.xml.dsig.internal.dom.DOMDigestMethod$SHA1: void <init>(org.w3c.dom.Element)>(r0);	return $r12
;block_num 2