(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3761 0)
(declare-sort var2048 0)
(declare-sort var2529 0)
(declare-sort var1907 0)
(declare-sort var3377 0)
(declare-sort var1331 0)
(declare-sort var2382 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2048-init () var2048)
(declare-fun getBaseFrame/-1267267168 (var3761) var2529)
(declare-fun <init>/-1245151803 (var2048 var2529 String String) void)
(declare-fun getText/1677759578 (var2048) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3377-init () var3377)
(declare-fun var2382-init () var2382)
(declare-fun <init>/830736536 (var2382 var2529 String) void)
(declare-const null-var3761 var3761)
(declare-const null-String String)
(declare-const null-var1331 var1331)
(declare-const var2348 var3761) ; Statement: r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var2348 null-var3761)))
(define-const var3877 var2048 var2048-init) ; Statement: $r12 = new org.apache.log4j.lf5.viewer.LogFactor5InputDialog 
(assert true)
(define-const var3561 var2529 (getBaseFrame/-1267267168 var2348)) ; Statement: $r2 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>() 
(assert true)
;(assert (<init>/-1245151803 var3877 var3561 "Open URL" "URL:")) ; Statement: specialinvoke $r12.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: void <init>(javax.swing.JFrame,java.lang.String,java.lang.String)>($r2, "Open URL", "URL:") 

(declare-const var3877!1 var2048)
(declare-const var3561!1 var2529)
(declare-const var2455 String)
(declare-const var3778 String)
(assert true)
(define-const var1620 String (getText/1677759578 var3877!1)) ; Statement: r11 = virtualinvoke $r12.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: java.lang.String getText()>() 
 ; Statement: if r11 == null goto return 
(assert (not (= var1620 null-String))) ; Negate: Cond: r11 == null  
(assert true)
(define-const var2157 Int (indexOf/-1209756239 var1620 "://")) ; Statement: $i0 = virtualinvoke r11.<java.lang.String: int indexOf(java.lang.String)>("://") 
(define-const var0 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if $i0 != $i2 goto $r14 = new java.net.URL 
(assert (not (= var2157 var0))) ; Cond: $i0 != $i2 
(define-const var935 var3377 var3377-init) ; Statement: $r14 = new java.net.URL 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2780 var1331) ; Statement: $r8 := @caughtexception 
(assert (not (= var2780 null-var1331)))
(define-const var2860 var2382 var2382-init) ; Statement: $r15 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog 
(assert true)
(define-const var2600 var2529 (getBaseFrame/-1267267168 var2348)) ; Statement: $r10 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>() 
(assert true)
;(assert (<init>/830736536 var2860 var2600 "Error reading URL.")) ; Statement: specialinvoke $r15.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r10, "Error reading URL.") 

(declare-const var2860!1 var2382)
(declare-const var2600!1 var2529)
(declare-const var1161 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2048-init=([], org.apache.log4j.lf5.viewer.LogFactor5InputDialog), getBaseFrame/-1267267168=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JFrame), <init>/-1245151803=([org.apache.log4j.lf5.viewer.LogFactor5InputDialog, javax.swing.JFrame, java.lang.String, java.lang.String], void), getText/1677759578=([org.apache.log4j.lf5.viewer.LogFactor5InputDialog], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), var3377-init=([], java.net.URL), var2382-init=([], org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog), <init>/830736536=([org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, javax.swing.JFrame, java.lang.String], void)}
; {var3761=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var2348=r1, var2048=org.apache.log4j.lf5.viewer.LogFactor5InputDialog, var3877=$r12, var2529=javax.swing.JFrame, var3561=$r2, var2455="Open URL", var3778="URL:", var1620=r11, var1907=null_type, var2157=$i0, var0=$i2, var3377=java.net.URL, var935=$r14, var1331=java.net.MalformedURLException, var2780=$r8, var2382=org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, var2860=$r15, var2600=$r10, var1161="Error reading URL."}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var3761, r1=var2348, org.apache.log4j.lf5.viewer.LogFactor5InputDialog=var2048, $r12=var3877, javax.swing.JFrame=var2529, $r2=var3561, "Open URL"=var2455, "URL:"=var3778, r11=var1620, null_type=var1907, $i0=var2157, $i2=var0, java.net.URL=var3377, $r14=var935, java.net.MalformedURLException=var1331, $r8=var2780, org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog=var2382, $r15=var2860, $r10=var2600, "Error reading URL."=var1161}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	$r12 = new org.apache.log4j.lf5.viewer.LogFactor5InputDialog;	$r2 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>();	specialinvoke $r12.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: void <init>(javax.swing.JFrame,java.lang.String,java.lang.String)>($r2, "Open URL", "URL:");	r11 = virtualinvoke $r12.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: java.lang.String getText()>();	if r11 == null goto return;	$i0 = virtualinvoke r11.<java.lang.String: int indexOf(java.lang.String)>("://");	$i2 = (int) -1;	if $i0 != $i2 goto $r14 = new java.net.URL;	$r14 = new java.net.URL;	$r8 := @caughtexception;	$r15 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog;	$r10 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>();	specialinvoke $r15.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r10, "Error reading URL.");	return
;block_num 5