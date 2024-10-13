(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var165 0)
(declare-sort var3321 0)
(declare-sort var3885 0)
(declare-sort var2341 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _logMonitorFrame/-1291859940 (var165) var3885)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun setTitle/-1722415661 (var2341 String) void)
(declare-fun cast-from-var3885-to-var2341 (var3885) var2341)
(declare-const null-var165 var165)
(declare-const null-String String)
(declare-const var228 var165) ; Statement: r0 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var228 null-var165)))
(declare-const var3499 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3499 null-String)))
(define-const var1193 var3885 (_logMonitorFrame/-1291859940 var228)) ; Statement: $r2 = r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame _logMonitorFrame> 
(define-const var3892 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3892)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3892!1 String)
(assert true)
(define-const var1420 String (append/1560614132 var3892!1 var3499)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var3892!2 String)
(assert (str.prefixof var3892!1 var3892!2))
(assert true)
(define-const var241 String (append/1560614132 var1420 " - LogFactor5")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" - LogFactor5") 
(declare-const var1420!1 String)
(assert (str.prefixof var1420 var1420!1))
(assert true)
(define-const var1577 String (toString/-222306083 var241)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (setTitle/-1722415661 (cast-from-var3885-to-var2341 var1193) var1577)) ; Statement: virtualinvoke $r2.<javax.swing.JFrame: void setTitle(java.lang.String)>($r6) 

(declare-const var1193!1 var3885)
(declare-const var1577!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {_logMonitorFrame/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JFrame), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), setTitle/-1722415661=([java.awt.Frame, java.lang.String], void), cast-from-var3885-to-var2341=([javax.swing.JFrame], java.awt.Frame)}
; {var165=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var228=r0, var3499=r3, var3321=null_type, var3885=javax.swing.JFrame, var1193=$r2, var3892=$r1, var1420=$r4, var241=$r5, var1577=$r6, var2341=java.awt.Frame}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var165, r0=var228, r3=var3499, null_type=var3321, javax.swing.JFrame=var3885, $r2=var1193, $r1=var3892, $r4=var1420, $r5=var241, $r6=var1577, java.awt.Frame=var2341}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	r3 := @parameter0: java.lang.String;	$r2 = r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame _logMonitorFrame>;	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" - LogFactor5");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r2.<javax.swing.JFrame: void setTitle(java.lang.String)>($r6);	return
;block_num 1