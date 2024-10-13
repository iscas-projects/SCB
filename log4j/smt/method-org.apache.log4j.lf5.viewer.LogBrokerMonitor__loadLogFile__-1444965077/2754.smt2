(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1643 0)
(declare-sort var1379 0)
(declare-sort var1896 0)
(declare-sort var3849 0)
(declare-sort var2249 0)
(declare-sort var1686 0)
(declare-sort var3881 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1896-init () var1896)
(declare-fun openStream/913863501 (var1379) var3849)
(declare-fun <init>/1393002687 (var1896 var3849) void)
(declare-fun parse/1978443864 (var1896 var1643) void)
(declare-fun var1686-init () var1686)
(declare-fun getBaseFrame/-1267267168 (var1643) var3881)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getFile/10099890 (var1379) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/830736536 (var1686 var3881 String) void)
(declare-const null-var1643 var1643)
(declare-const null-var1379 var1379)
(declare-const null-var2249 var2249)
(declare-const var28 var1643) ; Statement: r3 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var28 null-var1643)))
(declare-const var2930 var1379) ; Statement: r1 := @parameter0: java.net.URL 
(assert (not (= var2930 null-var1379)))
(define-const var1501 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var3106 var1896 var1896-init) ; Statement: $r0 = new org.apache.log4j.lf5.util.LogFileParser 
(assert true) ; Non Conditional
(assert true)
(define-const var1988 var3849 (openStream/913863501 var2930)) ; Statement: $r2 = virtualinvoke r1.<java.net.URL: java.io.InputStream openStream()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/1393002687 var3106 var1988)) ; Statement: specialinvoke $r0.<org.apache.log4j.lf5.util.LogFileParser: void <init>(java.io.InputStream)>($r2) 

(declare-const var3106!1 var1896)
(declare-const var1988!1 var3849)
(assert true) ; Non Conditional
(assert true)
;(assert (parse/1978443864 var3106!1 var28)) ; Statement: virtualinvoke $r0.<org.apache.log4j.lf5.util.LogFileParser: void parse(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r3) 

(declare-const var3106!2 var1896)
(declare-const var28!1 var1643)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3060 var2249) ; Statement: $r4 := @caughtexception 
(assert (not (= var3060 null-var2249)))
(define-const var1073 var1686 var1686-init) ; Statement: $r5 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog 
(assert true)
(define-const var1069 var3881 (getBaseFrame/-1267267168 var28!1)) ; Statement: $r11 = virtualinvoke r3.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>() 
(define-const var2182 String String-init) ; Statement: $r6 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2182)) ; Statement: specialinvoke $r6.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2182!1 String)
(assert true)
(define-const var2736 String (append/1560614132 var2182!1 "Error reading URL:")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Error reading URL:") 
(declare-const var2182!2 String)
(assert (str.prefixof var2182!1 var2182!2))
(assert true)
(define-const var3265 String (getFile/10099890 var2930)) ; Statement: $r7 = virtualinvoke r1.<java.net.URL: java.lang.String getFile()>() 
(assert true)
(define-const var1220 String (append/1560614132 var2736 var3265)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7) 
(declare-const var2736!1 String)
(assert (str.prefixof var2736 var2736!1))
(assert true)
(define-const var2689 String (toString/-222306083 var1220)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/830736536 var1073 var1069 var2689)) ; Statement: specialinvoke $r5.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r11, $r10) 

(declare-const var1073!1 var1686)
(declare-const var1069!1 var3881)
(declare-const var2689!1 String)
(assert true) ; Non Conditional
 ; Statement: return z0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1896-init=([], org.apache.log4j.lf5.util.LogFileParser), openStream/913863501=([java.net.URL], java.io.InputStream), <init>/1393002687=([org.apache.log4j.lf5.util.LogFileParser, java.io.InputStream], void), parse/1978443864=([org.apache.log4j.lf5.util.LogFileParser, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), var1686-init=([], org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog), getBaseFrame/-1267267168=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JFrame), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getFile/10099890=([java.net.URL], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/830736536=([org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, javax.swing.JFrame, java.lang.String], void)}
; {var1643=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var28=r3, var1379=java.net.URL, var2930=r1, var1501=z0, var1896=org.apache.log4j.lf5.util.LogFileParser, var3106=$r0, var3849=java.io.InputStream, var1988=$r2, var2249=java.io.IOException, var3060=$r4, var1686=org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, var1073=$r5, var3881=javax.swing.JFrame, var1069=$r11, var2182=$r6, var2736=$r8, var3265=$r7, var1220=$r9, var2689=$r10}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var1643, r3=var28, java.net.URL=var1379, r1=var2930, z0=var1501, org.apache.log4j.lf5.util.LogFileParser=var1896, $r0=var3106, java.io.InputStream=var3849, $r2=var1988, java.io.IOException=var2249, $r4=var3060, org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog=var1686, $r5=var1073, javax.swing.JFrame=var3881, $r11=var1069, $r6=var2182, $r8=var2736, $r7=var3265, $r9=var1220, $r10=var2689}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	r1 := @parameter0: java.net.URL;	z0 = 0;	$r0 = new org.apache.log4j.lf5.util.LogFileParser;	$r2 = virtualinvoke r1.<java.net.URL: java.io.InputStream openStream()>();	specialinvoke $r0.<org.apache.log4j.lf5.util.LogFileParser: void <init>(java.io.InputStream)>($r2);	virtualinvoke $r0.<org.apache.log4j.lf5.util.LogFileParser: void parse(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r3);	$r4 := @caughtexception;	$r5 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog;	$r11 = virtualinvoke r3.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>();	$r6 = new java.lang.StringBuffer;	specialinvoke $r6.<java.lang.StringBuffer: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Error reading URL:");	$r7 = virtualinvoke r1.<java.net.URL: java.lang.String getFile()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r5.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r11, $r10);	return z0
;block_num 6