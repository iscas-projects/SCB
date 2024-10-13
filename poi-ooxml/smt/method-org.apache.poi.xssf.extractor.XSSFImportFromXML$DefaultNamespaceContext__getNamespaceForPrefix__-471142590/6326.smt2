(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1568 0)
(declare-sort var2241 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var1568 var1568)
(declare-const null-String String)
(declare-const var2990 var1568) ; Statement: r1 := @this: org.apache.poi.xssf.extractor.XSSFImportFromXML$DefaultNamespaceContext 
(assert (not (= var2990 null-var1568)))
(declare-const var2962 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2962 null-String)))
(assert true)
(define-const var2012 Bool (= var2962 "xml")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("xml") 
 ; Statement: if $z0 == 0 goto r12 = r1.<org.apache.poi.xssf.extractor.XSSFImportFromXML$DefaultNamespaceContext: org.w3c.dom.Element _docElem> 
(assert (not (= (ite var2012 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return "http://www.w3.org/XML/1998/namespace" 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1568=org.apache.poi.xssf.extractor.XSSFImportFromXML$DefaultNamespaceContext, var2990=r1, var2962=r0, var2241=null_type, var2012=$z0}
; {org.apache.poi.xssf.extractor.XSSFImportFromXML$DefaultNamespaceContext=var1568, r1=var2990, r0=var2962, null_type=var2241, $z0=var2012}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.poi.xssf.extractor.XSSFImportFromXML$DefaultNamespaceContext;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("xml");	if $z0 == 0 goto r12 = r1.<org.apache.poi.xssf.extractor.XSSFImportFromXML$DefaultNamespaceContext: org.w3c.dom.Element _docElem>;	return "http://www.w3.org/XML/1998/namespace"
;block_num 2