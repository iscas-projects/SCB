(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1745 0)
(declare-sort var3908 0)
(declare-sort var847 0)
(declare-sort var3858 0)
(declare-sort var3821 0)
(declare-sort var3797 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun _callSystemExitOnClose/-1291859940 (var1745) Bool)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun _logMonitorFrame/-1291859940 (var1745) var3908)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var847_showConfirmDialog/676369074 (var3858 var3821 String Int Int var3797) Int)
(declare-fun cast-from-var3908-to-var3858 (var3908) var3858)
(declare-fun cast-from-String-to-var3821 (String) var3821)
(declare-const null-var1745 var1745)
(declare-const null-var3797 var3797)
(declare-const var2904 var1745) ; Statement: r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var2904 null-var1745)))
(define-const var3449 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3449)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3449!1 String)
(define-const var3727 Bool (_callSystemExitOnClose/-1291859940 var2904)) ; Statement: $z0 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _callSystemExitOnClose> 
 ; Statement: if $z0 != 0 goto virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Are you sure you want to exit?\n") 
(assert (not (= (ite var3727 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (append/1560614132 var3449!1 "Are you sure you want to exit?\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Are you sure you want to exit?\n") 
(declare-const var3449!2 String)
(assert (str.prefixof var3449!1 var3449!2))
(assert true)
;(assert (append/1560614132 var3449!2 "This will shut down the Virtual Machine.\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("This will shut down the Virtual Machine.\n") 
(declare-const var3449!3 String)
(assert (str.prefixof var3449!2 var3449!3))
(assert true) ; Non Conditional
(define-const var1305 String "Are you sure you want to dispose of the Logging Console?") ; Statement: r4 = "Are you sure you want to dispose of the Logging Console?" 
(define-const var1075 Bool (_callSystemExitOnClose/-1291859940 var2904)) ; Statement: $z1 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _callSystemExitOnClose> 
 ; Statement: if $z1 != 1 goto $r2 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame _logMonitorFrame> 
(assert (not (= (ite var1075 1 0) 1))) ; Cond: $z1 != 1 
(define-const var3088 var3908 (_logMonitorFrame/-1291859940 var2904)) ; Statement: $r2 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame _logMonitorFrame> 
(assert true)
(define-const var2785 String (toString/-222306083 var3449!3)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var2931 Int (var847_showConfirmDialog/676369074 (cast-from-var3908-to-var3858 var3088) (cast-from-String-to-var3821 var2785) var1305 2 3 null-var3797)) ; Statement: $i0 = staticinvoke <javax.swing.JOptionPane: int showConfirmDialog(java.awt.Component,java.lang.Object,java.lang.String,int,int,javax.swing.Icon)>($r2, $r3, r4, 2, 3, null) 
 ; Statement: if $i0 != 0 goto return 
(assert (not (= var2931 0))) ; Cond: $i0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), _callSystemExitOnClose/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], boolean), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), _logMonitorFrame/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JFrame), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var847_showConfirmDialog/676369074=([java.awt.Component, java.lang.Object, java.lang.String, int, int, javax.swing.Icon], int), cast-from-var3908-to-var3858=([javax.swing.JFrame], java.awt.Component), cast-from-String-to-var3821=([java.lang.String], java.lang.Object)}
; {var1745=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var2904=r1, var3449=$r0, var3727=$z0, var1305=r4, var1075=$z1, var3908=javax.swing.JFrame, var3088=$r2, var2785=$r3, var847=javax.swing.JOptionPane, var3858=java.awt.Component, var3821=java.lang.Object, var3797=javax.swing.Icon, var2931=$i0}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var1745, r1=var2904, $r0=var3449, $z0=var3727, r4=var1305, $z1=var1075, javax.swing.JFrame=var3908, $r2=var3088, $r3=var2785, javax.swing.JOptionPane=var847, java.awt.Component=var3858, java.lang.Object=var3821, javax.swing.Icon=var3797, $i0=var2931}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$z0 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _callSystemExitOnClose>;	if $z0 != 0 goto virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Are you sure you want to exit?\n");	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Are you sure you want to exit?\n");	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("This will shut down the Virtual Machine.\n");	r4 = "Are you sure you want to dispose of the Logging Console?";	$z1 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _callSystemExitOnClose>;	if $z1 != 1 goto $r2 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame _logMonitorFrame>;	$r2 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame _logMonitorFrame>;	$r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	$i0 = staticinvoke <javax.swing.JOptionPane: int showConfirmDialog(java.awt.Component,java.lang.Object,java.lang.String,int,int,javax.swing.Icon)>($r2, $r3, r4, 2, 3, null);	if $i0 != 0 goto return;	return
;block_num 5