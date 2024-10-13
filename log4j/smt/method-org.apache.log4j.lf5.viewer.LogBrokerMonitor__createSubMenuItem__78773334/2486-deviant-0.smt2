(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var48 0)
(declare-sort var3637 0)
(declare-sort var1912 0)
(declare-sort var2008 0)
(declare-sort var3326 0)
(declare-sort var1175 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1912-init () var1912)
(declare-fun toString/-418414659 (var3637) String)
(declare-fun <init>/-692198302 (var1912 String) void)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun setMnemonic/-970060803 (var2008 Int) void)
(declare-fun cast-from-var1912-to-var2008 (var1912) var2008)
(declare-fun var3326-init () var3326)
(declare-fun <init>/-848628922 (var3326 var48 var1912 var3637) void)
(declare-fun addActionListener/-1143302268 (var2008 var1175) void)
(declare-fun cast-from-var3326-to-var1175 (var3326) var1175)
(declare-const null-var48 var48)
(declare-const null-var3637 var3637)
(declare-const var1392 var48) ; Statement: r5 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var1392 null-var48)))
(declare-const var1188 var3637) ; Statement: r1 := @parameter0: org.apache.log4j.lf5.LogLevel 
(assert (not (= var1188 null-var3637)))
(define-const var2711 var1912 var1912-init) ; Statement: $r0 = new javax.swing.JMenuItem 
(assert true)
(define-const var710 String (toString/-418414659 var1188)) ; Statement: $r2 = virtualinvoke r1.<org.apache.log4j.lf5.LogLevel: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-692198302 var2711 var710)) ; Statement: specialinvoke $r0.<javax.swing.JMenuItem: void <init>(java.lang.String)>($r2) 

(declare-const var2711!1 var1912)
(declare-const var710!1 String)
(assert true)
(define-const var860 String (toString/-418414659 var1188)) ; Statement: $r3 = virtualinvoke r1.<org.apache.log4j.lf5.LogLevel: java.lang.String toString()>() 
(assert (not (and true (and (> (str.len var860) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var1912-init=([], javax.swing.JMenuItem), toString/-418414659=([org.apache.log4j.lf5.LogLevel], java.lang.String), <init>/-692198302=([javax.swing.JMenuItem, java.lang.String], void), charAt/698050440=([java.lang.String, int], char), setMnemonic/-970060803=([javax.swing.AbstractButton, char], void), cast-from-var1912-to-var2008=([javax.swing.JMenuItem], javax.swing.AbstractButton), var3326-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$11), <init>/-848628922=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$11, org.apache.log4j.lf5.viewer.LogBrokerMonitor, javax.swing.JMenuItem, org.apache.log4j.lf5.LogLevel], void), addActionListener/-1143302268=([javax.swing.AbstractButton, java.awt.event.ActionListener], void), cast-from-var3326-to-var1175=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$11], java.awt.event.ActionListener)}
; {var48=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var1392=r5, var3637=org.apache.log4j.lf5.LogLevel, var1188=r1, var1912=javax.swing.JMenuItem, var2711=$r0, var710=$r2, var860=$r3, var94=$c0, var2008=javax.swing.AbstractButton, var3326=org.apache.log4j.lf5.viewer.LogBrokerMonitor$11, var473=$r4, var1175=java.awt.event.ActionListener}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var48, r5=var1392, org.apache.log4j.lf5.LogLevel=var3637, r1=var1188, javax.swing.JMenuItem=var1912, $r0=var2711, $r2=var710, $r3=var860, $c0=var94, javax.swing.AbstractButton=var2008, org.apache.log4j.lf5.viewer.LogBrokerMonitor$11=var3326, $r4=var473, java.awt.event.ActionListener=var1175}
;seq <org.apache.log4j.lf5.LogLevel: java.lang.String toString()>;	<org.apache.log4j.lf5.LogLevel: java.lang.String toString()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r5 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	r1 := @parameter0: org.apache.log4j.lf5.LogLevel;	$r0 = new javax.swing.JMenuItem;	$r2 = virtualinvoke r1.<org.apache.log4j.lf5.LogLevel: java.lang.String toString()>();	specialinvoke $r0.<javax.swing.JMenuItem: void <init>(java.lang.String)>($r2);	$r3 = virtualinvoke r1.<org.apache.log4j.lf5.LogLevel: java.lang.String toString()>();	$c0 = virtualinvoke $r3.<java.lang.String: char charAt(int)>(0);	virtualinvoke $r0.<javax.swing.JMenuItem: void setMnemonic(char)>($c0);	$r4 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$11;	specialinvoke $r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$11: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor,javax.swing.JMenuItem,org.apache.log4j.lf5.LogLevel)>(r5, $r0, r1);	virtualinvoke $r0.<javax.swing.JMenuItem: void addActionListener(java.awt.event.ActionListener)>($r4);	return $r0
;block_num 1