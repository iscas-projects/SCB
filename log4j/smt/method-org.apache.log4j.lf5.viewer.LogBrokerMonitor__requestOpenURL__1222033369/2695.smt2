(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var529 0)
(declare-sort var856 0)
(declare-sort var191 0)
(declare-sort var72 0)
(declare-sort var205 0)
(declare-sort var907 0)
(declare-sort var1951 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var856-init () var856)
(declare-fun getBaseFrame/-1267267168 (var529) var191)
(declare-fun <init>/-1245151803 (var856 var191 String String) void)
(declare-fun getText/1677759578 (var856) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var205-init () var205)
(declare-fun <init>/-1387535912 (var205 String) void)
(declare-fun var1951-init () var1951)
(declare-fun <init>/830736536 (var1951 var191 String) void)
(declare-const null-var529 var529)
(declare-const null-String String)
(declare-const null-var907 var907)
(declare-const var707 var529) ; Statement: r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var707 null-var529)))
(define-const var3736 var856 var856-init) ; Statement: $r12 = new org.apache.log4j.lf5.viewer.LogFactor5InputDialog 
(assert true)
(define-const var215 var191 (getBaseFrame/-1267267168 var707)) ; Statement: $r2 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>() 
(assert true)
;(assert (<init>/-1245151803 var3736 var215 "Open URL" "URL:")) ; Statement: specialinvoke $r12.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: void <init>(javax.swing.JFrame,java.lang.String,java.lang.String)>($r2, "Open URL", "URL:") 

(declare-const var3736!1 var856)
(declare-const var215!1 var191)
(declare-const var1425 String)
(declare-const var1263 String)
(assert true)
(define-const var3606 String (getText/1677759578 var3736!1)) ; Statement: r11 = virtualinvoke $r12.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: java.lang.String getText()>() 
 ; Statement: if r11 == null goto return 
(assert (not (= var3606 null-String))) ; Negate: Cond: r11 == null  
(assert true)
(define-const var1849 Int (indexOf/-1209756239 var3606 "://")) ; Statement: $i0 = virtualinvoke r11.<java.lang.String: int indexOf(java.lang.String)>("://") 
(define-const var3925 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if $i0 != $i2 goto $r14 = new java.net.URL 
(assert (not (= var1849 var3925))) ; Cond: $i0 != $i2 
(define-const var1728 var205 var205-init) ; Statement: $r14 = new java.net.URL 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1387535912 var1728 var3606)) ; Statement: specialinvoke $r14.<java.net.URL: void <init>(java.lang.String)>(r11) 

(declare-const var1728!1 var205)
(declare-const var3606!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3937 var907) ; Statement: $r8 := @caughtexception 
(assert (not (= var3937 null-var907)))
(define-const var2402 var1951 var1951-init) ; Statement: $r15 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog 
(assert true)
(define-const var1194 var191 (getBaseFrame/-1267267168 var707)) ; Statement: $r10 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>() 
(assert true)
;(assert (<init>/830736536 var2402 var1194 "Error reading URL.")) ; Statement: specialinvoke $r15.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r10, "Error reading URL.") 

(declare-const var2402!1 var1951)
(declare-const var1194!1 var191)
(declare-const var2922 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var856-init=([], org.apache.log4j.lf5.viewer.LogFactor5InputDialog), getBaseFrame/-1267267168=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JFrame), <init>/-1245151803=([org.apache.log4j.lf5.viewer.LogFactor5InputDialog, javax.swing.JFrame, java.lang.String, java.lang.String], void), getText/1677759578=([org.apache.log4j.lf5.viewer.LogFactor5InputDialog], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), var205-init=([], java.net.URL), <init>/-1387535912=([java.net.URL, java.lang.String], void), var1951-init=([], org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog), <init>/830736536=([org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, javax.swing.JFrame, java.lang.String], void)}
; {var529=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var707=r1, var856=org.apache.log4j.lf5.viewer.LogFactor5InputDialog, var3736=$r12, var191=javax.swing.JFrame, var215=$r2, var1425="Open URL", var1263="URL:", var3606=r11, var72=null_type, var1849=$i0, var3925=$i2, var205=java.net.URL, var1728=$r14, var907=java.net.MalformedURLException, var3937=$r8, var1951=org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, var2402=$r15, var1194=$r10, var2922="Error reading URL."}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var529, r1=var707, org.apache.log4j.lf5.viewer.LogFactor5InputDialog=var856, $r12=var3736, javax.swing.JFrame=var191, $r2=var215, "Open URL"=var1425, "URL:"=var1263, r11=var3606, null_type=var72, $i0=var1849, $i2=var3925, java.net.URL=var205, $r14=var1728, java.net.MalformedURLException=var907, $r8=var3937, org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog=var1951, $r15=var2402, $r10=var1194, "Error reading URL."=var2922}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	$r12 = new org.apache.log4j.lf5.viewer.LogFactor5InputDialog;	$r2 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>();	specialinvoke $r12.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: void <init>(javax.swing.JFrame,java.lang.String,java.lang.String)>($r2, "Open URL", "URL:");	r11 = virtualinvoke $r12.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: java.lang.String getText()>();	if r11 == null goto return;	$i0 = virtualinvoke r11.<java.lang.String: int indexOf(java.lang.String)>("://");	$i2 = (int) -1;	if $i0 != $i2 goto $r14 = new java.net.URL;	$r14 = new java.net.URL;	specialinvoke $r14.<java.net.URL: void <init>(java.lang.String)>(r11);	$r8 := @caughtexception;	$r15 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog;	$r10 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>();	specialinvoke $r15.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r10, "Error reading URL.");	return
;block_num 6