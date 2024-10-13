(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1401 0)
(declare-sort var3595 0)
(declare-sort var1750 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1750_isNull/-1052882743 (var3595) Bool)
(declare-fun String_valueOf/-333372740 (var3595) String)
(declare-fun setCellValue/620157681 (var1401 String) void)
(declare-const null-var1401 var1401)
(declare-const null-var3595 var3595)
(declare-const var2458 var1401) ; Statement: r1 := @parameter0: org.apache.poi.hssf.usermodel.HSSFCell 
(assert (not (= var2458 null-var1401)))
(declare-const var1145 var3595) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1145 null-var3595)))
(define-const var986 Bool (var1750_isNull/-1052882743 var1145)) ; Statement: $z0 = staticinvoke <java.util.Objects: boolean isNull(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0) 
(assert (= (ite var986 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2077 String (String_valueOf/-333372740 var1145)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0) 
(assert true)
;(assert (setCellValue/620157681 var2458 var2077)) ; Statement: virtualinvoke r1.<org.apache.poi.hssf.usermodel.HSSFCell: void setCellValue(java.lang.String)>($r2) 

(declare-const var2458!1 var1401)
(declare-const var2077!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1750_isNull/-1052882743=([java.lang.Object], boolean), String_valueOf/-333372740=([java.lang.Object], java.lang.String), setCellValue/620157681=([org.apache.poi.hssf.usermodel.HSSFCell, java.lang.String], void)}
; {var1401=org.apache.poi.hssf.usermodel.HSSFCell, var2458=r1, var3595=java.lang.Object, var1145=r0, var1750=java.util.Objects, var986=$z0, var2077=$r2}
; {org.apache.poi.hssf.usermodel.HSSFCell=var1401, r1=var2458, java.lang.Object=var3595, r0=var1145, java.util.Objects=var1750, $z0=var986, $r2=var2077}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r1 := @parameter0: org.apache.poi.hssf.usermodel.HSSFCell;	r0 := @parameter1: java.lang.Object;	$z0 = staticinvoke <java.util.Objects: boolean isNull(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0);	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0);	virtualinvoke r1.<org.apache.poi.hssf.usermodel.HSSFCell: void setCellValue(java.lang.String)>($r2);	return
;block_num 3