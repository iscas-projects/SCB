(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2341 0)
(declare-sort var3715 0)
(declare-sort var1034 0)
(declare-sort var3022 0)
(declare-sort var3040 0)
(declare-sort var3325 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1034-init () var1034)
(declare-fun toString/-418414659 (var3715) String)
(declare-fun <init>/420611877 (var1034 String) void)
(declare-fun setSelected/562112452 (var3022 Bool) void)
(declare-fun cast-from-var1034-to-var3022 (var1034) var3022)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun setMnemonic/-970060803 (var3022 Int) void)
(declare-fun var3040-init () var3040)
(declare-fun <init>/-2014256050 (var3040 var2341) void)
(declare-fun addActionListener/-1143302268 (var3022 var3325) void)
(declare-fun cast-from-var3040-to-var3325 (var3040) var3325)
(declare-const null-var2341 var2341)
(declare-const null-var3715 var3715)
(declare-const var1893 var2341) ; Statement: r5 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var1893 null-var2341)))
(declare-const var2149 var3715) ; Statement: r1 := @parameter0: org.apache.log4j.lf5.LogLevel 
(assert (not (= var2149 null-var3715)))
(define-const var3348 var1034 var1034-init) ; Statement: $r0 = new javax.swing.JCheckBoxMenuItem 
(assert true)
(define-const var3808 String (toString/-418414659 var2149)) ; Statement: $r2 = virtualinvoke r1.<org.apache.log4j.lf5.LogLevel: java.lang.String toString()>() 
(assert true)
;(assert (<init>/420611877 var3348 var3808)) ; Statement: specialinvoke $r0.<javax.swing.JCheckBoxMenuItem: void <init>(java.lang.String)>($r2) 

(declare-const var3348!1 var1034)
(declare-const var3808!1 String)
(assert true)
;(assert (setSelected/562112452 (cast-from-var1034-to-var3022 var3348!1) (ite (= 1 1) true false))) ; Statement: virtualinvoke $r0.<javax.swing.JCheckBoxMenuItem: void setSelected(boolean)>(1) 

(declare-const var3348!2 var1034)
(declare-const var1582 Int)
(assert true)
(define-const var115 String (toString/-418414659 var2149)) ; Statement: $r3 = virtualinvoke r1.<org.apache.log4j.lf5.LogLevel: java.lang.String toString()>() 
(assert (and true (and (> (str.len var115) 0) (<= 0 0))))
(define-const var502 Int (charAt/698050440 var115 0)) ; Statement: $c0 = virtualinvoke $r3.<java.lang.String: char charAt(int)>(0) 
(assert true)
;(assert (setMnemonic/-970060803 (cast-from-var1034-to-var3022 var3348!2) var502)) ; Statement: virtualinvoke $r0.<javax.swing.JCheckBoxMenuItem: void setMnemonic(char)>($c0) 

(declare-const var3348!3 var1034)
(declare-const var502!1 Int)
(define-const var3395 var3040 var3040-init) ; Statement: $r4 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$12 
(assert true)
;(assert (<init>/-2014256050 var3395 var1893)) ; Statement: specialinvoke $r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$12: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r5) 

(declare-const var3395!1 var3040)
(declare-const var1893!1 var2341)
(assert true)
;(assert (addActionListener/-1143302268 (cast-from-var1034-to-var3022 var3348!3) (cast-from-var3040-to-var3325 var3395!1))) ; Statement: virtualinvoke $r0.<javax.swing.JCheckBoxMenuItem: void addActionListener(java.awt.event.ActionListener)>($r4) 

(declare-const var3348!4 var1034)
(declare-const var3395!2 var3040)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1034-init=([], javax.swing.JCheckBoxMenuItem), toString/-418414659=([org.apache.log4j.lf5.LogLevel], java.lang.String), <init>/420611877=([javax.swing.JCheckBoxMenuItem, java.lang.String], void), setSelected/562112452=([javax.swing.AbstractButton, boolean], void), cast-from-var1034-to-var3022=([javax.swing.JCheckBoxMenuItem], javax.swing.AbstractButton), charAt/698050440=([java.lang.String, int], char), setMnemonic/-970060803=([javax.swing.AbstractButton, char], void), var3040-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$12), <init>/-2014256050=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$12, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), addActionListener/-1143302268=([javax.swing.AbstractButton, java.awt.event.ActionListener], void), cast-from-var3040-to-var3325=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$12], java.awt.event.ActionListener)}
; {var2341=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var1893=r5, var3715=org.apache.log4j.lf5.LogLevel, var2149=r1, var1034=javax.swing.JCheckBoxMenuItem, var3348=$r0, var3808=$r2, var3022=javax.swing.AbstractButton, var1582=1, var115=$r3, var502=$c0, var3040=org.apache.log4j.lf5.viewer.LogBrokerMonitor$12, var3395=$r4, var3325=java.awt.event.ActionListener}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var2341, r5=var1893, org.apache.log4j.lf5.LogLevel=var3715, r1=var2149, javax.swing.JCheckBoxMenuItem=var1034, $r0=var3348, $r2=var3808, javax.swing.AbstractButton=var3022, 1=var1582, $r3=var115, $c0=var502, org.apache.log4j.lf5.viewer.LogBrokerMonitor$12=var3040, $r4=var3395, java.awt.event.ActionListener=var3325}
;seq <org.apache.log4j.lf5.LogLevel: java.lang.String toString()>;	<org.apache.log4j.lf5.LogLevel: java.lang.String toString()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r5 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	r1 := @parameter0: org.apache.log4j.lf5.LogLevel;	$r0 = new javax.swing.JCheckBoxMenuItem;	$r2 = virtualinvoke r1.<org.apache.log4j.lf5.LogLevel: java.lang.String toString()>();	specialinvoke $r0.<javax.swing.JCheckBoxMenuItem: void <init>(java.lang.String)>($r2);	virtualinvoke $r0.<javax.swing.JCheckBoxMenuItem: void setSelected(boolean)>(1);	$r3 = virtualinvoke r1.<org.apache.log4j.lf5.LogLevel: java.lang.String toString()>();	$c0 = virtualinvoke $r3.<java.lang.String: char charAt(int)>(0);	virtualinvoke $r0.<javax.swing.JCheckBoxMenuItem: void setMnemonic(char)>($c0);	$r4 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$12;	specialinvoke $r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$12: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r5);	virtualinvoke $r0.<javax.swing.JCheckBoxMenuItem: void addActionListener(java.awt.event.ActionListener)>($r4);	return $r0
;block_num 1