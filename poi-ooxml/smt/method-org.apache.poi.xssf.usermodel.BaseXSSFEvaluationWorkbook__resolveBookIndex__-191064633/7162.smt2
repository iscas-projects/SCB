(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2129 0)
(declare-sort var3690 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-const null-var2129 var2129)
(declare-const null-String String)
(declare-const var2686 var2129) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook 
(assert (not (= var2686 null-var2129)))
(declare-const var1979 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var1979 null-String)))
(assert true)
(define-const var2327 Bool (startsWith/-1785782452 var1979 "[")) ; Statement: $z0 = virtualinvoke r9.<java.lang.String: boolean startsWith(java.lang.String)>("[") 
 ; Statement: if $z0 == 0 goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r9) 
(assert (= (ite var2327 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1249 Int (Int_parseInt/1370970945 var1979)) ; Statement: $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r9) 
(assert true) ; Non Conditional
 ; Statement: return $i7 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), Int_parseInt/1370970945=([java.lang.String], int)}
; {var2129=org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook, var2686=r1, var1979=r9, var3690=null_type, var2327=$z0, var1249=$i7}
; {org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook=var2129, r1=var2686, r9=var1979, null_type=var3690, $z0=var2327, $i7=var1249}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook;	r9 := @parameter0: java.lang.String;	$z0 = virtualinvoke r9.<java.lang.String: boolean startsWith(java.lang.String)>("[");	if $z0 == 0 goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r9);	$i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r9);	return $i7
;block_num 3