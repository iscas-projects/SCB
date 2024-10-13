(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1571 0)
(declare-sort var2229 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var1571 var1571)
(declare-const null-String String)
(declare-const var2922 var1571) ; Statement: r1 := @this: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler 
(assert (not (= var2922 null-var1571)))
(declare-const var729 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var729 null-String)))
(declare-const var3406 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3406 null-String)))
(declare-const var3290 String) ; Statement: r19 := @parameter2: java.lang.String 
(assert (not (= var3290 null-String)))
 ; Statement: if r0 == null goto $z0 = specialinvoke r1.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean isTextTag(java.lang.String)>(r2) 
(assert (not (= var729 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var1845 Bool (= var729 "http://schemas.openxmlformats.org/spreadsheetml/2006/main")) ; Statement: $z12 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/spreadsheetml/2006/main") 
 ; Statement: if $z12 != 0 goto $z0 = specialinvoke r1.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean isTextTag(java.lang.String)>(r2) 
(assert (not (not (= (ite var1845 1 0) 0)))) ; Negate: Cond: $z12 != 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1571=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler, var2922=r1, var729=r0, var2229=null_type, var3406=r2, var3290=r19, var1845=$z12}
; {org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler=var1571, r1=var2922, r0=var729, null_type=var2229, r2=var3406, r19=var3290, $z12=var1845}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r19 := @parameter2: java.lang.String;	if r0 == null goto $z0 = specialinvoke r1.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean isTextTag(java.lang.String)>(r2);	$z12 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/spreadsheetml/2006/main");	if $z12 != 0 goto $z0 = specialinvoke r1.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean isTextTag(java.lang.String)>(r2);	return
;block_num 3