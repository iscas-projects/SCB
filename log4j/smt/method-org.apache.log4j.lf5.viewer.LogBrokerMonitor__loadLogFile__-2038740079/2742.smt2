(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3154 0)
(declare-sort var3055 0)
(declare-sort var2230 0)
(declare-sort var1247 0)
(declare-sort var2083 0)
(declare-sort var1639 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2230-init () var2230)
(declare-fun <init>/-443093615 (var2230 var3055) void)
(declare-fun var2083-init () var2083)
(declare-fun getBaseFrame/-1267267168 (var3154) var1639)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1128186653 (var3055) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/830736536 (var2083 var1639 String) void)
(declare-const null-var3154 var3154)
(declare-const null-var3055 var3055)
(declare-const null-var1247 var1247)
(declare-const var1395 var3154) ; Statement: r2 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var1395 null-var3154)))
(declare-const var1603 var3055) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var1603 null-var3055)))
(define-const var1318 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var146 var2230 var2230-init) ; Statement: $r0 = new org.apache.log4j.lf5.util.LogFileParser 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-443093615 var146 var1603)) ; Statement: specialinvoke $r0.<org.apache.log4j.lf5.util.LogFileParser: void <init>(java.io.File)>(r1) 

(declare-const var146!1 var2230)
(declare-const var1603!1 var3055)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1760 var1247) ; Statement: $r3 := @caughtexception 
(assert (not (= var1760 null-var1247)))
(define-const var1913 var2083 var2083-init) ; Statement: $r4 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog 
(assert true)
(define-const var1532 var1639 (getBaseFrame/-1267267168 var1395)) ; Statement: $r10 = virtualinvoke r2.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>() 
(define-const var1770 String String-init) ; Statement: $r5 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1770)) ; Statement: specialinvoke $r5.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1770!1 String)
(assert true)
(define-const var1373 String (append/1560614132 var1770!1 "Error reading ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Error reading ") 
(declare-const var1770!2 String)
(assert (str.prefixof var1770!1 var1770!2))
(assert true)
(define-const var97 String (getName/1128186653 var1603!1)) ; Statement: $r6 = virtualinvoke r1.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var317 String (append/1560614132 var1373 var97)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6) 
(declare-const var1373!1 String)
(assert (str.prefixof var1373 var1373!1))
(assert true)
(define-const var1164 String (toString/-222306083 var317)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/830736536 var1913 var1532 var1164)) ; Statement: specialinvoke $r4.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r10, $r9) 

(declare-const var1913!1 var2083)
(declare-const var1532!1 var1639)
(declare-const var1164!1 String)
(assert true) ; Non Conditional
 ; Statement: return z0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2230-init=([], org.apache.log4j.lf5.util.LogFileParser), <init>/-443093615=([org.apache.log4j.lf5.util.LogFileParser, java.io.File], void), var2083-init=([], org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog), getBaseFrame/-1267267168=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JFrame), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getName/1128186653=([java.io.File], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/830736536=([org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, javax.swing.JFrame, java.lang.String], void)}
; {var3154=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var1395=r2, var3055=java.io.File, var1603=r1, var1318=z0, var2230=org.apache.log4j.lf5.util.LogFileParser, var146=$r0, var1247=java.io.IOException, var1760=$r3, var2083=org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, var1913=$r4, var1639=javax.swing.JFrame, var1532=$r10, var1770=$r5, var1373=$r7, var97=$r6, var317=$r8, var1164=$r9}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var3154, r2=var1395, java.io.File=var3055, r1=var1603, z0=var1318, org.apache.log4j.lf5.util.LogFileParser=var2230, $r0=var146, java.io.IOException=var1247, $r3=var1760, org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog=var2083, $r4=var1913, javax.swing.JFrame=var1639, $r10=var1532, $r5=var1770, $r7=var1373, $r6=var97, $r8=var317, $r9=var1164}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	r1 := @parameter0: java.io.File;	z0 = 0;	$r0 = new org.apache.log4j.lf5.util.LogFileParser;	specialinvoke $r0.<org.apache.log4j.lf5.util.LogFileParser: void <init>(java.io.File)>(r1);	$r3 := @caughtexception;	$r4 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog;	$r10 = virtualinvoke r2.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>();	$r5 = new java.lang.StringBuffer;	specialinvoke $r5.<java.lang.StringBuffer: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Error reading ");	$r6 = virtualinvoke r1.<java.io.File: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r4.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r10, $r9);	return z0
;block_num 4