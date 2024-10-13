(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1436 0)
(declare-sort var3175 0)
(declare-sort var1427 0)
(declare-sort var3384 0)
(declare-sort var2863 0)
(declare-sort var1605 0)
(declare-sort var992 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3175-init () var3175)
(declare-fun getBaseFrame/-1267267168 (var1436) var1427)
(declare-fun <init>/-1245151803 (var3175 var1427 String String) void)
(declare-fun getText/1677759578 (var3175) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2863-init () var2863)
(declare-fun <init>/-1387535912 (var2863 String) void)
(declare-fun var992-init () var992)
(declare-fun <init>/830736536 (var992 var1427 String) void)
(declare-const null-var1436 var1436)
(declare-const null-String String)
(declare-const null-var1605 var1605)
(declare-const var2835 var1436) ; Statement: r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var2835 null-var1436)))
(define-const var3790 var3175 var3175-init) ; Statement: $r12 = new org.apache.log4j.lf5.viewer.LogFactor5InputDialog 
(assert true)
(define-const var2594 var1427 (getBaseFrame/-1267267168 var2835)) ; Statement: $r2 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>() 
(assert true)
;(assert (<init>/-1245151803 var3790 var2594 "Open URL" "URL:")) ; Statement: specialinvoke $r12.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: void <init>(javax.swing.JFrame,java.lang.String,java.lang.String)>($r2, "Open URL", "URL:") 

(declare-const var3790!1 var3175)
(declare-const var2594!1 var1427)
(declare-const var939 String)
(declare-const var2440 String)
(assert true)
(define-const var3234 String (getText/1677759578 var3790!1)) ; Statement: r11 = virtualinvoke $r12.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: java.lang.String getText()>() 
 ; Statement: if r11 == null goto return 
(assert (not (= var3234 null-String))) ; Negate: Cond: r11 == null  
(assert true)
(define-const var442 Int (indexOf/-1209756239 var3234 "://")) ; Statement: $i0 = virtualinvoke r11.<java.lang.String: int indexOf(java.lang.String)>("://") 
(define-const var1920 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if $i0 != $i2 goto $r14 = new java.net.URL 
(assert (not (not (= var442 var1920)))) ; Negate: Cond: $i0 != $i2  
(define-const var3747 String String-init) ; Statement: $r13 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3747)) ; Statement: specialinvoke $r13.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3747!1 String)
(assert true)
(define-const var814 String (append/1560614132 var3747!1 "http://")) ; Statement: $r6 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("http://") 
(declare-const var3747!2 String)
(assert (str.prefixof var3747!1 var3747!2))
(assert true)
(define-const var985 String (append/1560614132 var814 var3234)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r11) 
(declare-const var814!1 String)
(assert (str.prefixof var814 var814!1))
(assert true)
(define-const var3234!1 String (toString/-222306083 var985)) ; Statement: r11 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var3564 var2863 var2863-init) ; Statement: $r14 = new java.net.URL 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1387535912 var3564 var3234!1)) ; Statement: specialinvoke $r14.<java.net.URL: void <init>(java.lang.String)>(r11) 

(declare-const var3564!1 var2863)
(declare-const var3234!2 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2730 var1605) ; Statement: $r8 := @caughtexception 
(assert (not (= var2730 null-var1605)))
(define-const var411 var992 var992-init) ; Statement: $r15 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog 
(assert true)
(define-const var1945 var1427 (getBaseFrame/-1267267168 var2835)) ; Statement: $r10 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>() 
(assert true)
;(assert (<init>/830736536 var411 var1945 "Error reading URL.")) ; Statement: specialinvoke $r15.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r10, "Error reading URL.") 

(declare-const var411!1 var992)
(declare-const var1945!1 var1427)
(declare-const var1998 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3175-init=([], org.apache.log4j.lf5.viewer.LogFactor5InputDialog), getBaseFrame/-1267267168=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JFrame), <init>/-1245151803=([org.apache.log4j.lf5.viewer.LogFactor5InputDialog, javax.swing.JFrame, java.lang.String, java.lang.String], void), getText/1677759578=([org.apache.log4j.lf5.viewer.LogFactor5InputDialog], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2863-init=([], java.net.URL), <init>/-1387535912=([java.net.URL, java.lang.String], void), var992-init=([], org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog), <init>/830736536=([org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, javax.swing.JFrame, java.lang.String], void)}
; {var1436=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var2835=r1, var3175=org.apache.log4j.lf5.viewer.LogFactor5InputDialog, var3790=$r12, var1427=javax.swing.JFrame, var2594=$r2, var939="Open URL", var2440="URL:", var3234=r11, var3384=null_type, var442=$i0, var1920=$i2, var3747=$r13, var814=$r6, var985=$r7, var2863=java.net.URL, var3564=$r14, var1605=java.net.MalformedURLException, var2730=$r8, var992=org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, var411=$r15, var1945=$r10, var1998="Error reading URL."}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var1436, r1=var2835, org.apache.log4j.lf5.viewer.LogFactor5InputDialog=var3175, $r12=var3790, javax.swing.JFrame=var1427, $r2=var2594, "Open URL"=var939, "URL:"=var2440, r11=var3234, null_type=var3384, $i0=var442, $i2=var1920, $r13=var3747, $r6=var814, $r7=var985, java.net.URL=var2863, $r14=var3564, java.net.MalformedURLException=var1605, $r8=var2730, org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog=var992, $r15=var411, $r10=var1945, "Error reading URL."=var1998}
;seq <java.lang.String: int indexOf(java.lang.String)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	$r12 = new org.apache.log4j.lf5.viewer.LogFactor5InputDialog;	$r2 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>();	specialinvoke $r12.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: void <init>(javax.swing.JFrame,java.lang.String,java.lang.String)>($r2, "Open URL", "URL:");	r11 = virtualinvoke $r12.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: java.lang.String getText()>();	if r11 == null goto return;	$i0 = virtualinvoke r11.<java.lang.String: int indexOf(java.lang.String)>("://");	$i2 = (int) -1;	if $i0 != $i2 goto $r14 = new java.net.URL;	$r13 = new java.lang.StringBuffer;	specialinvoke $r13.<java.lang.StringBuffer: void <init>()>();	$r6 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("http://");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r11);	r11 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	$r14 = new java.net.URL;	specialinvoke $r14.<java.net.URL: void <init>(java.lang.String)>(r11);	$r8 := @caughtexception;	$r15 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog;	$r10 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>();	specialinvoke $r15.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r10, "Error reading URL.");	return
;block_num 7