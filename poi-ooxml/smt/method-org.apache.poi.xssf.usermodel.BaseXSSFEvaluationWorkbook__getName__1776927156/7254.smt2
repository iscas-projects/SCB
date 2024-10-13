(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var40 0)
(declare-sort var2454 0)
(declare-sort var127 0)
(declare-sort var2868 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _uBook/-2125958453 (var40) var127)
(declare-fun getNumberOfNames/1359497946 (var127) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var40 var40)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var2868 var2868)
(declare-const var1141 var40) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook 
(assert (not (= var1141 null-var40)))
(declare-const var1113 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1113 null-String)))
(declare-const var874 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var874 null-Int)))
(define-const var2543 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var755 var127 (_uBook/-2125958453 var1141)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook: org.apache.poi.xssf.usermodel.XSSFWorkbook _uBook> 
(assert true)
(define-const var3000 Int (getNumberOfNames/1359497946 var755)) ; Statement: $i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getNumberOfNames()>() 
 ; Statement: if i3 >= $i0 goto $i7 = (int) -1 
(assert (>= var2543 var3000)) ; Cond: i3 >= $i0 
(define-const var3502 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i1 != $i7 goto $i9 = (int) -1 
(assert (not (not (= var874 var3502)))) ; Negate: Cond: i1 != $i7  
(define-const var2608 var2868 null-var2868) ; Statement: $r7 = null 
 ; Statement: goto [?= return $r7] 
(assert true) ; Non Conditional
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {_uBook/-2125958453=([org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook], org.apache.poi.xssf.usermodel.XSSFWorkbook), getNumberOfNames/1359497946=([org.apache.poi.xssf.usermodel.XSSFWorkbook], int), cast-from-Int-to-Int=([int], int)}
; {var40=org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook, var1141=r0, var1113=r2, var2454=null_type, var874=i1, var2543=i3, var127=org.apache.poi.xssf.usermodel.XSSFWorkbook, var755=$r1, var3000=$i0, var3502=$i7, var2868=org.apache.poi.ss.formula.EvaluationName, var2608=$r7}
; {org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook=var40, r0=var1141, r2=var1113, null_type=var2454, i1=var874, i3=var2543, org.apache.poi.xssf.usermodel.XSSFWorkbook=var127, $r1=var755, $i0=var3000, $i7=var3502, org.apache.poi.ss.formula.EvaluationName=var2868, $r7=var2608}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook;	r2 := @parameter0: java.lang.String;	i1 := @parameter1: int;	i3 = 0;	$r1 = r0.<org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook: org.apache.poi.xssf.usermodel.XSSFWorkbook _uBook>;	$i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getNumberOfNames()>();	if i3 >= $i0 goto $i7 = (int) -1;	$i7 = (int) -1;	if i1 != $i7 goto $i9 = (int) -1;	$r7 = null;	goto [?= return $r7];	return $r7
;block_num 5