(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1454 0)
(declare-sort var1611 0)
(declare-sort var2194 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sheets/-433134786 (var1454) var2194)
(declare-fun var2194_size/-959786421 (var2194) Int)
(declare-fun containsSheet/1643140381 (var1454 String Int) Bool)
(declare-const null-var1454 var1454)
(declare-const null-String String)
(declare-const var1046 var1454) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook 
(assert (not (= var1046 null-var1454)))
(declare-const var2583 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2583 null-String)))
(define-const var1567 var2194 (sheets/-433134786 var1046)) ; Statement: $r2 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: java.util.List sheets> 
(define-const var1680 Int (var2194_size/-959786421 var1567)) ; Statement: $i0 = interfaceinvoke $r2.<java.util.List: int size()>() 
(assert true)
(define-const var973 Bool (containsSheet/1643140381 var1046 var2583 var1680)) ; Statement: $z0 = specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: boolean containsSheet(java.lang.String,int)>(r1, $i0) 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var973 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {sheets/-433134786=([org.apache.poi.xssf.usermodel.XSSFWorkbook], java.util.List), var2194_size/-959786421=([java.util.List], int), containsSheet/1643140381=([org.apache.poi.xssf.usermodel.XSSFWorkbook, java.lang.String, int], boolean)}
; {var1454=org.apache.poi.xssf.usermodel.XSSFWorkbook, var1046=r0, var2583=r1, var1611=null_type, var2194=java.util.List, var1567=$r2, var1680=$i0, var973=$z0}
; {org.apache.poi.xssf.usermodel.XSSFWorkbook=var1454, r0=var1046, r1=var2583, null_type=var1611, java.util.List=var2194, $r2=var1567, $i0=var1680, $z0=var973}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: java.util.List sheets>;	$i0 = interfaceinvoke $r2.<java.util.List: int size()>();	$z0 = specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: boolean containsSheet(java.lang.String,int)>(r1, $i0);	if $z0 == 0 goto return;	return
;block_num 2