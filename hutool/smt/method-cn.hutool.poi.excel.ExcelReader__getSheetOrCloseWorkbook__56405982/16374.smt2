(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var641 0)
(declare-sort var489 0)
(declare-sort var1448 0)
(declare-sort var138 0)
(declare-sort var2501 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1448_notNull/1920974948 (var138) var138)
(declare-fun cast-from-var641-to-var138 (var641) var138)
(declare-fun var641_getSheet/-2122013228 (var641 String) var2501)
(declare-const null-var641 var641)
(declare-const null-String String)
(declare-const null-var2501 var2501)
(declare-const var3012 var641) ; Statement: r0 := @parameter0: org.apache.poi.ss.usermodel.Workbook 
(assert (not (= var3012 null-var641)))
(declare-const var907 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var907 null-String)))
;(assert (var1448_notNull/1920974948 (cast-from-var641-to-var138 var3012))) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object)>(r0) 

(declare-const var3012!1 var641)
 ; Statement: if null != r8 goto $r7 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Workbook: org.apache.poi.ss.usermodel.Sheet getSheet(java.lang.String)>(r8) 
(assert (not (= null-String var907))) ; Cond: null != r8 
(define-const var1470 var2501 (var641_getSheet/-2122013228 var3012!1 var907)) ; Statement: $r7 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Workbook: org.apache.poi.ss.usermodel.Sheet getSheet(java.lang.String)>(r8) 
 ; Statement: if null != $r7 goto return $r7 
(assert (not (= null-var2501 var1470))) ; Cond: null != $r7 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var1448_notNull/1920974948=([java.lang.Object], java.lang.Object), cast-from-var641-to-var138=([org.apache.poi.ss.usermodel.Workbook], java.lang.Object), var641_getSheet/-2122013228=([org.apache.poi.ss.usermodel.Workbook, java.lang.String], org.apache.poi.ss.usermodel.Sheet)}
; {var641=org.apache.poi.ss.usermodel.Workbook, var3012=r0, var907=r8, var489=null_type, var1448=cn.hutool.core.lang.Assert, var138=java.lang.Object, var2501=org.apache.poi.ss.usermodel.Sheet, var1470=$r7}
; {org.apache.poi.ss.usermodel.Workbook=var641, r0=var3012, r8=var907, null_type=var489, cn.hutool.core.lang.Assert=var1448, java.lang.Object=var138, org.apache.poi.ss.usermodel.Sheet=var2501, $r7=var1470}
;seq 
;cnt {}
;stmts r0 := @parameter0: org.apache.poi.ss.usermodel.Workbook;	r8 := @parameter1: java.lang.String;	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object)>(r0);	if null != r8 goto $r7 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Workbook: org.apache.poi.ss.usermodel.Sheet getSheet(java.lang.String)>(r8);	$r7 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Workbook: org.apache.poi.ss.usermodel.Sheet getSheet(java.lang.String)>(r8);	if null != $r7 goto return $r7;	return $r7
;block_num 3