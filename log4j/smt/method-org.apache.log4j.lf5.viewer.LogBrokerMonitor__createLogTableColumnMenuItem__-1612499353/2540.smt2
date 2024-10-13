(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3446 0)
(declare-sort var2996 0)
(declare-sort var3772 0)
(declare-sort var1730 0)
(declare-sort var1148 0)
(declare-sort var3877 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3772-init () var3772)
(declare-fun toString/1457987255 (var2996) String)
(declare-fun <init>/420611877 (var3772 String) void)
(declare-fun setSelected/562112452 (var1730 Bool) void)
(declare-fun cast-from-var3772-to-var1730 (var3772) var1730)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun setMnemonic/-970060803 (var1730 Int) void)
(declare-fun var1148-init () var1148)
(declare-fun <init>/1114014927 (var1148 var3446) void)
(declare-fun addActionListener/-1143302268 (var1730 var3877) void)
(declare-fun cast-from-var1148-to-var3877 (var1148) var3877)
(declare-const null-var3446 var3446)
(declare-const null-var2996 var2996)
(declare-const var3965 var3446) ; Statement: r5 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var3965 null-var3446)))
(declare-const var3218 var2996) ; Statement: r1 := @parameter0: org.apache.log4j.lf5.viewer.LogTableColumn 
(assert (not (= var3218 null-var2996)))
(define-const var676 var3772 var3772-init) ; Statement: $r0 = new javax.swing.JCheckBoxMenuItem 
(assert true)
(define-const var3529 String (toString/1457987255 var3218)) ; Statement: $r2 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogTableColumn: java.lang.String toString()>() 
(assert true)
;(assert (<init>/420611877 var676 var3529)) ; Statement: specialinvoke $r0.<javax.swing.JCheckBoxMenuItem: void <init>(java.lang.String)>($r2) 

(declare-const var676!1 var3772)
(declare-const var3529!1 String)
(assert true)
;(assert (setSelected/562112452 (cast-from-var3772-to-var1730 var676!1) (ite (= 1 1) true false))) ; Statement: virtualinvoke $r0.<javax.swing.JCheckBoxMenuItem: void setSelected(boolean)>(1) 

(declare-const var676!2 var3772)
(declare-const var859 Int)
(assert true)
(define-const var828 String (toString/1457987255 var3218)) ; Statement: $r3 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogTableColumn: java.lang.String toString()>() 
(assert (and true (and (> (str.len var828) 0) (<= 0 0))))
(define-const var2945 Int (charAt/698050440 var828 0)) ; Statement: $c0 = virtualinvoke $r3.<java.lang.String: char charAt(int)>(0) 
(assert true)
;(assert (setMnemonic/-970060803 (cast-from-var3772-to-var1730 var676!2) var2945)) ; Statement: virtualinvoke $r0.<javax.swing.JCheckBoxMenuItem: void setMnemonic(char)>($c0) 

(declare-const var676!3 var3772)
(declare-const var2945!1 Int)
(define-const var1193 var1148 var1148-init) ; Statement: $r4 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$13 
(assert true)
;(assert (<init>/1114014927 var1193 var3965)) ; Statement: specialinvoke $r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$13: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r5) 

(declare-const var1193!1 var1148)
(declare-const var3965!1 var3446)
(assert true)
;(assert (addActionListener/-1143302268 (cast-from-var3772-to-var1730 var676!3) (cast-from-var1148-to-var3877 var1193!1))) ; Statement: virtualinvoke $r0.<javax.swing.JCheckBoxMenuItem: void addActionListener(java.awt.event.ActionListener)>($r4) 

(declare-const var676!4 var3772)
(declare-const var1193!2 var1148)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3772-init=([], javax.swing.JCheckBoxMenuItem), toString/1457987255=([org.apache.log4j.lf5.viewer.LogTableColumn], java.lang.String), <init>/420611877=([javax.swing.JCheckBoxMenuItem, java.lang.String], void), setSelected/562112452=([javax.swing.AbstractButton, boolean], void), cast-from-var3772-to-var1730=([javax.swing.JCheckBoxMenuItem], javax.swing.AbstractButton), charAt/698050440=([java.lang.String, int], char), setMnemonic/-970060803=([javax.swing.AbstractButton, char], void), var1148-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$13), <init>/1114014927=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$13, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), addActionListener/-1143302268=([javax.swing.AbstractButton, java.awt.event.ActionListener], void), cast-from-var1148-to-var3877=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$13], java.awt.event.ActionListener)}
; {var3446=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var3965=r5, var2996=org.apache.log4j.lf5.viewer.LogTableColumn, var3218=r1, var3772=javax.swing.JCheckBoxMenuItem, var676=$r0, var3529=$r2, var1730=javax.swing.AbstractButton, var859=1, var828=$r3, var2945=$c0, var1148=org.apache.log4j.lf5.viewer.LogBrokerMonitor$13, var1193=$r4, var3877=java.awt.event.ActionListener}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var3446, r5=var3965, org.apache.log4j.lf5.viewer.LogTableColumn=var2996, r1=var3218, javax.swing.JCheckBoxMenuItem=var3772, $r0=var676, $r2=var3529, javax.swing.AbstractButton=var1730, 1=var859, $r3=var828, $c0=var2945, org.apache.log4j.lf5.viewer.LogBrokerMonitor$13=var1148, $r4=var1193, java.awt.event.ActionListener=var3877}
;seq <org.apache.log4j.lf5.viewer.LogTableColumn: java.lang.String toString()>;	<org.apache.log4j.lf5.viewer.LogTableColumn: java.lang.String toString()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r5 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	r1 := @parameter0: org.apache.log4j.lf5.viewer.LogTableColumn;	$r0 = new javax.swing.JCheckBoxMenuItem;	$r2 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogTableColumn: java.lang.String toString()>();	specialinvoke $r0.<javax.swing.JCheckBoxMenuItem: void <init>(java.lang.String)>($r2);	virtualinvoke $r0.<javax.swing.JCheckBoxMenuItem: void setSelected(boolean)>(1);	$r3 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogTableColumn: java.lang.String toString()>();	$c0 = virtualinvoke $r3.<java.lang.String: char charAt(int)>(0);	virtualinvoke $r0.<javax.swing.JCheckBoxMenuItem: void setMnemonic(char)>($c0);	$r4 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$13;	specialinvoke $r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$13: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r5);	virtualinvoke $r0.<javax.swing.JCheckBoxMenuItem: void addActionListener(java.awt.event.ActionListener)>($r4);	return $r0
;block_num 1