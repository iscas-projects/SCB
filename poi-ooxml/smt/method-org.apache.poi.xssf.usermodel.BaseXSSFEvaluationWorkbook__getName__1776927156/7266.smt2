(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2864 0)
(declare-sort var1689 0)
(declare-sort var890 0)
(declare-sort var2963 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _uBook/-2125958453 (var2864) var890)
(declare-fun getNumberOfNames/1359497946 (var890) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getName/1776927156 (var2864 String Int) var2963)
(declare-const null-var2864 var2864)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var454 var2864) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook 
(assert (not (= var454 null-var2864)))
(declare-const var1013 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1013 null-String)))
(declare-const var3359 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3359 null-Int)))
(define-const var2671 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var832 var890 (_uBook/-2125958453 var454)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook: org.apache.poi.xssf.usermodel.XSSFWorkbook _uBook> 
(assert true)
(define-const var3894 Int (getNumberOfNames/1359497946 var832)) ; Statement: $i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getNumberOfNames()>() 
 ; Statement: if i3 >= $i0 goto $i7 = (int) -1 
(assert (>= var2671 var3894)) ; Cond: i3 >= $i0 
(define-const var357 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i1 != $i7 goto $i9 = (int) -1 
(assert (not (= var3359 var357))) ; Cond: i1 != $i7 
(define-const var647 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
(assert true)
(define-const var2477 var2963 (getName/1776927156 var454 var1013 var647)) ; Statement: $r7 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook: org.apache.poi.ss.formula.EvaluationName getName(java.lang.String,int)>(r2, $i9) 
(assert true) ; Non Conditional
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {_uBook/-2125958453=([org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook], org.apache.poi.xssf.usermodel.XSSFWorkbook), getNumberOfNames/1359497946=([org.apache.poi.xssf.usermodel.XSSFWorkbook], int), cast-from-Int-to-Int=([int], int), getName/1776927156=([org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook, java.lang.String, int], org.apache.poi.ss.formula.EvaluationName)}
; {var2864=org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook, var454=r0, var1013=r2, var1689=null_type, var3359=i1, var2671=i3, var890=org.apache.poi.xssf.usermodel.XSSFWorkbook, var832=$r1, var3894=$i0, var357=$i7, var647=$i9, var2963=org.apache.poi.ss.formula.EvaluationName, var2477=$r7}
; {org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook=var2864, r0=var454, r2=var1013, null_type=var1689, i1=var3359, i3=var2671, org.apache.poi.xssf.usermodel.XSSFWorkbook=var890, $r1=var832, $i0=var3894, $i7=var357, $i9=var647, org.apache.poi.ss.formula.EvaluationName=var2963, $r7=var2477}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook;	r2 := @parameter0: java.lang.String;	i1 := @parameter1: int;	i3 = 0;	$r1 = r0.<org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook: org.apache.poi.xssf.usermodel.XSSFWorkbook _uBook>;	$i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getNumberOfNames()>();	if i3 >= $i0 goto $i7 = (int) -1;	$i7 = (int) -1;	if i1 != $i7 goto $i9 = (int) -1;	$i9 = (int) -1;	$r7 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook: org.apache.poi.ss.formula.EvaluationName getName(java.lang.String,int)>(r2, $i9);	return $r7
;block_num 5