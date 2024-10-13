(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var105 0)
(declare-sort var159 0)
(declare-sort var2659 0)
(declare-sort var2145 0)
(declare-sort var140 0)
(declare-sort var2742 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2659-init () var2659)
(declare-fun var140-init () var140)
(declare-fun getBaseFrame/-1267267168 (var105) var2742)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getFile/10099890 (var159) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/830736536 (var140 var2742 String) void)
(declare-const null-var105 var105)
(declare-const null-var159 var159)
(declare-const null-var2145 var2145)
(declare-const var1545 var105) ; Statement: r3 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var1545 null-var105)))
(declare-const var2242 var159) ; Statement: r1 := @parameter0: java.net.URL 
(assert (not (= var2242 null-var159)))
(define-const var494 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var545 var2659 var2659-init) ; Statement: $r0 = new org.apache.log4j.lf5.util.LogFileParser 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2020 var2145) ; Statement: $r4 := @caughtexception 
(assert (not (= var2020 null-var2145)))
(define-const var2493 var140 var140-init) ; Statement: $r5 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog 
(assert true)
(define-const var1574 var2742 (getBaseFrame/-1267267168 var1545)) ; Statement: $r11 = virtualinvoke r3.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>() 
(define-const var3759 String String-init) ; Statement: $r6 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3759)) ; Statement: specialinvoke $r6.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3759!1 String)
(assert true)
(define-const var1217 String (append/1560614132 var3759!1 "Error reading URL:")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Error reading URL:") 
(declare-const var3759!2 String)
(assert (str.prefixof var3759!1 var3759!2))
(assert true)
(define-const var2673 String (getFile/10099890 var2242)) ; Statement: $r7 = virtualinvoke r1.<java.net.URL: java.lang.String getFile()>() 
(assert true)
(define-const var1092 String (append/1560614132 var1217 var2673)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7) 
(declare-const var1217!1 String)
(assert (str.prefixof var1217 var1217!1))
(assert true)
(define-const var1896 String (toString/-222306083 var1092)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/830736536 var2493 var1574 var1896)) ; Statement: specialinvoke $r5.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r11, $r10) 

(declare-const var2493!1 var140)
(declare-const var1574!1 var2742)
(declare-const var1896!1 String)
(assert true) ; Non Conditional
 ; Statement: return z0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2659-init=([], org.apache.log4j.lf5.util.LogFileParser), var140-init=([], org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog), getBaseFrame/-1267267168=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JFrame), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getFile/10099890=([java.net.URL], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/830736536=([org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, javax.swing.JFrame, java.lang.String], void)}
; {var105=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var1545=r3, var159=java.net.URL, var2242=r1, var494=z0, var2659=org.apache.log4j.lf5.util.LogFileParser, var545=$r0, var2145=java.io.IOException, var2020=$r4, var140=org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, var2493=$r5, var2742=javax.swing.JFrame, var1574=$r11, var3759=$r6, var1217=$r8, var2673=$r7, var1092=$r9, var1896=$r10}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var105, r3=var1545, java.net.URL=var159, r1=var2242, z0=var494, org.apache.log4j.lf5.util.LogFileParser=var2659, $r0=var545, java.io.IOException=var2145, $r4=var2020, org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog=var140, $r5=var2493, javax.swing.JFrame=var2742, $r11=var1574, $r6=var3759, $r8=var1217, $r7=var2673, $r9=var1092, $r10=var1896}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	r1 := @parameter0: java.net.URL;	z0 = 0;	$r0 = new org.apache.log4j.lf5.util.LogFileParser;	$r4 := @caughtexception;	$r5 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog;	$r11 = virtualinvoke r3.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>();	$r6 = new java.lang.StringBuffer;	specialinvoke $r6.<java.lang.StringBuffer: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Error reading URL:");	$r7 = virtualinvoke r1.<java.net.URL: java.lang.String getFile()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r5.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r11, $r10);	return z0
;block_num 3