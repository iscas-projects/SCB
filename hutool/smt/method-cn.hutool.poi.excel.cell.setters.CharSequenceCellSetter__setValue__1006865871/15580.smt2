(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3187 0)
(declare-sort var814 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/-773100579 (var3187) String)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun var814_setCellValue/1152239825 (var814 String) void)
(declare-const null-var3187 var3187)
(declare-const null-var814 var814)
(declare-const var645 var3187) ; Statement: r1 := @this: cn.hutool.poi.excel.cell.setters.CharSequenceCellSetter 
(assert (not (= var645 null-var3187)))
(declare-const var3059 var814) ; Statement: r0 := @parameter0: org.apache.poi.ss.usermodel.Cell 
(assert (not (= var3059 null-var814)))
(define-const var115 String (value/-773100579 var645)) ; Statement: $r2 = r1.<cn.hutool.poi.excel.cell.setters.CharSequenceCellSetter: java.lang.CharSequence value> 
(define-const var762 String (String_toString/-1426662429 var115)) ; Statement: $r3 = interfaceinvoke $r2.<java.lang.CharSequence: java.lang.String toString()>() 
;(assert (var814_setCellValue/1152239825 var3059 var762)) ; Statement: interfaceinvoke r0.<org.apache.poi.ss.usermodel.Cell: void setCellValue(java.lang.String)>($r3) 

(declare-const var3059!1 var814)
(declare-const var762!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {value/-773100579=([cn.hutool.poi.excel.cell.setters.CharSequenceCellSetter], java.lang.CharSequence), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), var814_setCellValue/1152239825=([org.apache.poi.ss.usermodel.Cell, java.lang.String], void)}
; {var3187=cn.hutool.poi.excel.cell.setters.CharSequenceCellSetter, var645=r1, var814=org.apache.poi.ss.usermodel.Cell, var3059=r0, var115=$r2, var762=$r3}
; {cn.hutool.poi.excel.cell.setters.CharSequenceCellSetter=var3187, r1=var645, org.apache.poi.ss.usermodel.Cell=var814, r0=var3059, $r2=var115, $r3=var762}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.poi.excel.cell.setters.CharSequenceCellSetter;	r0 := @parameter0: org.apache.poi.ss.usermodel.Cell;	$r2 = r1.<cn.hutool.poi.excel.cell.setters.CharSequenceCellSetter: java.lang.CharSequence value>;	$r3 = interfaceinvoke $r2.<java.lang.CharSequence: java.lang.String toString()>();	interfaceinvoke r0.<org.apache.poi.ss.usermodel.Cell: void setCellValue(java.lang.String)>($r3);	return
;block_num 1