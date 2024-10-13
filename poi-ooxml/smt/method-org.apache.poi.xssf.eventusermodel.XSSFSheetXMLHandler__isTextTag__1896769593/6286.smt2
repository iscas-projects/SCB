(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3210 0)
(declare-sort var275 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var3210 var3210)
(declare-const null-String String)
(declare-const var3645 var3210) ; Statement: r4 := @this: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler 
(assert (not (= var3645 null-var3210)))
(declare-const var2311 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2311 null-String)))
(define-const var3189 String "v") ; Statement: $r1 = "v" 
(assert true)
(define-const var2259 Bool (= var3189 var2311)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "inlineStr" 
(assert (not (= (ite var2259 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3210=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler, var3645=r4, var2311=r0, var275=null_type, var3189=$r1, var2259=$z0}
; {org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler=var3210, r4=var3645, r0=var2311, null_type=var275, $r1=var3189, $z0=var2259}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r4 := @this: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler;	r0 := @parameter0: java.lang.String;	$r1 = "v";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = "inlineStr";	return 1
;block_num 2