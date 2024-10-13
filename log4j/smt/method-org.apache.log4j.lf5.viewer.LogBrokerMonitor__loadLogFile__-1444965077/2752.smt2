(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2505 0)
(declare-sort var1726 0)
(declare-sort var1964 0)
(declare-sort var2931 0)
(declare-sort var1136 0)
(declare-sort var3334 0)
(declare-sort var3466 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1964-init () var1964)
(declare-fun openStream/913863501 (var1726) var2931)
(declare-fun <init>/1393002687 (var1964 var2931) void)
(declare-fun var3334-init () var3334)
(declare-fun getBaseFrame/-1267267168 (var2505) var3466)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getFile/10099890 (var1726) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/830736536 (var3334 var3466 String) void)
(declare-const null-var2505 var2505)
(declare-const null-var1726 var1726)
(declare-const null-var1136 var1136)
(declare-const var1343 var2505) ; Statement: r3 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var1343 null-var2505)))
(declare-const var3846 var1726) ; Statement: r1 := @parameter0: java.net.URL 
(assert (not (= var3846 null-var1726)))
(define-const var810 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var2654 var1964 var1964-init) ; Statement: $r0 = new org.apache.log4j.lf5.util.LogFileParser 
(assert true) ; Non Conditional
(assert true)
(define-const var2871 var2931 (openStream/913863501 var3846)) ; Statement: $r2 = virtualinvoke r1.<java.net.URL: java.io.InputStream openStream()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/1393002687 var2654 var2871)) ; Statement: specialinvoke $r0.<org.apache.log4j.lf5.util.LogFileParser: void <init>(java.io.InputStream)>($r2) 

(declare-const var2654!1 var1964)
(declare-const var2871!1 var2931)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1063 var1136) ; Statement: $r4 := @caughtexception 
(assert (not (= var1063 null-var1136)))
(define-const var1455 var3334 var3334-init) ; Statement: $r5 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog 
(assert true)
(define-const var2135 var3466 (getBaseFrame/-1267267168 var1343)) ; Statement: $r11 = virtualinvoke r3.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>() 
(define-const var2286 String String-init) ; Statement: $r6 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2286)) ; Statement: specialinvoke $r6.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2286!1 String)
(assert true)
(define-const var2567 String (append/1560614132 var2286!1 "Error reading URL:")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Error reading URL:") 
(declare-const var2286!2 String)
(assert (str.prefixof var2286!1 var2286!2))
(assert true)
(define-const var2419 String (getFile/10099890 var3846)) ; Statement: $r7 = virtualinvoke r1.<java.net.URL: java.lang.String getFile()>() 
(assert true)
(define-const var2590 String (append/1560614132 var2567 var2419)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7) 
(declare-const var2567!1 String)
(assert (str.prefixof var2567 var2567!1))
(assert true)
(define-const var478 String (toString/-222306083 var2590)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/830736536 var1455 var2135 var478)) ; Statement: specialinvoke $r5.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r11, $r10) 

(declare-const var1455!1 var3334)
(declare-const var2135!1 var3466)
(declare-const var478!1 String)
(assert true) ; Non Conditional
 ; Statement: return z0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1964-init=([], org.apache.log4j.lf5.util.LogFileParser), openStream/913863501=([java.net.URL], java.io.InputStream), <init>/1393002687=([org.apache.log4j.lf5.util.LogFileParser, java.io.InputStream], void), var3334-init=([], org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog), getBaseFrame/-1267267168=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JFrame), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getFile/10099890=([java.net.URL], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/830736536=([org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, javax.swing.JFrame, java.lang.String], void)}
; {var2505=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var1343=r3, var1726=java.net.URL, var3846=r1, var810=z0, var1964=org.apache.log4j.lf5.util.LogFileParser, var2654=$r0, var2931=java.io.InputStream, var2871=$r2, var1136=java.io.IOException, var1063=$r4, var3334=org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, var1455=$r5, var3466=javax.swing.JFrame, var2135=$r11, var2286=$r6, var2567=$r8, var2419=$r7, var2590=$r9, var478=$r10}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var2505, r3=var1343, java.net.URL=var1726, r1=var3846, z0=var810, org.apache.log4j.lf5.util.LogFileParser=var1964, $r0=var2654, java.io.InputStream=var2931, $r2=var2871, java.io.IOException=var1136, $r4=var1063, org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog=var3334, $r5=var1455, javax.swing.JFrame=var3466, $r11=var2135, $r6=var2286, $r8=var2567, $r7=var2419, $r9=var2590, $r10=var478}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	r1 := @parameter0: java.net.URL;	z0 = 0;	$r0 = new org.apache.log4j.lf5.util.LogFileParser;	$r2 = virtualinvoke r1.<java.net.URL: java.io.InputStream openStream()>();	specialinvoke $r0.<org.apache.log4j.lf5.util.LogFileParser: void <init>(java.io.InputStream)>($r2);	$r4 := @caughtexception;	$r5 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog;	$r11 = virtualinvoke r3.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>();	$r6 = new java.lang.StringBuffer;	specialinvoke $r6.<java.lang.StringBuffer: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Error reading URL:");	$r7 = virtualinvoke r1.<java.net.URL: java.lang.String getFile()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r5.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r11, $r10);	return z0
;block_num 5