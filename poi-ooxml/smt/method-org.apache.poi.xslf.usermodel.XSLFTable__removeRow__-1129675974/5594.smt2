(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3497 0)
(declare-sort var3185 0)
(declare-sort var3348 0)
(declare-sort var840 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getNumberOfRows/1773522355 (var3497) Int)
(declare-fun _table/-1636128918 (var3497) var3185)
(declare-fun var3185_removeTr/481090436 (var3185 Int) void)
(declare-fun _rows/-1636128918 (var3497) var3348)
(declare-fun var3348_remove/1853576941 (var3348 Int) var840)
(declare-fun updateRowColIndexes/-1154994332 (var3497) void)
(declare-const null-var3497 var3497)
(declare-const null-Int Int)
(declare-const var2853 var3497) ; Statement: r0 := @this: org.apache.poi.xslf.usermodel.XSLFTable 
(assert (not (= var2853 null-var3497)))
(declare-const var1852 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1852 null-Int)))
(assert true)
(define-const var3457 Int (getNumberOfRows/1773522355 var2853)) ; Statement: $i1 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFTable: int getNumberOfRows()>() 
 ; Statement: if $i1 >= i0 goto $r1 = r0.<org.apache.poi.xslf.usermodel.XSLFTable: org.openxmlformats.schemas.drawingml.x2006.main.CTTable _table> 
(assert (>= var3457 var1852)) ; Cond: $i1 >= i0 
(define-const var470 var3185 (_table/-1636128918 var2853)) ; Statement: $r1 = r0.<org.apache.poi.xslf.usermodel.XSLFTable: org.openxmlformats.schemas.drawingml.x2006.main.CTTable _table> 
;(assert (var3185_removeTr/481090436 var470 var1852)) ; Statement: interfaceinvoke $r1.<org.openxmlformats.schemas.drawingml.x2006.main.CTTable: void removeTr(int)>(i0) 

(declare-const var470!1 var3185)
(declare-const var1852!1 Int)
(define-const var1744 var3348 (_rows/-1636128918 var2853)) ; Statement: $r2 = r0.<org.apache.poi.xslf.usermodel.XSLFTable: java.util.List _rows> 
;(assert (var3348_remove/1853576941 var1744 var1852!1)) ; Statement: interfaceinvoke $r2.<java.util.List: java.lang.Object remove(int)>(i0) 

(declare-const var1744!1 var3348)
(declare-const var1852!2 Int)
(assert true)
;(assert (updateRowColIndexes/-1154994332 var2853)) ; Statement: virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFTable: void updateRowColIndexes()>() 

(declare-const var2853!1 var3497)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getNumberOfRows/1773522355=([org.apache.poi.xslf.usermodel.XSLFTable], int), _table/-1636128918=([org.apache.poi.xslf.usermodel.XSLFTable], org.openxmlformats.schemas.drawingml.x2006.main.CTTable), var3185_removeTr/481090436=([org.openxmlformats.schemas.drawingml.x2006.main.CTTable, int], void), _rows/-1636128918=([org.apache.poi.xslf.usermodel.XSLFTable], java.util.List), var3348_remove/1853576941=([java.util.List, int], java.lang.Object), updateRowColIndexes/-1154994332=([org.apache.poi.xslf.usermodel.XSLFTable], void)}
; {var3497=org.apache.poi.xslf.usermodel.XSLFTable, var2853=r0, var1852=i0, var3457=$i1, var3185=org.openxmlformats.schemas.drawingml.x2006.main.CTTable, var470=$r1, var3348=java.util.List, var1744=$r2, var840=java.lang.Object}
; {org.apache.poi.xslf.usermodel.XSLFTable=var3497, r0=var2853, i0=var1852, $i1=var3457, org.openxmlformats.schemas.drawingml.x2006.main.CTTable=var3185, $r1=var470, java.util.List=var3348, $r2=var1744, java.lang.Object=var840}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.poi.xslf.usermodel.XSLFTable;	i0 := @parameter0: int;	$i1 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFTable: int getNumberOfRows()>();	if $i1 >= i0 goto $r1 = r0.<org.apache.poi.xslf.usermodel.XSLFTable: org.openxmlformats.schemas.drawingml.x2006.main.CTTable _table>;	$r1 = r0.<org.apache.poi.xslf.usermodel.XSLFTable: org.openxmlformats.schemas.drawingml.x2006.main.CTTable _table>;	interfaceinvoke $r1.<org.openxmlformats.schemas.drawingml.x2006.main.CTTable: void removeTr(int)>(i0);	$r2 = r0.<org.apache.poi.xslf.usermodel.XSLFTable: java.util.List _rows>;	interfaceinvoke $r2.<java.util.List: java.lang.Object remove(int)>(i0);	virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFTable: void updateRowColIndexes()>();	return
;block_num 2