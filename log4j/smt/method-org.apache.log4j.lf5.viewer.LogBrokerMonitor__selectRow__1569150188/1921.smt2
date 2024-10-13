(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2946 0)
(declare-sort var2668 0)
(declare-sort var691 0)
(declare-sort var280 0)
(declare-sort var1315 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun _table/-1291859940 (var2946) var2668)
(declare-fun _logTableScrollPane/-1291859940 (var2946) var691)
(declare-fun var280_selectRow/83434822 (Int var1315 var691) void)
(declare-fun cast-from-var2668-to-var1315 (var2668) var1315)
(declare-const null-var2946 var2946)
(declare-const null-Int Int)
(declare-const var853 var2946) ; Statement: r0 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var853 null-var2946)))
(declare-const var1081 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1081 null-Int)))
(define-const var510 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r2 = r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: org.apache.log4j.lf5.viewer.LogTable _table> 
(assert (not (= var1081 var510))) ; Cond: i0 != $i2 
(define-const var3920 var2668 (_table/-1291859940 var853)) ; Statement: $r2 = r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: org.apache.log4j.lf5.viewer.LogTable _table> 
(define-const var3326 var691 (_logTableScrollPane/-1291859940 var853)) ; Statement: $r1 = r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JScrollPane _logTableScrollPane> 
;(assert (var280_selectRow/83434822 var1081 (cast-from-var2668-to-var1315 var3920) var3326)) ; Statement: staticinvoke <org.apache.log4j.lf5.viewer.LF5SwingUtils: void selectRow(int,javax.swing.JTable,javax.swing.JScrollPane)>(i0, $r2, $r1) 

(declare-const var1081!1 Int)
(declare-const var3920!1 var2668)
(declare-const var3326!1 var691)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), _table/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], org.apache.log4j.lf5.viewer.LogTable), _logTableScrollPane/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JScrollPane), var280_selectRow/83434822=([int, javax.swing.JTable, javax.swing.JScrollPane], void), cast-from-var2668-to-var1315=([org.apache.log4j.lf5.viewer.LogTable], javax.swing.JTable)}
; {var2946=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var853=r0, var1081=i0, var510=$i2, var2668=org.apache.log4j.lf5.viewer.LogTable, var3920=$r2, var691=javax.swing.JScrollPane, var3326=$r1, var280=org.apache.log4j.lf5.viewer.LF5SwingUtils, var1315=javax.swing.JTable}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var2946, r0=var853, i0=var1081, $i2=var510, org.apache.log4j.lf5.viewer.LogTable=var2668, $r2=var3920, javax.swing.JScrollPane=var691, $r1=var3326, org.apache.log4j.lf5.viewer.LF5SwingUtils=var280, javax.swing.JTable=var1315}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	i0 := @parameter0: int;	$i2 = (int) -1;	if i0 != $i2 goto $r2 = r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: org.apache.log4j.lf5.viewer.LogTable _table>;	$r2 = r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: org.apache.log4j.lf5.viewer.LogTable _table>;	$r1 = r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JScrollPane _logTableScrollPane>;	staticinvoke <org.apache.log4j.lf5.viewer.LF5SwingUtils: void selectRow(int,javax.swing.JTable,javax.swing.JScrollPane)>(i0, $r2, $r1);	return
;block_num 2