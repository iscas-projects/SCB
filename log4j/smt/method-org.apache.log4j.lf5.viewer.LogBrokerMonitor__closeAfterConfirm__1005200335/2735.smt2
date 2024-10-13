(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3177 0)
(declare-sort var151 0)
(declare-sort var2978 0)
(declare-sort var2935 0)
(declare-sort var888 0)
(declare-sort var3350 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun _callSystemExitOnClose/-1291859940 (var3177) Bool)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun _logMonitorFrame/-1291859940 (var3177) var151)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2978_showConfirmDialog/676369074 (var2935 var888 String Int Int var3350) Int)
(declare-fun cast-from-var151-to-var2935 (var151) var2935)
(declare-fun cast-from-String-to-var888 (String) var888)
(declare-fun dispose/376304556 (var3177) void)
(declare-const null-var3177 var3177)
(declare-const null-var3350 var3350)
(declare-const var2673 var3177) ; Statement: r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var2673 null-var3177)))
(define-const var2511 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2511)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2511!1 String)
(define-const var440 Bool (_callSystemExitOnClose/-1291859940 var2673)) ; Statement: $z0 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _callSystemExitOnClose> 
 ; Statement: if $z0 != 0 goto virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Are you sure you want to exit?\n") 
(assert (not (= (ite var440 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (append/1560614132 var2511!1 "Are you sure you want to exit?\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Are you sure you want to exit?\n") 
(declare-const var2511!2 String)
(assert (str.prefixof var2511!1 var2511!2))
(assert true)
;(assert (append/1560614132 var2511!2 "This will shut down the Virtual Machine.\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("This will shut down the Virtual Machine.\n") 
(declare-const var2511!3 String)
(assert (str.prefixof var2511!2 var2511!3))
(assert true) ; Non Conditional
(define-const var1813 String "Are you sure you want to dispose of the Logging Console?") ; Statement: r4 = "Are you sure you want to dispose of the Logging Console?" 
(define-const var1619 Bool (_callSystemExitOnClose/-1291859940 var2673)) ; Statement: $z1 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _callSystemExitOnClose> 
 ; Statement: if $z1 != 1 goto $r2 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame _logMonitorFrame> 
(assert (not (= (ite var1619 1 0) 1))) ; Cond: $z1 != 1 
(define-const var3505 var151 (_logMonitorFrame/-1291859940 var2673)) ; Statement: $r2 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame _logMonitorFrame> 
(assert true)
(define-const var501 String (toString/-222306083 var2511!3)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var1252 Int (var2978_showConfirmDialog/676369074 (cast-from-var151-to-var2935 var3505) (cast-from-String-to-var888 var501) var1813 2 3 null-var3350)) ; Statement: $i0 = staticinvoke <javax.swing.JOptionPane: int showConfirmDialog(java.awt.Component,java.lang.Object,java.lang.String,int,int,javax.swing.Icon)>($r2, $r3, r4, 2, 3, null) 
 ; Statement: if $i0 != 0 goto return 
(assert (not (not (= var1252 0)))) ; Negate: Cond: $i0 != 0  
(assert true)
;(assert (dispose/376304556 var2673)) ; Statement: virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: void dispose()>() 

(declare-const var2673!1 var3177)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), _callSystemExitOnClose/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], boolean), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), _logMonitorFrame/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JFrame), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2978_showConfirmDialog/676369074=([java.awt.Component, java.lang.Object, java.lang.String, int, int, javax.swing.Icon], int), cast-from-var151-to-var2935=([javax.swing.JFrame], java.awt.Component), cast-from-String-to-var888=([java.lang.String], java.lang.Object), dispose/376304556=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], void)}
; {var3177=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var2673=r1, var2511=$r0, var440=$z0, var1813=r4, var1619=$z1, var151=javax.swing.JFrame, var3505=$r2, var501=$r3, var2978=javax.swing.JOptionPane, var2935=java.awt.Component, var888=java.lang.Object, var3350=javax.swing.Icon, var1252=$i0}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var3177, r1=var2673, $r0=var2511, $z0=var440, r4=var1813, $z1=var1619, javax.swing.JFrame=var151, $r2=var3505, $r3=var501, javax.swing.JOptionPane=var2978, java.awt.Component=var2935, java.lang.Object=var888, javax.swing.Icon=var3350, $i0=var1252}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$z0 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _callSystemExitOnClose>;	if $z0 != 0 goto virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Are you sure you want to exit?\n");	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Are you sure you want to exit?\n");	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("This will shut down the Virtual Machine.\n");	r4 = "Are you sure you want to dispose of the Logging Console?";	$z1 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _callSystemExitOnClose>;	if $z1 != 1 goto $r2 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame _logMonitorFrame>;	$r2 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame _logMonitorFrame>;	$r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	$i0 = staticinvoke <javax.swing.JOptionPane: int showConfirmDialog(java.awt.Component,java.lang.Object,java.lang.String,int,int,javax.swing.Icon)>($r2, $r3, r4, 2, 3, null);	if $i0 != 0 goto return;	virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: void dispose()>();	return
;block_num 6