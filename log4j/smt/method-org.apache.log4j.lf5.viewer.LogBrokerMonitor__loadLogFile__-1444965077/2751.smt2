(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3000 0)
(declare-sort var3081 0)
(declare-sort var552 0)
(declare-sort var3005 0)
(declare-sort var2717 0)
(declare-sort var738 0)
(declare-sort var1340 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var552-init () var552)
(declare-fun openStream/913863501 (var3081) var3005)
(declare-fun var738-init () var738)
(declare-fun getBaseFrame/-1267267168 (var3000) var1340)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getFile/10099890 (var3081) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/830736536 (var738 var1340 String) void)
(declare-const null-var3000 var3000)
(declare-const null-var3081 var3081)
(declare-const null-var2717 var2717)
(declare-const var2526 var3000) ; Statement: r3 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var2526 null-var3000)))
(declare-const var1950 var3081) ; Statement: r1 := @parameter0: java.net.URL 
(assert (not (= var1950 null-var3081)))
(define-const var588 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var504 var552 var552-init) ; Statement: $r0 = new org.apache.log4j.lf5.util.LogFileParser 
(assert true) ; Non Conditional
(assert true)
(define-const var749 var3005 (openStream/913863501 var1950)) ; Statement: $r2 = virtualinvoke r1.<java.net.URL: java.io.InputStream openStream()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1722 var2717) ; Statement: $r4 := @caughtexception 
(assert (not (= var1722 null-var2717)))
(define-const var3890 var738 var738-init) ; Statement: $r5 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog 
(assert true)
(define-const var3850 var1340 (getBaseFrame/-1267267168 var2526)) ; Statement: $r11 = virtualinvoke r3.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>() 
(define-const var591 String String-init) ; Statement: $r6 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var591)) ; Statement: specialinvoke $r6.<java.lang.StringBuffer: void <init>()>() 

(declare-const var591!1 String)
(assert true)
(define-const var1312 String (append/1560614132 var591!1 "Error reading URL:")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Error reading URL:") 
(declare-const var591!2 String)
(assert (str.prefixof var591!1 var591!2))
(assert true)
(define-const var154 String (getFile/10099890 var1950)) ; Statement: $r7 = virtualinvoke r1.<java.net.URL: java.lang.String getFile()>() 
(assert true)
(define-const var3618 String (append/1560614132 var1312 var154)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7) 
(declare-const var1312!1 String)
(assert (str.prefixof var1312 var1312!1))
(assert true)
(define-const var3384 String (toString/-222306083 var3618)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/830736536 var3890 var3850 var3384)) ; Statement: specialinvoke $r5.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r11, $r10) 

(declare-const var3890!1 var738)
(declare-const var3850!1 var1340)
(declare-const var3384!1 String)
(assert true) ; Non Conditional
 ; Statement: return z0 
(check-sat)
(get-model)
(get-unsat-core)
; {var552-init=([], org.apache.log4j.lf5.util.LogFileParser), openStream/913863501=([java.net.URL], java.io.InputStream), var738-init=([], org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog), getBaseFrame/-1267267168=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JFrame), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getFile/10099890=([java.net.URL], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/830736536=([org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, javax.swing.JFrame, java.lang.String], void)}
; {var3000=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var2526=r3, var3081=java.net.URL, var1950=r1, var588=z0, var552=org.apache.log4j.lf5.util.LogFileParser, var504=$r0, var3005=java.io.InputStream, var749=$r2, var2717=java.io.IOException, var1722=$r4, var738=org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, var3890=$r5, var1340=javax.swing.JFrame, var3850=$r11, var591=$r6, var1312=$r8, var154=$r7, var3618=$r9, var3384=$r10}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var3000, r3=var2526, java.net.URL=var3081, r1=var1950, z0=var588, org.apache.log4j.lf5.util.LogFileParser=var552, $r0=var504, java.io.InputStream=var3005, $r2=var749, java.io.IOException=var2717, $r4=var1722, org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog=var738, $r5=var3890, javax.swing.JFrame=var1340, $r11=var3850, $r6=var591, $r8=var1312, $r7=var154, $r9=var3618, $r10=var3384}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	r1 := @parameter0: java.net.URL;	z0 = 0;	$r0 = new org.apache.log4j.lf5.util.LogFileParser;	$r2 = virtualinvoke r1.<java.net.URL: java.io.InputStream openStream()>();	$r4 := @caughtexception;	$r5 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog;	$r11 = virtualinvoke r3.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>();	$r6 = new java.lang.StringBuffer;	specialinvoke $r6.<java.lang.StringBuffer: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Error reading URL:");	$r7 = virtualinvoke r1.<java.net.URL: java.lang.String getFile()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r5.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r11, $r10);	return z0
;block_num 4