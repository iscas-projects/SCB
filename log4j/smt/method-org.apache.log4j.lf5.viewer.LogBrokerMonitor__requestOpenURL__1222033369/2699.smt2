(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var809 0)
(declare-sort var3453 0)
(declare-sort var469 0)
(declare-sort var2116 0)
(declare-sort var3773 0)
(declare-sort var2304 0)
(declare-sort var3565 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3453-init () var3453)
(declare-fun getBaseFrame/-1267267168 (var809) var469)
(declare-fun <init>/-1245151803 (var3453 var469 String String) void)
(declare-fun getText/1677759578 (var3453) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3773-init () var3773)
(declare-fun <init>/-1387535912 (var3773 String) void)
(declare-fun loadLogFile/-1444965077 (var809 var3773) Bool)
(declare-fun var3565-init () var3565)
(declare-fun <init>/830736536 (var3565 var469 String) void)
(declare-const null-var809 var809)
(declare-const null-String String)
(declare-const null-var2304 var2304)
(declare-const var2853 var809) ; Statement: r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var2853 null-var809)))
(define-const var2678 var3453 var3453-init) ; Statement: $r12 = new org.apache.log4j.lf5.viewer.LogFactor5InputDialog 
(assert true)
(define-const var1591 var469 (getBaseFrame/-1267267168 var2853)) ; Statement: $r2 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>() 
(assert true)
;(assert (<init>/-1245151803 var2678 var1591 "Open URL" "URL:")) ; Statement: specialinvoke $r12.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: void <init>(javax.swing.JFrame,java.lang.String,java.lang.String)>($r2, "Open URL", "URL:") 

(declare-const var2678!1 var3453)
(declare-const var1591!1 var469)
(declare-const var3240 String)
(declare-const var763 String)
(assert true)
(define-const var5 String (getText/1677759578 var2678!1)) ; Statement: r11 = virtualinvoke $r12.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: java.lang.String getText()>() 
 ; Statement: if r11 == null goto return 
(assert (not (= var5 null-String))) ; Negate: Cond: r11 == null  
(assert true)
(define-const var185 Int (indexOf/-1209756239 var5 "://")) ; Statement: $i0 = virtualinvoke r11.<java.lang.String: int indexOf(java.lang.String)>("://") 
(define-const var63 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if $i0 != $i2 goto $r14 = new java.net.URL 
(assert (not (= var185 var63))) ; Cond: $i0 != $i2 
(define-const var3094 var3773 var3773-init) ; Statement: $r14 = new java.net.URL 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1387535912 var3094 var5)) ; Statement: specialinvoke $r14.<java.net.URL: void <init>(java.lang.String)>(r11) 

(declare-const var3094!1 var3773)
(declare-const var5!1 String)
(assert true) ; Non Conditional
(assert true)
(define-const var324 Bool (loadLogFile/-1444965077 var2853 var3094!1)) ; Statement: $z0 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean loadLogFile(java.net.URL)>($r14) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3796 var2304) ; Statement: $r8 := @caughtexception 
(assert (not (= var3796 null-var2304)))
(define-const var99 var3565 var3565-init) ; Statement: $r15 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog 
(assert true)
(define-const var127 var469 (getBaseFrame/-1267267168 var2853)) ; Statement: $r10 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>() 
(assert true)
;(assert (<init>/830736536 var99 var127 "Error reading URL.")) ; Statement: specialinvoke $r15.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r10, "Error reading URL.") 

(declare-const var99!1 var3565)
(declare-const var127!1 var469)
(declare-const var3619 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3453-init=([], org.apache.log4j.lf5.viewer.LogFactor5InputDialog), getBaseFrame/-1267267168=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JFrame), <init>/-1245151803=([org.apache.log4j.lf5.viewer.LogFactor5InputDialog, javax.swing.JFrame, java.lang.String, java.lang.String], void), getText/1677759578=([org.apache.log4j.lf5.viewer.LogFactor5InputDialog], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), var3773-init=([], java.net.URL), <init>/-1387535912=([java.net.URL, java.lang.String], void), loadLogFile/-1444965077=([org.apache.log4j.lf5.viewer.LogBrokerMonitor, java.net.URL], boolean), var3565-init=([], org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog), <init>/830736536=([org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, javax.swing.JFrame, java.lang.String], void)}
; {var809=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var2853=r1, var3453=org.apache.log4j.lf5.viewer.LogFactor5InputDialog, var2678=$r12, var469=javax.swing.JFrame, var1591=$r2, var3240="Open URL", var763="URL:", var5=r11, var2116=null_type, var185=$i0, var63=$i2, var3773=java.net.URL, var3094=$r14, var324=$z0, var2304=java.net.MalformedURLException, var3796=$r8, var3565=org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, var99=$r15, var127=$r10, var3619="Error reading URL."}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var809, r1=var2853, org.apache.log4j.lf5.viewer.LogFactor5InputDialog=var3453, $r12=var2678, javax.swing.JFrame=var469, $r2=var1591, "Open URL"=var3240, "URL:"=var763, r11=var5, null_type=var2116, $i0=var185, $i2=var63, java.net.URL=var3773, $r14=var3094, $z0=var324, java.net.MalformedURLException=var2304, $r8=var3796, org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog=var3565, $r15=var99, $r10=var127, "Error reading URL."=var3619}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	$r12 = new org.apache.log4j.lf5.viewer.LogFactor5InputDialog;	$r2 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>();	specialinvoke $r12.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: void <init>(javax.swing.JFrame,java.lang.String,java.lang.String)>($r2, "Open URL", "URL:");	r11 = virtualinvoke $r12.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: java.lang.String getText()>();	if r11 == null goto return;	$i0 = virtualinvoke r11.<java.lang.String: int indexOf(java.lang.String)>("://");	$i2 = (int) -1;	if $i0 != $i2 goto $r14 = new java.net.URL;	$r14 = new java.net.URL;	specialinvoke $r14.<java.net.URL: void <init>(java.lang.String)>(r11);	$z0 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean loadLogFile(java.net.URL)>($r14);	$r8 := @caughtexception;	$r15 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog;	$r10 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>();	specialinvoke $r15.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r10, "Error reading URL.");	return
;block_num 7