(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1041 0)
(declare-sort var2549 0)
(declare-sort var3916 0)
(declare-sort var3539 0)
(declare-sort var1803 0)
(declare-sort var874 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3916-init () var3916)
(declare-fun <init>/-443093615 (var3916 var2549) void)
(declare-fun parse/1978443864 (var3916 var1041) void)
(declare-fun var1803-init () var1803)
(declare-fun getBaseFrame/-1267267168 (var1041) var874)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1128186653 (var2549) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/830736536 (var1803 var874 String) void)
(declare-const null-var1041 var1041)
(declare-const null-var2549 var2549)
(declare-const null-var3539 var3539)
(declare-const var1388 var1041) ; Statement: r2 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var1388 null-var1041)))
(declare-const var3003 var2549) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var3003 null-var2549)))
(define-const var2311 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var2770 var3916 var3916-init) ; Statement: $r0 = new org.apache.log4j.lf5.util.LogFileParser 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-443093615 var2770 var3003)) ; Statement: specialinvoke $r0.<org.apache.log4j.lf5.util.LogFileParser: void <init>(java.io.File)>(r1) 

(declare-const var2770!1 var3916)
(declare-const var3003!1 var2549)
(assert true) ; Non Conditional
(assert true)
;(assert (parse/1978443864 var2770!1 var1388)) ; Statement: virtualinvoke $r0.<org.apache.log4j.lf5.util.LogFileParser: void parse(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r2) 

(declare-const var2770!2 var3916)
(declare-const var1388!1 var1041)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1942 var3539) ; Statement: $r3 := @caughtexception 
(assert (not (= var1942 null-var3539)))
(define-const var329 var1803 var1803-init) ; Statement: $r4 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog 
(assert true)
(define-const var242 var874 (getBaseFrame/-1267267168 var1388!1)) ; Statement: $r10 = virtualinvoke r2.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>() 
(define-const var3107 String String-init) ; Statement: $r5 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3107)) ; Statement: specialinvoke $r5.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3107!1 String)
(assert true)
(define-const var611 String (append/1560614132 var3107!1 "Error reading ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Error reading ") 
(declare-const var3107!2 String)
(assert (str.prefixof var3107!1 var3107!2))
(assert true)
(define-const var1404 String (getName/1128186653 var3003!1)) ; Statement: $r6 = virtualinvoke r1.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var2644 String (append/1560614132 var611 var1404)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6) 
(declare-const var611!1 String)
(assert (str.prefixof var611 var611!1))
(assert true)
(define-const var216 String (toString/-222306083 var2644)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/830736536 var329 var242 var216)) ; Statement: specialinvoke $r4.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r10, $r9) 

(declare-const var329!1 var1803)
(declare-const var242!1 var874)
(declare-const var216!1 String)
(assert true) ; Non Conditional
 ; Statement: return z0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3916-init=([], org.apache.log4j.lf5.util.LogFileParser), <init>/-443093615=([org.apache.log4j.lf5.util.LogFileParser, java.io.File], void), parse/1978443864=([org.apache.log4j.lf5.util.LogFileParser, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), var1803-init=([], org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog), getBaseFrame/-1267267168=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JFrame), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getName/1128186653=([java.io.File], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/830736536=([org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, javax.swing.JFrame, java.lang.String], void)}
; {var1041=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var1388=r2, var2549=java.io.File, var3003=r1, var2311=z0, var3916=org.apache.log4j.lf5.util.LogFileParser, var2770=$r0, var3539=java.io.IOException, var1942=$r3, var1803=org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, var329=$r4, var874=javax.swing.JFrame, var242=$r10, var3107=$r5, var611=$r7, var1404=$r6, var2644=$r8, var216=$r9}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var1041, r2=var1388, java.io.File=var2549, r1=var3003, z0=var2311, org.apache.log4j.lf5.util.LogFileParser=var3916, $r0=var2770, java.io.IOException=var3539, $r3=var1942, org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog=var1803, $r4=var329, javax.swing.JFrame=var874, $r10=var242, $r5=var3107, $r7=var611, $r6=var1404, $r8=var2644, $r9=var216}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	r1 := @parameter0: java.io.File;	z0 = 0;	$r0 = new org.apache.log4j.lf5.util.LogFileParser;	specialinvoke $r0.<org.apache.log4j.lf5.util.LogFileParser: void <init>(java.io.File)>(r1);	virtualinvoke $r0.<org.apache.log4j.lf5.util.LogFileParser: void parse(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r2);	$r3 := @caughtexception;	$r4 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog;	$r10 = virtualinvoke r2.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>();	$r5 = new java.lang.StringBuffer;	specialinvoke $r5.<java.lang.StringBuffer: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Error reading ");	$r6 = virtualinvoke r1.<java.io.File: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r4.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r10, $r9);	return z0
;block_num 5