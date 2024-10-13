(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2982 0)
(declare-sort var2014 0)
(declare-sort var2099 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun removeNamespace/-470042574 (var2982 String) String)
(declare-fun getComplexTypeNameFromChildren/-708719538 (var2982 var2099 String) String)
(declare-const null-var2982 var2982)
(declare-const null-String String)
(declare-const null-var2099 var2099)
(declare-const var2052 var2982) ; Statement: r0 := @this: org.apache.poi.xssf.extractor.XSSFExportToXml 
(assert (not (= var2052 null-var2982)))
(declare-const var285 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var285 null-String)))
(declare-const var1206 var2099) ; Statement: r6 := @parameter1: org.w3c.dom.Node 
(assert (not (= var1206 null-var2099)))
(declare-const var3348 var2099) ; Statement: r3 := @parameter2: org.w3c.dom.Node 
(assert (not (= var3348 null-var2099)))
(assert true)
(define-const var1291 String (removeNamespace/-470042574 var2052 var285)) ; Statement: r2 = specialinvoke r0.<org.apache.poi.xssf.extractor.XSSFExportToXml: java.lang.String removeNamespace(java.lang.String)>(r1) 
(assert true)
(define-const var2066 String (getComplexTypeNameFromChildren/-708719538 var2052 var3348 var1291)) ; Statement: r4 = specialinvoke r0.<org.apache.poi.xssf.extractor.XSSFExportToXml: java.lang.String getComplexTypeNameFromChildren(org.w3c.dom.Node,java.lang.String)>(r3, r2) 
(define-const var3216 var2099 null-var2099) ; Statement: r7 = null 
(define-const var2347 String "") ; Statement: $r5 = "" 
(assert true)
(define-const var2022 Bool (= var2347 var2066)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z0 != 0 goto return r7 
(assert (not (= (ite var2022 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return r7 
(check-sat)
(get-model)
(get-unsat-core)
; {removeNamespace/-470042574=([org.apache.poi.xssf.extractor.XSSFExportToXml, java.lang.String], java.lang.String), getComplexTypeNameFromChildren/-708719538=([org.apache.poi.xssf.extractor.XSSFExportToXml, org.w3c.dom.Node, java.lang.String], java.lang.String)}
; {var2982=org.apache.poi.xssf.extractor.XSSFExportToXml, var2052=r0, var285=r1, var2014=null_type, var2099=org.w3c.dom.Node, var1206=r6, var3348=r3, var1291=r2, var2066=r4, var3216=r7, var2347=$r5, var2022=$z0}
; {org.apache.poi.xssf.extractor.XSSFExportToXml=var2982, r0=var2052, r1=var285, null_type=var2014, org.w3c.dom.Node=var2099, r6=var1206, r3=var3348, r2=var1291, r4=var2066, r7=var3216, $r5=var2347, $z0=var2022}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.extractor.XSSFExportToXml;	r1 := @parameter0: java.lang.String;	r6 := @parameter1: org.w3c.dom.Node;	r3 := @parameter2: org.w3c.dom.Node;	r2 = specialinvoke r0.<org.apache.poi.xssf.extractor.XSSFExportToXml: java.lang.String removeNamespace(java.lang.String)>(r1);	r4 = specialinvoke r0.<org.apache.poi.xssf.extractor.XSSFExportToXml: java.lang.String getComplexTypeNameFromChildren(org.w3c.dom.Node,java.lang.String)>(r3, r2);	r7 = null;	$r5 = "";	$z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z0 != 0 goto return r7;	return r7
;block_num 2