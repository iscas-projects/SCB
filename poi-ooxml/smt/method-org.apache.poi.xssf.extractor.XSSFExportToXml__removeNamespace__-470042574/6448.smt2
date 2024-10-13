(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2787 0)
(declare-sort var2526 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun matches/-643015890 (String String) Bool)
(declare-const null-var2787 var2787)
(declare-const null-String String)
(declare-const var2675 var2787) ; Statement: r2 := @this: org.apache.poi.xssf.extractor.XSSFExportToXml 
(assert (not (= var2675 null-var2787)))
(declare-const var1581 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1581 null-String)))
(assert true)
(define-const var2174 Bool (matches/-643015890 var1581 ".*:.*")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean matches(java.lang.String)>(".*:.*") 
(assert (= (matches/-643015890 var1581 ".*:.*") (str.in_re var1581 (re.++ (re.* re.allchar) (str.to_re ":") (re.* re.allchar)))))
 ; Statement: if $z0 == 0 goto $r3 = r0 
(assert (= (ite var2174 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2030 String var1581) ; Statement: $r3 = r0 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {matches/-643015890=([java.lang.String, java.lang.String], boolean)}
; {var2787=org.apache.poi.xssf.extractor.XSSFExportToXml, var2675=r2, var1581=r0, var2526=null_type, var2174=$z0, var2030=$r3}
; {org.apache.poi.xssf.extractor.XSSFExportToXml=var2787, r2=var2675, r0=var1581, null_type=var2526, $z0=var2174, $r3=var2030}
;seq <java.lang.String: boolean matches(java.lang.String)>
;cnt {"<java.lang.String: boolean matches(java.lang.String)>": 1}
;stmts r2 := @this: org.apache.poi.xssf.extractor.XSSFExportToXml;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean matches(java.lang.String)>(".*:.*");	if $z0 == 0 goto $r3 = r0;	$r3 = r0;	return $r3
;block_num 3