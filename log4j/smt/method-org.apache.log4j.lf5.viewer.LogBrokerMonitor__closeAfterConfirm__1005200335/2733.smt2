(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1948 0)
(declare-sort var3109 0)
(declare-sort var1666 0)
(declare-sort var273 0)
(declare-sort var3631 0)
(declare-sort var3901 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun _callSystemExitOnClose/-1291859940 (var1948) Bool)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun _logMonitorFrame/-1291859940 (var1948) var3109)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1666_showConfirmDialog/676369074 (var273 var3631 String Int Int var3901) Int)
(declare-fun cast-from-var3109-to-var273 (var3109) var273)
(declare-fun cast-from-String-to-var3631 (String) var3631)
(declare-const null-var1948 var1948)
(declare-const null-var3901 var3901)
(declare-const var1253 var1948) ; Statement: r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var1253 null-var1948)))
(define-const var2716 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2716)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2716!1 String)
(define-const var2601 Bool (_callSystemExitOnClose/-1291859940 var1253)) ; Statement: $z0 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _callSystemExitOnClose> 
 ; Statement: if $z0 != 0 goto virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Are you sure you want to exit?\n") 
(assert (not (= (ite var2601 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (append/1560614132 var2716!1 "Are you sure you want to exit?\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Are you sure you want to exit?\n") 
(declare-const var2716!2 String)
(assert (str.prefixof var2716!1 var2716!2))
(assert true)
;(assert (append/1560614132 var2716!2 "This will shut down the Virtual Machine.\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("This will shut down the Virtual Machine.\n") 
(declare-const var2716!3 String)
(assert (str.prefixof var2716!2 var2716!3))
(assert true) ; Non Conditional
(define-const var1045 String "Are you sure you want to dispose of the Logging Console?") ; Statement: r4 = "Are you sure you want to dispose of the Logging Console?" 
(define-const var185 Bool (_callSystemExitOnClose/-1291859940 var1253)) ; Statement: $z1 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _callSystemExitOnClose> 
 ; Statement: if $z1 != 1 goto $r2 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame _logMonitorFrame> 
(assert (not (not (= (ite var185 1 0) 1)))) ; Negate: Cond: $z1 != 1  
(define-const var1045!1 String "Are you sure you want to exit?") ; Statement: r4 = "Are you sure you want to exit?" 
(assert true) ; Non Conditional
(define-const var1735 var3109 (_logMonitorFrame/-1291859940 var1253)) ; Statement: $r2 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame _logMonitorFrame> 
(assert true)
(define-const var396 String (toString/-222306083 var2716!3)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var2585 Int (var1666_showConfirmDialog/676369074 (cast-from-var3109-to-var273 var1735) (cast-from-String-to-var3631 var396) var1045!1 2 3 null-var3901)) ; Statement: $i0 = staticinvoke <javax.swing.JOptionPane: int showConfirmDialog(java.awt.Component,java.lang.Object,java.lang.String,int,int,javax.swing.Icon)>($r2, $r3, r4, 2, 3, null) 
 ; Statement: if $i0 != 0 goto return 
(assert (not (= var2585 0))) ; Cond: $i0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), _callSystemExitOnClose/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], boolean), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), _logMonitorFrame/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JFrame), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1666_showConfirmDialog/676369074=([java.awt.Component, java.lang.Object, java.lang.String, int, int, javax.swing.Icon], int), cast-from-var3109-to-var273=([javax.swing.JFrame], java.awt.Component), cast-from-String-to-var3631=([java.lang.String], java.lang.Object)}
; {var1948=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var1253=r1, var2716=$r0, var2601=$z0, var1045=r4, var185=$z1, var3109=javax.swing.JFrame, var1735=$r2, var396=$r3, var1666=javax.swing.JOptionPane, var273=java.awt.Component, var3631=java.lang.Object, var3901=javax.swing.Icon, var2585=$i0}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var1948, r1=var1253, $r0=var2716, $z0=var2601, r4=var1045, $z1=var185, javax.swing.JFrame=var3109, $r2=var1735, $r3=var396, javax.swing.JOptionPane=var1666, java.awt.Component=var273, java.lang.Object=var3631, javax.swing.Icon=var3901, $i0=var2585}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$z0 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _callSystemExitOnClose>;	if $z0 != 0 goto virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Are you sure you want to exit?\n");	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Are you sure you want to exit?\n");	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("This will shut down the Virtual Machine.\n");	r4 = "Are you sure you want to dispose of the Logging Console?";	$z1 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _callSystemExitOnClose>;	if $z1 != 1 goto $r2 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame _logMonitorFrame>;	r4 = "Are you sure you want to exit?";	$r2 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame _logMonitorFrame>;	$r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	$i0 = staticinvoke <javax.swing.JOptionPane: int showConfirmDialog(java.awt.Component,java.lang.Object,java.lang.String,int,int,javax.swing.Icon)>($r2, $r3, r4, 2, 3, null);	if $i0 != 0 goto return;	return
;block_num 6