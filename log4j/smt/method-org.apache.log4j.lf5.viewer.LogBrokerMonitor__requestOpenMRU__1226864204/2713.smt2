(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3299 0)
(declare-sort var2299 0)
(declare-sort var877 0)
(declare-sort var3397 0)
(declare-sort var1173 0)
(declare-sort var2030 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getActionCommand/1043426425 (var2299) String)
(declare-fun var877-init () var877)
(declare-fun <init>/597479796 (var877 String) void)
(declare-fun nextToken/-418815358 (var877) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun nextToken/508647847 (var877 String) String)
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-fun var1173-init () var1173)
(declare-fun getBaseFrame/-1267267168 (var3299) var2030)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/830736536 (var1173 var2030 String) void)
(declare-const null-var3299 var3299)
(declare-const null-var2299 var2299)
(declare-const null-var3397 var3397)
(declare-const var410 var3299) ; Statement: r4 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var410 null-var3299)))
(declare-const var1816 var2299) ; Statement: r0 := @parameter0: java.awt.event.ActionEvent 
(assert (not (= var1816 null-var2299)))
(assert true)
(define-const var92 String (getActionCommand/1043426425 var1816)) ; Statement: r15 = virtualinvoke r0.<java.awt.event.ActionEvent: java.lang.String getActionCommand()>() 
(define-const var1278 var877 var877-init) ; Statement: $r1 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/597479796 var1278 var92)) ; Statement: specialinvoke $r1.<java.util.StringTokenizer: void <init>(java.lang.String)>(r15) 

(declare-const var1278!1 var877)
(declare-const var92!1 String)
(assert true)
(define-const var962 String (nextToken/-418815358 var1278!1)) ; Statement: $r2 = virtualinvoke $r1.<java.util.StringTokenizer: java.lang.String nextToken()>() 
(assert true)
(define-const var3838 String (trim/-847153721 var962)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var1139 String (nextToken/508647847 var1278!1 "\n")) ; Statement: r16 = virtualinvoke $r1.<java.util.StringTokenizer: java.lang.String nextToken(java.lang.String)>("\n") 
(assert true) ; Non Conditional
(define-const var3484 Int (Int_parseInt/1370970945 var3838)) ; Statement: $i0 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r3) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1859 var3397) ; Statement: $r8 := @caughtexception 
(assert (not (= var1859 null-var3397)))
(define-const var3537 var1173 var1173-init) ; Statement: $r9 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog 
(assert true)
(define-const var650 var2030 (getBaseFrame/-1267267168 var410)) ; Statement: $r14 = virtualinvoke r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>() 
(define-const var2164 String String-init) ; Statement: $r10 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2164)) ; Statement: specialinvoke $r10.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2164!1 String)
(assert true)
(define-const var2919 String (append/1560614132 var2164!1 "Unable to load file ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Unable to load file ") 
(declare-const var2164!2 String)
(assert (str.prefixof var2164!1 var2164!2))
(assert true)
(define-const var870 String (append/1560614132 var2919 var1139)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r16) 
(declare-const var2919!1 String)
(assert (str.prefixof var2919 var2919!1))
(assert true)
(define-const var2760 String (toString/-222306083 var870)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/830736536 var3537 var650 var2760)) ; Statement: specialinvoke $r9.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r14, $r13) 

(declare-const var3537!1 var1173)
(declare-const var650!1 var2030)
(declare-const var2760!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getActionCommand/1043426425=([java.awt.event.ActionEvent], java.lang.String), var877-init=([], java.util.StringTokenizer), <init>/597479796=([java.util.StringTokenizer, java.lang.String], void), nextToken/-418815358=([java.util.StringTokenizer], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), nextToken/508647847=([java.util.StringTokenizer, java.lang.String], java.lang.String), Int_parseInt/1370970945=([java.lang.String], int), var1173-init=([], org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog), getBaseFrame/-1267267168=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JFrame), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/830736536=([org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, javax.swing.JFrame, java.lang.String], void)}
; {var3299=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var410=r4, var2299=java.awt.event.ActionEvent, var1816=r0, var92=r15, var877=java.util.StringTokenizer, var1278=$r1, var962=$r2, var3838=r3, var1139=r16, var3484=$i0, var3397=java.lang.Exception, var1859=$r8, var1173=org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, var3537=$r9, var2030=javax.swing.JFrame, var650=$r14, var2164=$r10, var2919=$r11, var870=$r12, var2760=$r13}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var3299, r4=var410, java.awt.event.ActionEvent=var2299, r0=var1816, r15=var92, java.util.StringTokenizer=var877, $r1=var1278, $r2=var962, r3=var3838, r16=var1139, $i0=var3484, java.lang.Exception=var3397, $r8=var1859, org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog=var1173, $r9=var3537, javax.swing.JFrame=var2030, $r14=var650, $r10=var2164, $r11=var2919, $r12=var870, $r13=var2760}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r4 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	r0 := @parameter0: java.awt.event.ActionEvent;	r15 = virtualinvoke r0.<java.awt.event.ActionEvent: java.lang.String getActionCommand()>();	$r1 = new java.util.StringTokenizer;	specialinvoke $r1.<java.util.StringTokenizer: void <init>(java.lang.String)>(r15);	$r2 = virtualinvoke $r1.<java.util.StringTokenizer: java.lang.String nextToken()>();	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>();	r16 = virtualinvoke $r1.<java.util.StringTokenizer: java.lang.String nextToken(java.lang.String)>("\n");	$i0 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r3);	$r8 := @caughtexception;	$r9 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog;	$r14 = virtualinvoke r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>();	$r10 = new java.lang.StringBuffer;	specialinvoke $r10.<java.lang.StringBuffer: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Unable to load file ");	$r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r16);	$r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r9.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r14, $r13);	return
;block_num 4