(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var831 0)
(declare-sort var3387 0)
(declare-sort var666 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var831 var831)
(declare-const null-String String)
(declare-const null-var666 var666)
(declare-const var907 var831) ; Statement: r1 := @this: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler 
(assert (not (= var907 null-var831)))
(declare-const var2357 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2357 null-String)))
(declare-const var3713 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3713 null-String)))
(declare-const var2644 String) ; Statement: r43 := @parameter2: java.lang.String 
(assert (not (= var2644 null-String)))
(declare-const var3717 var666) ; Statement: r15 := @parameter3: org.xml.sax.Attributes 
(assert (not (= var3717 null-var666)))
 ; Statement: if r0 == null goto $z0 = specialinvoke r1.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean isTextTag(java.lang.String)>(r2) 
(assert (not (= var2357 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var3594 Bool (= var2357 "http://schemas.openxmlformats.org/spreadsheetml/2006/main")) ; Statement: $z19 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/spreadsheetml/2006/main") 
 ; Statement: if $z19 != 0 goto $z0 = specialinvoke r1.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean isTextTag(java.lang.String)>(r2) 
(assert (not (not (= (ite var3594 1 0) 0)))) ; Negate: Cond: $z19 != 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var831=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler, var907=r1, var2357=r0, var3387=null_type, var3713=r2, var2644=r43, var666=org.xml.sax.Attributes, var3717=r15, var3594=$z19}
; {org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler=var831, r1=var907, r0=var2357, null_type=var3387, r2=var3713, r43=var2644, org.xml.sax.Attributes=var666, r15=var3717, $z19=var3594}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r43 := @parameter2: java.lang.String;	r15 := @parameter3: org.xml.sax.Attributes;	if r0 == null goto $z0 = specialinvoke r1.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean isTextTag(java.lang.String)>(r2);	$z19 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/spreadsheetml/2006/main");	if $z19 != 0 goto $z0 = specialinvoke r1.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean isTextTag(java.lang.String)>(r2);	return
;block_num 3