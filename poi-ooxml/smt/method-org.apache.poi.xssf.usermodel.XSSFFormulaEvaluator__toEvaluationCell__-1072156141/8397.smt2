(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var598 0)
(declare-sort var1888 0)
(declare-sort var1804 0)
(declare-sort var230 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1804-init () var1804)
(declare-fun cast-from-var1888-to-var230 (var1888) var230)
(declare-fun <init>/-261924951 (var1804 var230) void)
(declare-const null-var598 var598)
(declare-const null-var1888 var1888)
(declare-const var1320 var598) ; Statement: r10 := @this: org.apache.poi.xssf.usermodel.XSSFFormulaEvaluator 
(assert (not (= var1320 null-var598)))
(declare-const var3603 var1888) ; Statement: r0 := @parameter0: org.apache.poi.ss.usermodel.Cell 
(assert (not (= var3603 null-var1888)))
(define-const var2791 Bool true) ; Statement: $z0 = r0 instanceof org.apache.poi.xssf.usermodel.XSSFCell 
 ; Statement: if $z0 != 0 goto $r1 = new org.apache.poi.xssf.usermodel.XSSFEvaluationCell 
(assert (not (= (ite var2791 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1647 var1804 var1804-init) ; Statement: $r1 = new org.apache.poi.xssf.usermodel.XSSFEvaluationCell 
(define-const var2586 var230 (cast-from-var1888-to-var230 var3603)) ; Statement: $r2 = (org.apache.poi.xssf.usermodel.XSSFCell) r0 
(assert true)
;(assert (<init>/-261924951 var1647 var2586)) ; Statement: specialinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFEvaluationCell: void <init>(org.apache.poi.xssf.usermodel.XSSFCell)>($r2) 

(declare-const var1647!1 var1804)
(declare-const var2586!1 var230)
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1804-init=([], org.apache.poi.xssf.usermodel.XSSFEvaluationCell), cast-from-var1888-to-var230=([org.apache.poi.ss.usermodel.Cell], org.apache.poi.xssf.usermodel.XSSFCell), <init>/-261924951=([org.apache.poi.xssf.usermodel.XSSFEvaluationCell, org.apache.poi.xssf.usermodel.XSSFCell], void)}
; {var598=org.apache.poi.xssf.usermodel.XSSFFormulaEvaluator, var1320=r10, var1888=org.apache.poi.ss.usermodel.Cell, var3603=r0, var2791=$z0, var1804=org.apache.poi.xssf.usermodel.XSSFEvaluationCell, var1647=$r1, var230=org.apache.poi.xssf.usermodel.XSSFCell, var2586=$r2}
; {org.apache.poi.xssf.usermodel.XSSFFormulaEvaluator=var598, r10=var1320, org.apache.poi.ss.usermodel.Cell=var1888, r0=var3603, $z0=var2791, org.apache.poi.xssf.usermodel.XSSFEvaluationCell=var1804, $r1=var1647, org.apache.poi.xssf.usermodel.XSSFCell=var230, $r2=var2586}
;seq 
;cnt {}
;stmts r10 := @this: org.apache.poi.xssf.usermodel.XSSFFormulaEvaluator;	r0 := @parameter0: org.apache.poi.ss.usermodel.Cell;	$z0 = r0 instanceof org.apache.poi.xssf.usermodel.XSSFCell;	if $z0 != 0 goto $r1 = new org.apache.poi.xssf.usermodel.XSSFEvaluationCell;	$r1 = new org.apache.poi.xssf.usermodel.XSSFEvaluationCell;	$r2 = (org.apache.poi.xssf.usermodel.XSSFCell) r0;	specialinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFEvaluationCell: void <init>(org.apache.poi.xssf.usermodel.XSSFCell)>($r2);	return $r1
;block_num 2