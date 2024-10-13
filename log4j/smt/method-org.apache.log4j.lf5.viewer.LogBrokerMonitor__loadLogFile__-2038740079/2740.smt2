(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3481 0)
(declare-sort var3772 0)
(declare-sort var2788 0)
(declare-sort var2317 0)
(declare-sort var3718 0)
(declare-sort var3998 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2788-init () var2788)
(declare-fun var3718-init () var3718)
(declare-fun getBaseFrame/-1267267168 (var3481) var3998)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1128186653 (var3772) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/830736536 (var3718 var3998 String) void)
(declare-const null-var3481 var3481)
(declare-const null-var3772 var3772)
(declare-const null-var2317 var2317)
(declare-const var2393 var3481) ; Statement: r2 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var2393 null-var3481)))
(declare-const var1631 var3772) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var1631 null-var3772)))
(define-const var800 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var1331 var2788 var2788-init) ; Statement: $r0 = new org.apache.log4j.lf5.util.LogFileParser 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3840 var2317) ; Statement: $r3 := @caughtexception 
(assert (not (= var3840 null-var2317)))
(define-const var606 var3718 var3718-init) ; Statement: $r4 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog 
(assert true)
(define-const var3444 var3998 (getBaseFrame/-1267267168 var2393)) ; Statement: $r10 = virtualinvoke r2.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>() 
(define-const var3627 String String-init) ; Statement: $r5 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3627)) ; Statement: specialinvoke $r5.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3627!1 String)
(assert true)
(define-const var2717 String (append/1560614132 var3627!1 "Error reading ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Error reading ") 
(declare-const var3627!2 String)
(assert (str.prefixof var3627!1 var3627!2))
(assert true)
(define-const var1077 String (getName/1128186653 var1631)) ; Statement: $r6 = virtualinvoke r1.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var39 String (append/1560614132 var2717 var1077)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6) 
(declare-const var2717!1 String)
(assert (str.prefixof var2717 var2717!1))
(assert true)
(define-const var3036 String (toString/-222306083 var39)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/830736536 var606 var3444 var3036)) ; Statement: specialinvoke $r4.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r10, $r9) 

(declare-const var606!1 var3718)
(declare-const var3444!1 var3998)
(declare-const var3036!1 String)
(assert true) ; Non Conditional
 ; Statement: return z0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2788-init=([], org.apache.log4j.lf5.util.LogFileParser), var3718-init=([], org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog), getBaseFrame/-1267267168=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JFrame), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getName/1128186653=([java.io.File], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/830736536=([org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, javax.swing.JFrame, java.lang.String], void)}
; {var3481=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var2393=r2, var3772=java.io.File, var1631=r1, var800=z0, var2788=org.apache.log4j.lf5.util.LogFileParser, var1331=$r0, var2317=java.io.IOException, var3840=$r3, var3718=org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, var606=$r4, var3998=javax.swing.JFrame, var3444=$r10, var3627=$r5, var2717=$r7, var1077=$r6, var39=$r8, var3036=$r9}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var3481, r2=var2393, java.io.File=var3772, r1=var1631, z0=var800, org.apache.log4j.lf5.util.LogFileParser=var2788, $r0=var1331, java.io.IOException=var2317, $r3=var3840, org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog=var3718, $r4=var606, javax.swing.JFrame=var3998, $r10=var3444, $r5=var3627, $r7=var2717, $r6=var1077, $r8=var39, $r9=var3036}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	r1 := @parameter0: java.io.File;	z0 = 0;	$r0 = new org.apache.log4j.lf5.util.LogFileParser;	$r3 := @caughtexception;	$r4 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog;	$r10 = virtualinvoke r2.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>();	$r5 = new java.lang.StringBuffer;	specialinvoke $r5.<java.lang.StringBuffer: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Error reading ");	$r6 = virtualinvoke r1.<java.io.File: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r4.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r10, $r9);	return z0
;block_num 3