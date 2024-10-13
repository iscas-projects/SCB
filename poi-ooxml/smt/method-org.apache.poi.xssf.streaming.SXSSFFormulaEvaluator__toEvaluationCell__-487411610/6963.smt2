(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1554 0)
(declare-sort var2813 0)
(declare-sort var546 0)
(declare-sort var3803 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var546-init () var546)
(declare-fun cast-from-var2813-to-var3803 (var2813) var3803)
(declare-fun <init>/-757651867 (var546 var3803) void)
(declare-const null-var1554 var1554)
(declare-const null-var2813 var2813)
(declare-const var1569 var1554) ; Statement: r10 := @this: org.apache.poi.xssf.streaming.SXSSFFormulaEvaluator 
(assert (not (= var1569 null-var1554)))
(declare-const var2542 var2813) ; Statement: r0 := @parameter0: org.apache.poi.ss.usermodel.Cell 
(assert (not (= var2542 null-var2813)))
(define-const var788 Bool true) ; Statement: $z0 = r0 instanceof org.apache.poi.xssf.streaming.SXSSFCell 
 ; Statement: if $z0 != 0 goto $r1 = new org.apache.poi.xssf.streaming.SXSSFEvaluationCell 
(assert (not (= (ite var788 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1783 var546 var546-init) ; Statement: $r1 = new org.apache.poi.xssf.streaming.SXSSFEvaluationCell 
(define-const var36 var3803 (cast-from-var2813-to-var3803 var2542)) ; Statement: $r2 = (org.apache.poi.xssf.streaming.SXSSFCell) r0 
(assert true)
;(assert (<init>/-757651867 var1783 var36)) ; Statement: specialinvoke $r1.<org.apache.poi.xssf.streaming.SXSSFEvaluationCell: void <init>(org.apache.poi.xssf.streaming.SXSSFCell)>($r2) 

(declare-const var1783!1 var546)
(declare-const var36!1 var3803)
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var546-init=([], org.apache.poi.xssf.streaming.SXSSFEvaluationCell), cast-from-var2813-to-var3803=([org.apache.poi.ss.usermodel.Cell], org.apache.poi.xssf.streaming.SXSSFCell), <init>/-757651867=([org.apache.poi.xssf.streaming.SXSSFEvaluationCell, org.apache.poi.xssf.streaming.SXSSFCell], void)}
; {var1554=org.apache.poi.xssf.streaming.SXSSFFormulaEvaluator, var1569=r10, var2813=org.apache.poi.ss.usermodel.Cell, var2542=r0, var788=$z0, var546=org.apache.poi.xssf.streaming.SXSSFEvaluationCell, var1783=$r1, var3803=org.apache.poi.xssf.streaming.SXSSFCell, var36=$r2}
; {org.apache.poi.xssf.streaming.SXSSFFormulaEvaluator=var1554, r10=var1569, org.apache.poi.ss.usermodel.Cell=var2813, r0=var2542, $z0=var788, org.apache.poi.xssf.streaming.SXSSFEvaluationCell=var546, $r1=var1783, org.apache.poi.xssf.streaming.SXSSFCell=var3803, $r2=var36}
;seq 
;cnt {}
;stmts r10 := @this: org.apache.poi.xssf.streaming.SXSSFFormulaEvaluator;	r0 := @parameter0: org.apache.poi.ss.usermodel.Cell;	$z0 = r0 instanceof org.apache.poi.xssf.streaming.SXSSFCell;	if $z0 != 0 goto $r1 = new org.apache.poi.xssf.streaming.SXSSFEvaluationCell;	$r1 = new org.apache.poi.xssf.streaming.SXSSFEvaluationCell;	$r2 = (org.apache.poi.xssf.streaming.SXSSFCell) r0;	specialinvoke $r1.<org.apache.poi.xssf.streaming.SXSSFEvaluationCell: void <init>(org.apache.poi.xssf.streaming.SXSSFCell)>($r2);	return $r1
;block_num 2