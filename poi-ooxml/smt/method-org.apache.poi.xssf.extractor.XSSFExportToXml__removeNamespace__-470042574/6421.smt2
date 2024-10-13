(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2145 0)
(declare-sort var1616 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun matches/-643015890 (String String) Bool)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-const null-var2145 var2145)
(declare-const null-String String)
(declare-const var605 var2145) ; Statement: r2 := @this: org.apache.poi.xssf.extractor.XSSFExportToXml 
(assert (not (= var605 null-var2145)))
(declare-const var1607 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1607 null-String)))
(assert true)
(define-const var2595 Bool (matches/-643015890 var1607 ".*:.*")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean matches(java.lang.String)>(".*:.*") 
(assert (= (matches/-643015890 var1607 ".*:.*") (str.in_re var1607 (re.++ (re.* re.allchar) (str.to_re ":") (re.* re.allchar)))))
 ; Statement: if $z0 == 0 goto $r3 = r0 
(assert (not (= (ite var2595 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3167 (Array Int String) (split/-636890950 var1607 ":")) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(":") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var1607 ":") i) (re.++ (re.* re.all) (str.to_re ":") (re.* re.all))))))
(define-const var2618 String (select var3167 1)) ; Statement: $r3 = $r1[1] 
 ; Statement: goto [?= return $r3] 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {matches/-643015890=([java.lang.String, java.lang.String], boolean), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[])}
; {var2145=org.apache.poi.xssf.extractor.XSSFExportToXml, var605=r2, var1607=r0, var1616=null_type, var2595=$z0, var3167=$r1, var2618=$r3}
; {org.apache.poi.xssf.extractor.XSSFExportToXml=var2145, r2=var605, r0=var1607, null_type=var1616, $z0=var2595, $r1=var3167, $r3=var2618}
;seq <java.lang.String: boolean matches(java.lang.String)>;	<java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: boolean matches(java.lang.String)>": 1,"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r2 := @this: org.apache.poi.xssf.extractor.XSSFExportToXml;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean matches(java.lang.String)>(".*:.*");	if $z0 == 0 goto $r3 = r0;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(":");	$r3 = $r1[1];	goto [?= return $r3];	return $r3
;block_num 3