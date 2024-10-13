(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var571 0)
(declare-sort var1095 0)
(declare-sort var3259 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1095_getAttributeValue/-210720006 (var571 String) String)
(declare-fun var3259-init () var3259)
(declare-fun <init>/-1349294260 (var3259 var571) void)
(declare-const null-var571 var571)
(declare-const var2568 var571) ; Statement: r0 := @parameter0: org.w3c.dom.Element 
(assert (not (= var2568 null-var571)))
(define-const var3925 String (var1095_getAttributeValue/-210720006 var2568 "Algorithm")) ; Statement: r1 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: java.lang.String getAttributeValue(org.w3c.dom.Element,java.lang.String)>(r0, "Algorithm") 
(assert true)
(define-const var2540 Bool (= var3925 "http://www.w3.org/2000/09/xmldsig#rsa-sha1")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("http://www.w3.org/2000/09/xmldsig#rsa-sha1") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("http://www.w3.org/2001/04/xmldsig-more#rsa-sha224") 
(assert (not (= (ite var2540 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1064 var3259 var3259-init) ; Statement: $r32 = new org.jcp.xml.dsig.internal.dom.DOMSignatureMethod$SHA1withRSA 
(assert true)
;(assert (<init>/-1349294260 var1064 var2568)) ; Statement: specialinvoke $r32.<org.jcp.xml.dsig.internal.dom.DOMSignatureMethod$SHA1withRSA: void <init>(org.w3c.dom.Element)>(r0) 

(declare-const var1064!1 var3259)
(declare-const var2568!1 var571)
 ; Statement: return $r32 
(check-sat)
(get-model)
(get-unsat-core)
; {var1095_getAttributeValue/-210720006=([org.w3c.dom.Element, java.lang.String], java.lang.String), var3259-init=([], org.jcp.xml.dsig.internal.dom.DOMSignatureMethod$SHA1withRSA), <init>/-1349294260=([org.jcp.xml.dsig.internal.dom.DOMSignatureMethod$SHA1withRSA, org.w3c.dom.Element], void)}
; {var571=org.w3c.dom.Element, var2568=r0, var1095=org.jcp.xml.dsig.internal.dom.DOMUtils, var3925=r1, var2540=$z0, var3259=org.jcp.xml.dsig.internal.dom.DOMSignatureMethod$SHA1withRSA, var1064=$r32}
; {org.w3c.dom.Element=var571, r0=var2568, org.jcp.xml.dsig.internal.dom.DOMUtils=var1095, r1=var3925, $z0=var2540, org.jcp.xml.dsig.internal.dom.DOMSignatureMethod$SHA1withRSA=var3259, $r32=var1064}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: org.w3c.dom.Element;	r1 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: java.lang.String getAttributeValue(org.w3c.dom.Element,java.lang.String)>(r0, "Algorithm");	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("http://www.w3.org/2000/09/xmldsig#rsa-sha1");	if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("http://www.w3.org/2001/04/xmldsig-more#rsa-sha224");	$r32 = new org.jcp.xml.dsig.internal.dom.DOMSignatureMethod$SHA1withRSA;	specialinvoke $r32.<org.jcp.xml.dsig.internal.dom.DOMSignatureMethod$SHA1withRSA: void <init>(org.w3c.dom.Element)>(r0);	return $r32
;block_num 2