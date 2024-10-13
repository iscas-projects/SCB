(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3950 0)
(declare-sort var1375 0)
(declare-sort var2228 0)
(declare-sort var2680 0)
(declare-sort var3598 0)
(declare-sort var2741 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun _callSystemExitOnClose/-1291859940 (var3950) Bool)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun _logMonitorFrame/-1291859940 (var3950) var1375)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2228_showConfirmDialog/676369074 (var2680 var3598 String Int Int var2741) Int)
(declare-fun cast-from-var1375-to-var2680 (var1375) var2680)
(declare-fun cast-from-String-to-var3598 (String) var3598)
(declare-fun dispose/376304556 (var3950) void)
(declare-const null-var3950 var3950)
(declare-const null-var2741 var2741)
(declare-const var1745 var3950) ; Statement: r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var1745 null-var3950)))
(define-const var3002 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3002)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3002!1 String)
(define-const var3642 Bool (_callSystemExitOnClose/-1291859940 var1745)) ; Statement: $z0 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _callSystemExitOnClose> 
 ; Statement: if $z0 != 0 goto virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Are you sure you want to exit?\n") 
(assert (not (not (= (ite var3642 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
;(assert (append/1560614132 var3002!1 "Are you sure you want to close the logging ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Are you sure you want to close the logging ") 
(declare-const var3002!2 String)
(assert (str.prefixof var3002!1 var3002!2))
(assert true)
;(assert (append/1560614132 var3002!2 "console?\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("console?\n") 
(declare-const var3002!3 String)
(assert (str.prefixof var3002!2 var3002!3))
(assert true)
;(assert (append/1560614132 var3002!3 "(Note: This will not shut down the Virtual Machine,\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("(Note: This will not shut down the Virtual Machine,\n") 
(declare-const var3002!4 String)
(assert (str.prefixof var3002!3 var3002!4))
(assert true)
;(assert (append/1560614132 var3002!4 "or the Swing event thread.)")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("or the Swing event thread.)") 
(declare-const var3002!5 String)
(assert (str.prefixof var3002!4 var3002!5))
 ; Statement: goto [?= r4 = "Are you sure you want to dispose of the Logging Console?"] 
(assert true) ; Non Conditional
(define-const var1530 String "Are you sure you want to dispose of the Logging Console?") ; Statement: r4 = "Are you sure you want to dispose of the Logging Console?" 
(define-const var2043 Bool (_callSystemExitOnClose/-1291859940 var1745)) ; Statement: $z1 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _callSystemExitOnClose> 
 ; Statement: if $z1 != 1 goto $r2 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame _logMonitorFrame> 
(assert (not (= (ite var2043 1 0) 1))) ; Cond: $z1 != 1 
(define-const var189 var1375 (_logMonitorFrame/-1291859940 var1745)) ; Statement: $r2 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame _logMonitorFrame> 
(assert true)
(define-const var1759 String (toString/-222306083 var3002!5)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var2624 Int (var2228_showConfirmDialog/676369074 (cast-from-var1375-to-var2680 var189) (cast-from-String-to-var3598 var1759) var1530 2 3 null-var2741)) ; Statement: $i0 = staticinvoke <javax.swing.JOptionPane: int showConfirmDialog(java.awt.Component,java.lang.Object,java.lang.String,int,int,javax.swing.Icon)>($r2, $r3, r4, 2, 3, null) 
 ; Statement: if $i0 != 0 goto return 
(assert (not (not (= var2624 0)))) ; Negate: Cond: $i0 != 0  
(assert true)
;(assert (dispose/376304556 var1745)) ; Statement: virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: void dispose()>() 

(declare-const var1745!1 var3950)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), _callSystemExitOnClose/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], boolean), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), _logMonitorFrame/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JFrame), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2228_showConfirmDialog/676369074=([java.awt.Component, java.lang.Object, java.lang.String, int, int, javax.swing.Icon], int), cast-from-var1375-to-var2680=([javax.swing.JFrame], java.awt.Component), cast-from-String-to-var3598=([java.lang.String], java.lang.Object), dispose/376304556=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], void)}
; {var3950=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var1745=r1, var3002=$r0, var3642=$z0, var1530=r4, var2043=$z1, var1375=javax.swing.JFrame, var189=$r2, var1759=$r3, var2228=javax.swing.JOptionPane, var2680=java.awt.Component, var3598=java.lang.Object, var2741=javax.swing.Icon, var2624=$i0}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var3950, r1=var1745, $r0=var3002, $z0=var3642, r4=var1530, $z1=var2043, javax.swing.JFrame=var1375, $r2=var189, $r3=var1759, javax.swing.JOptionPane=var2228, java.awt.Component=var2680, java.lang.Object=var3598, javax.swing.Icon=var2741, $i0=var2624}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$z0 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _callSystemExitOnClose>;	if $z0 != 0 goto virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Are you sure you want to exit?\n");	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Are you sure you want to close the logging ");	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("console?\n");	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("(Note: This will not shut down the Virtual Machine,\n");	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("or the Swing event thread.)");	goto [?= r4 = "Are you sure you want to dispose of the Logging Console?"];	r4 = "Are you sure you want to dispose of the Logging Console?";	$z1 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _callSystemExitOnClose>;	if $z1 != 1 goto $r2 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame _logMonitorFrame>;	$r2 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame _logMonitorFrame>;	$r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	$i0 = staticinvoke <javax.swing.JOptionPane: int showConfirmDialog(java.awt.Component,java.lang.Object,java.lang.String,int,int,javax.swing.Icon)>($r2, $r3, r4, 2, 3, null);	if $i0 != 0 goto return;	virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: void dispose()>();	return
;block_num 6