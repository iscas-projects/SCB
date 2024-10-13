(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3984 0)
(declare-sort var2185 0)
(declare-sort var1670 0)
(declare-sort var408 0)
(declare-sort var1295 0)
(declare-sort var2016 0)
(declare-sort var1528 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2185-init () var2185)
(declare-fun getBaseFrame/-1267267168 (var3984) var1670)
(declare-fun <init>/-1245151803 (var2185 var1670 String String) void)
(declare-fun getText/1677759578 (var2185) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1295-init () var1295)
(declare-fun var1528-init () var1528)
(declare-fun <init>/830736536 (var1528 var1670 String) void)
(declare-const null-var3984 var3984)
(declare-const null-String String)
(declare-const null-var2016 var2016)
(declare-const var2775 var3984) ; Statement: r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var2775 null-var3984)))
(define-const var3937 var2185 var2185-init) ; Statement: $r12 = new org.apache.log4j.lf5.viewer.LogFactor5InputDialog 
(assert true)
(define-const var1910 var1670 (getBaseFrame/-1267267168 var2775)) ; Statement: $r2 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>() 
(assert true)
;(assert (<init>/-1245151803 var3937 var1910 "Open URL" "URL:")) ; Statement: specialinvoke $r12.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: void <init>(javax.swing.JFrame,java.lang.String,java.lang.String)>($r2, "Open URL", "URL:") 

(declare-const var3937!1 var2185)
(declare-const var1910!1 var1670)
(declare-const var2920 String)
(declare-const var3695 String)
(assert true)
(define-const var2341 String (getText/1677759578 var3937!1)) ; Statement: r11 = virtualinvoke $r12.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: java.lang.String getText()>() 
 ; Statement: if r11 == null goto return 
(assert (not (= var2341 null-String))) ; Negate: Cond: r11 == null  
(assert true)
(define-const var3461 Int (indexOf/-1209756239 var2341 "://")) ; Statement: $i0 = virtualinvoke r11.<java.lang.String: int indexOf(java.lang.String)>("://") 
(define-const var2085 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if $i0 != $i2 goto $r14 = new java.net.URL 
(assert (not (not (= var3461 var2085)))) ; Negate: Cond: $i0 != $i2  
(define-const var1624 String String-init) ; Statement: $r13 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1624)) ; Statement: specialinvoke $r13.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1624!1 String)
(assert true)
(define-const var605 String (append/1560614132 var1624!1 "http://")) ; Statement: $r6 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("http://") 
(declare-const var1624!2 String)
(assert (str.prefixof var1624!1 var1624!2))
(assert true)
(define-const var118 String (append/1560614132 var605 var2341)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r11) 
(declare-const var605!1 String)
(assert (str.prefixof var605 var605!1))
(assert true)
(define-const var2341!1 String (toString/-222306083 var118)) ; Statement: r11 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var780 var1295 var1295-init) ; Statement: $r14 = new java.net.URL 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var722 var2016) ; Statement: $r8 := @caughtexception 
(assert (not (= var722 null-var2016)))
(define-const var3632 var1528 var1528-init) ; Statement: $r15 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog 
(assert true)
(define-const var3469 var1670 (getBaseFrame/-1267267168 var2775)) ; Statement: $r10 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>() 
(assert true)
;(assert (<init>/830736536 var3632 var3469 "Error reading URL.")) ; Statement: specialinvoke $r15.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r10, "Error reading URL.") 

(declare-const var3632!1 var1528)
(declare-const var3469!1 var1670)
(declare-const var224 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2185-init=([], org.apache.log4j.lf5.viewer.LogFactor5InputDialog), getBaseFrame/-1267267168=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JFrame), <init>/-1245151803=([org.apache.log4j.lf5.viewer.LogFactor5InputDialog, javax.swing.JFrame, java.lang.String, java.lang.String], void), getText/1677759578=([org.apache.log4j.lf5.viewer.LogFactor5InputDialog], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1295-init=([], java.net.URL), var1528-init=([], org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog), <init>/830736536=([org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, javax.swing.JFrame, java.lang.String], void)}
; {var3984=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var2775=r1, var2185=org.apache.log4j.lf5.viewer.LogFactor5InputDialog, var3937=$r12, var1670=javax.swing.JFrame, var1910=$r2, var2920="Open URL", var3695="URL:", var2341=r11, var408=null_type, var3461=$i0, var2085=$i2, var1624=$r13, var605=$r6, var118=$r7, var1295=java.net.URL, var780=$r14, var2016=java.net.MalformedURLException, var722=$r8, var1528=org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, var3632=$r15, var3469=$r10, var224="Error reading URL."}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var3984, r1=var2775, org.apache.log4j.lf5.viewer.LogFactor5InputDialog=var2185, $r12=var3937, javax.swing.JFrame=var1670, $r2=var1910, "Open URL"=var2920, "URL:"=var3695, r11=var2341, null_type=var408, $i0=var3461, $i2=var2085, $r13=var1624, $r6=var605, $r7=var118, java.net.URL=var1295, $r14=var780, java.net.MalformedURLException=var2016, $r8=var722, org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog=var1528, $r15=var3632, $r10=var3469, "Error reading URL."=var224}
;seq <java.lang.String: int indexOf(java.lang.String)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	$r12 = new org.apache.log4j.lf5.viewer.LogFactor5InputDialog;	$r2 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>();	specialinvoke $r12.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: void <init>(javax.swing.JFrame,java.lang.String,java.lang.String)>($r2, "Open URL", "URL:");	r11 = virtualinvoke $r12.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: java.lang.String getText()>();	if r11 == null goto return;	$i0 = virtualinvoke r11.<java.lang.String: int indexOf(java.lang.String)>("://");	$i2 = (int) -1;	if $i0 != $i2 goto $r14 = new java.net.URL;	$r13 = new java.lang.StringBuffer;	specialinvoke $r13.<java.lang.StringBuffer: void <init>()>();	$r6 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("http://");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r11);	r11 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	$r14 = new java.net.URL;	$r8 := @caughtexception;	$r15 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog;	$r10 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>();	specialinvoke $r15.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r10, "Error reading URL.");	return
;block_num 6