(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var102 0)
(declare-sort var1715 0)
(declare-sort var3477 0)
(declare-sort var324 0)
(declare-sort var1078 0)
(declare-sort var1174 0)
(declare-sort var1852 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1078_getOwnerDocument/1459457377 (var1174) var324)
(declare-fun cast-from-var1715-to-var1174 (var1715) var1174)
(declare-fun var1078_createElement/58206752 (var324 String String String) var1715)
(declare-fun outputLength/755124452 (var102) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun var324_createTextNode/601684347 (var324 String) var1852)
(declare-fun var1174_appendChild/-892350246 (var1174 var1174) var1174)
(declare-fun cast-from-var1852-to-var1174 (var1852) var1174)
(declare-const null-var102 var102)
(declare-const null-var1715 var1715)
(declare-const null-String String)
(declare-const var1475 var102) ; Statement: r4 := @this: org.jcp.xml.dsig.internal.dom.DOMHMACSignatureMethod 
(assert (not (= var1475 null-var102)))
(declare-const var2275 var1715) ; Statement: r0 := @parameter0: org.w3c.dom.Element 
(assert (not (= var2275 null-var1715)))
(declare-const var3371 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3371 null-String)))
(define-const var1537 var324 (var1078_getOwnerDocument/1459457377 (cast-from-var1715-to-var1174 var2275))) ; Statement: r1 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Document getOwnerDocument(org.w3c.dom.Node)>(r0) 
(define-const var1864 var1715 (var1078_createElement/58206752 var1537 "HMACOutputLength" "http://www.w3.org/2000/09/xmldsig#" var3371)) ; Statement: r3 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Element createElement(org.w3c.dom.Document,java.lang.String,java.lang.String,java.lang.String)>(r1, "HMACOutputLength", "http://www.w3.org/2000/09/xmldsig#", r2) 
(define-const var1958 Int (outputLength/755124452 var1475)) ; Statement: $i0 = r4.<org.jcp.xml.dsig.internal.dom.DOMHMACSignatureMethod: int outputLength> 
(define-const var3316 String (String_valueOf/1240665136 var1958)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(define-const var508 var1852 (var324_createTextNode/601684347 var1537 var3316)) ; Statement: $r6 = interfaceinvoke r1.<org.w3c.dom.Document: org.w3c.dom.Text createTextNode(java.lang.String)>($r5) 
;(assert (var1174_appendChild/-892350246 (cast-from-var1715-to-var1174 var1864) (cast-from-var1852-to-var1174 var508))) ; Statement: interfaceinvoke r3.<org.w3c.dom.Element: org.w3c.dom.Node appendChild(org.w3c.dom.Node)>($r6) 

(declare-const var1864!1 var1715)
(declare-const var508!1 var1852)
;(assert (var1174_appendChild/-892350246 (cast-from-var1715-to-var1174 var2275) (cast-from-var1715-to-var1174 var1864!1))) ; Statement: interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.Node appendChild(org.w3c.dom.Node)>(r3) 

(declare-const var2275!1 var1715)
(declare-const var1864!2 var1715)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1078_getOwnerDocument/1459457377=([org.w3c.dom.Node], org.w3c.dom.Document), cast-from-var1715-to-var1174=([org.w3c.dom.Element], org.w3c.dom.Node), var1078_createElement/58206752=([org.w3c.dom.Document, java.lang.String, java.lang.String, java.lang.String], org.w3c.dom.Element), outputLength/755124452=([org.jcp.xml.dsig.internal.dom.DOMHMACSignatureMethod], int), String_valueOf/1240665136=([int], java.lang.String), var324_createTextNode/601684347=([org.w3c.dom.Document, java.lang.String], org.w3c.dom.Text), var1174_appendChild/-892350246=([org.w3c.dom.Node, org.w3c.dom.Node], org.w3c.dom.Node), cast-from-var1852-to-var1174=([org.w3c.dom.Text], org.w3c.dom.Node)}
; {var102=org.jcp.xml.dsig.internal.dom.DOMHMACSignatureMethod, var1475=r4, var1715=org.w3c.dom.Element, var2275=r0, var3371=r2, var3477=null_type, var324=org.w3c.dom.Document, var1078=org.jcp.xml.dsig.internal.dom.DOMUtils, var1174=org.w3c.dom.Node, var1537=r1, var1864=r3, var1958=$i0, var3316=$r5, var1852=org.w3c.dom.Text, var508=$r6}
; {org.jcp.xml.dsig.internal.dom.DOMHMACSignatureMethod=var102, r4=var1475, org.w3c.dom.Element=var1715, r0=var2275, r2=var3371, null_type=var3477, org.w3c.dom.Document=var324, org.jcp.xml.dsig.internal.dom.DOMUtils=var1078, org.w3c.dom.Node=var1174, r1=var1537, r3=var1864, $i0=var1958, $r5=var3316, org.w3c.dom.Text=var1852, $r6=var508}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r4 := @this: org.jcp.xml.dsig.internal.dom.DOMHMACSignatureMethod;	r0 := @parameter0: org.w3c.dom.Element;	r2 := @parameter1: java.lang.String;	r1 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Document getOwnerDocument(org.w3c.dom.Node)>(r0);	r3 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Element createElement(org.w3c.dom.Document,java.lang.String,java.lang.String,java.lang.String)>(r1, "HMACOutputLength", "http://www.w3.org/2000/09/xmldsig#", r2);	$i0 = r4.<org.jcp.xml.dsig.internal.dom.DOMHMACSignatureMethod: int outputLength>;	$r5 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r6 = interfaceinvoke r1.<org.w3c.dom.Document: org.w3c.dom.Text createTextNode(java.lang.String)>($r5);	interfaceinvoke r3.<org.w3c.dom.Element: org.w3c.dom.Node appendChild(org.w3c.dom.Node)>($r6);	interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.Node appendChild(org.w3c.dom.Node)>(r3);	return
;block_num 1