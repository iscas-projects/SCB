(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3728 0)
(declare-sort var3416 0)
(declare-sort var3013 0)
(declare-sort var1426 0)
(declare-sort var3982 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _row/1667328528 (var3728) var3416)
(declare-fun var3416_sizeOfTcArray/-481887812 (var3416) Int)
(declare-fun var3416_removeTc/1473367611 (var3416 Int) void)
(declare-fun _cells/1667328528 (var3728) var3013)
(declare-fun var3013_remove/1853576941 (var3013 Int) var3982)
(declare-fun _table/1667328528 (var3728) var1426)
(declare-fun updateRowColIndexes/-1154994332 (var1426) void)
(declare-const null-var3728 var3728)
(declare-const null-Int Int)
(declare-const var3130 var3728) ; Statement: r0 := @this: org.apache.poi.xslf.usermodel.XSLFTableRow 
(assert (not (= var3130 null-var3728)))
(declare-const var3296 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3296 null-Int)))
(define-const var3761 var3416 (_row/1667328528 var3130)) ; Statement: $r1 = r0.<org.apache.poi.xslf.usermodel.XSLFTableRow: org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow _row> 
(define-const var1651 Int (var3416_sizeOfTcArray/-481887812 var3761)) ; Statement: $i1 = interfaceinvoke $r1.<org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow: int sizeOfTcArray()>() 
 ; Statement: if $i1 >= i0 goto $r2 = r0.<org.apache.poi.xslf.usermodel.XSLFTableRow: org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow _row> 
(assert (>= var1651 var3296)) ; Cond: $i1 >= i0 
(define-const var2392 var3416 (_row/1667328528 var3130)) ; Statement: $r2 = r0.<org.apache.poi.xslf.usermodel.XSLFTableRow: org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow _row> 
;(assert (var3416_removeTc/1473367611 var2392 var3296)) ; Statement: interfaceinvoke $r2.<org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow: void removeTc(int)>(i0) 

(declare-const var2392!1 var3416)
(declare-const var3296!1 Int)
(define-const var2994 var3013 (_cells/1667328528 var3130)) ; Statement: $r3 = r0.<org.apache.poi.xslf.usermodel.XSLFTableRow: java.util.List _cells> 
;(assert (var3013_remove/1853576941 var2994 var3296!1)) ; Statement: interfaceinvoke $r3.<java.util.List: java.lang.Object remove(int)>(i0) 

(declare-const var2994!1 var3013)
(declare-const var3296!2 Int)
(define-const var593 var1426 (_table/1667328528 var3130)) ; Statement: $r4 = r0.<org.apache.poi.xslf.usermodel.XSLFTableRow: org.apache.poi.xslf.usermodel.XSLFTable _table> 
(assert true)
;(assert (updateRowColIndexes/-1154994332 var593)) ; Statement: virtualinvoke $r4.<org.apache.poi.xslf.usermodel.XSLFTable: void updateRowColIndexes()>() 

(declare-const var593!1 var1426)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {_row/1667328528=([org.apache.poi.xslf.usermodel.XSLFTableRow], org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow), var3416_sizeOfTcArray/-481887812=([org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow], int), var3416_removeTc/1473367611=([org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow, int], void), _cells/1667328528=([org.apache.poi.xslf.usermodel.XSLFTableRow], java.util.List), var3013_remove/1853576941=([java.util.List, int], java.lang.Object), _table/1667328528=([org.apache.poi.xslf.usermodel.XSLFTableRow], org.apache.poi.xslf.usermodel.XSLFTable), updateRowColIndexes/-1154994332=([org.apache.poi.xslf.usermodel.XSLFTable], void)}
; {var3728=org.apache.poi.xslf.usermodel.XSLFTableRow, var3130=r0, var3296=i0, var3416=org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow, var3761=$r1, var1651=$i1, var2392=$r2, var3013=java.util.List, var2994=$r3, var1426=org.apache.poi.xslf.usermodel.XSLFTable, var593=$r4, var3982=java.lang.Object}
; {org.apache.poi.xslf.usermodel.XSLFTableRow=var3728, r0=var3130, i0=var3296, org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow=var3416, $r1=var3761, $i1=var1651, $r2=var2392, java.util.List=var3013, $r3=var2994, org.apache.poi.xslf.usermodel.XSLFTable=var1426, $r4=var593, java.lang.Object=var3982}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.poi.xslf.usermodel.XSLFTableRow;	i0 := @parameter0: int;	$r1 = r0.<org.apache.poi.xslf.usermodel.XSLFTableRow: org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow _row>;	$i1 = interfaceinvoke $r1.<org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow: int sizeOfTcArray()>();	if $i1 >= i0 goto $r2 = r0.<org.apache.poi.xslf.usermodel.XSLFTableRow: org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow _row>;	$r2 = r0.<org.apache.poi.xslf.usermodel.XSLFTableRow: org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow _row>;	interfaceinvoke $r2.<org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow: void removeTc(int)>(i0);	$r3 = r0.<org.apache.poi.xslf.usermodel.XSLFTableRow: java.util.List _cells>;	interfaceinvoke $r3.<java.util.List: java.lang.Object remove(int)>(i0);	$r4 = r0.<org.apache.poi.xslf.usermodel.XSLFTableRow: org.apache.poi.xslf.usermodel.XSLFTable _table>;	virtualinvoke $r4.<org.apache.poi.xslf.usermodel.XSLFTable: void updateRowColIndexes()>();	return
;block_num 2