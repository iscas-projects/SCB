(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2176 0)
(declare-sort var104 0)
(declare-sort var2721 0)
(declare-sort var2451 0)
(declare-sort var3598 0)
(declare-sort var2504 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun _callSystemExitOnClose/-1291859940 (var2176) Bool)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun _logMonitorFrame/-1291859940 (var2176) var104)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2721_showConfirmDialog/676369074 (var2451 var3598 String Int Int var2504) Int)
(declare-fun cast-from-var104-to-var2451 (var104) var2451)
(declare-fun cast-from-String-to-var3598 (String) var3598)
(declare-const null-var2176 var2176)
(declare-const null-var2504 var2504)
(declare-const var1240 var2176) ; Statement: r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var1240 null-var2176)))
(define-const var3185 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3185)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3185!1 String)
(define-const var3005 Bool (_callSystemExitOnClose/-1291859940 var1240)) ; Statement: $z0 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _callSystemExitOnClose> 
 ; Statement: if $z0 != 0 goto virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Are you sure you want to exit?\n") 
(assert (not (not (= (ite var3005 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
;(assert (append/1560614132 var3185!1 "Are you sure you want to close the logging ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Are you sure you want to close the logging ") 
(declare-const var3185!2 String)
(assert (str.prefixof var3185!1 var3185!2))
(assert true)
;(assert (append/1560614132 var3185!2 "console?\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("console?\n") 
(declare-const var3185!3 String)
(assert (str.prefixof var3185!2 var3185!3))
(assert true)
;(assert (append/1560614132 var3185!3 "(Note: This will not shut down the Virtual Machine,\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("(Note: This will not shut down the Virtual Machine,\n") 
(declare-const var3185!4 String)
(assert (str.prefixof var3185!3 var3185!4))
(assert true)
;(assert (append/1560614132 var3185!4 "or the Swing event thread.)")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("or the Swing event thread.)") 
(declare-const var3185!5 String)
(assert (str.prefixof var3185!4 var3185!5))
 ; Statement: goto [?= r4 = "Are you sure you want to dispose of the Logging Console?"] 
(assert true) ; Non Conditional
(define-const var690 String "Are you sure you want to dispose of the Logging Console?") ; Statement: r4 = "Are you sure you want to dispose of the Logging Console?" 
(define-const var3582 Bool (_callSystemExitOnClose/-1291859940 var1240)) ; Statement: $z1 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _callSystemExitOnClose> 
 ; Statement: if $z1 != 1 goto $r2 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame _logMonitorFrame> 
(assert (not (= (ite var3582 1 0) 1))) ; Cond: $z1 != 1 
(define-const var1777 var104 (_logMonitorFrame/-1291859940 var1240)) ; Statement: $r2 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame _logMonitorFrame> 
(assert true)
(define-const var1911 String (toString/-222306083 var3185!5)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var3201 Int (var2721_showConfirmDialog/676369074 (cast-from-var104-to-var2451 var1777) (cast-from-String-to-var3598 var1911) var690 2 3 null-var2504)) ; Statement: $i0 = staticinvoke <javax.swing.JOptionPane: int showConfirmDialog(java.awt.Component,java.lang.Object,java.lang.String,int,int,javax.swing.Icon)>($r2, $r3, r4, 2, 3, null) 
 ; Statement: if $i0 != 0 goto return 
(assert (not (= var3201 0))) ; Cond: $i0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), _callSystemExitOnClose/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], boolean), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), _logMonitorFrame/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JFrame), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2721_showConfirmDialog/676369074=([java.awt.Component, java.lang.Object, java.lang.String, int, int, javax.swing.Icon], int), cast-from-var104-to-var2451=([javax.swing.JFrame], java.awt.Component), cast-from-String-to-var3598=([java.lang.String], java.lang.Object)}
; {var2176=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var1240=r1, var3185=$r0, var3005=$z0, var690=r4, var3582=$z1, var104=javax.swing.JFrame, var1777=$r2, var1911=$r3, var2721=javax.swing.JOptionPane, var2451=java.awt.Component, var3598=java.lang.Object, var2504=javax.swing.Icon, var3201=$i0}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var2176, r1=var1240, $r0=var3185, $z0=var3005, r4=var690, $z1=var3582, javax.swing.JFrame=var104, $r2=var1777, $r3=var1911, javax.swing.JOptionPane=var2721, java.awt.Component=var2451, java.lang.Object=var3598, javax.swing.Icon=var2504, $i0=var3201}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$z0 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _callSystemExitOnClose>;	if $z0 != 0 goto virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Are you sure you want to exit?\n");	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Are you sure you want to close the logging ");	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("console?\n");	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("(Note: This will not shut down the Virtual Machine,\n");	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("or the Swing event thread.)");	goto [?= r4 = "Are you sure you want to dispose of the Logging Console?"];	r4 = "Are you sure you want to dispose of the Logging Console?";	$z1 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _callSystemExitOnClose>;	if $z1 != 1 goto $r2 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame _logMonitorFrame>;	$r2 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame _logMonitorFrame>;	$r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	$i0 = staticinvoke <javax.swing.JOptionPane: int showConfirmDialog(java.awt.Component,java.lang.Object,java.lang.String,int,int,javax.swing.Icon)>($r2, $r3, r4, 2, 3, null);	if $i0 != 0 goto return;	return
;block_num 5