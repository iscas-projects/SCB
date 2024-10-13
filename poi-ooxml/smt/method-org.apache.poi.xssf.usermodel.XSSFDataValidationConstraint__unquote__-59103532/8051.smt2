(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3092 0)
(declare-sort var2106 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2106_isQuoted/1358852658 (String) Bool)
(declare-const null-String String)
(declare-const var2429 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2429 null-String)))
(define-const var440 Bool (var2106_isQuoted/1358852658 var2429)) ; Statement: $z0 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint: boolean isQuoted(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto return r0 
(assert (= (ite var440 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2106_isQuoted/1358852658=([java.lang.String], boolean)}
; {var2429=r0, var3092=null_type, var2106=org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint, var440=$z0}
; {r0=var2429, null_type=var3092, org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint=var2106, $z0=var440}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint: boolean isQuoted(java.lang.String)>(r0);	if $z0 == 0 goto return r0;	return r0
;block_num 2