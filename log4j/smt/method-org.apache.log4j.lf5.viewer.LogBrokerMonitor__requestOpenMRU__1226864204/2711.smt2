(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1345 0)
(declare-sort var3556 0)
(declare-sort var3979 0)
(declare-sort var3214 0)
(declare-sort var1877 0)
(declare-sort var1176 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getActionCommand/1043426425 (var3556) String)
(declare-fun var3979-init () var3979)
(declare-fun <init>/597479796 (var3979 String) void)
(declare-fun nextToken/-418815358 (var3979) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun nextToken/508647847 (var3979 String) String)
(declare-fun var1877-init () var1877)
(declare-fun getBaseFrame/-1267267168 (var1345) var1176)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/830736536 (var1877 var1176 String) void)
(declare-const null-var1345 var1345)
(declare-const null-var3556 var3556)
(declare-const null-var3214 var3214)
(declare-const var1093 var1345) ; Statement: r4 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var1093 null-var1345)))
(declare-const var1448 var3556) ; Statement: r0 := @parameter0: java.awt.event.ActionEvent 
(assert (not (= var1448 null-var3556)))
(assert true)
(define-const var1650 String (getActionCommand/1043426425 var1448)) ; Statement: r15 = virtualinvoke r0.<java.awt.event.ActionEvent: java.lang.String getActionCommand()>() 
(define-const var2581 var3979 var3979-init) ; Statement: $r1 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/597479796 var2581 var1650)) ; Statement: specialinvoke $r1.<java.util.StringTokenizer: void <init>(java.lang.String)>(r15) 

(declare-const var2581!1 var3979)
(declare-const var1650!1 String)
(assert true)
(define-const var1390 String (nextToken/-418815358 var2581!1)) ; Statement: $r2 = virtualinvoke $r1.<java.util.StringTokenizer: java.lang.String nextToken()>() 
(assert true)
(define-const var3704 String (trim/-847153721 var1390)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var3712 String (nextToken/508647847 var2581!1 "\n")) ; Statement: r16 = virtualinvoke $r1.<java.util.StringTokenizer: java.lang.String nextToken(java.lang.String)>("\n") 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var903 var3214) ; Statement: $r8 := @caughtexception 
(assert (not (= var903 null-var3214)))
(define-const var3345 var1877 var1877-init) ; Statement: $r9 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog 
(assert true)
(define-const var136 var1176 (getBaseFrame/-1267267168 var1093)) ; Statement: $r14 = virtualinvoke r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>() 
(define-const var3844 String String-init) ; Statement: $r10 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3844)) ; Statement: specialinvoke $r10.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3844!1 String)
(assert true)
(define-const var3669 String (append/1560614132 var3844!1 "Unable to load file ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Unable to load file ") 
(declare-const var3844!2 String)
(assert (str.prefixof var3844!1 var3844!2))
(assert true)
(define-const var1290 String (append/1560614132 var3669 var3712)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r16) 
(declare-const var3669!1 String)
(assert (str.prefixof var3669 var3669!1))
(assert true)
(define-const var2234 String (toString/-222306083 var1290)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/830736536 var3345 var136 var2234)) ; Statement: specialinvoke $r9.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r14, $r13) 

(declare-const var3345!1 var1877)
(declare-const var136!1 var1176)
(declare-const var2234!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getActionCommand/1043426425=([java.awt.event.ActionEvent], java.lang.String), var3979-init=([], java.util.StringTokenizer), <init>/597479796=([java.util.StringTokenizer, java.lang.String], void), nextToken/-418815358=([java.util.StringTokenizer], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), nextToken/508647847=([java.util.StringTokenizer, java.lang.String], java.lang.String), var1877-init=([], org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog), getBaseFrame/-1267267168=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JFrame), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/830736536=([org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, javax.swing.JFrame, java.lang.String], void)}
; {var1345=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var1093=r4, var3556=java.awt.event.ActionEvent, var1448=r0, var1650=r15, var3979=java.util.StringTokenizer, var2581=$r1, var1390=$r2, var3704=r3, var3712=r16, var3214=java.lang.Exception, var903=$r8, var1877=org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, var3345=$r9, var1176=javax.swing.JFrame, var136=$r14, var3844=$r10, var3669=$r11, var1290=$r12, var2234=$r13}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var1345, r4=var1093, java.awt.event.ActionEvent=var3556, r0=var1448, r15=var1650, java.util.StringTokenizer=var3979, $r1=var2581, $r2=var1390, r3=var3704, r16=var3712, java.lang.Exception=var3214, $r8=var903, org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog=var1877, $r9=var3345, javax.swing.JFrame=var1176, $r14=var136, $r10=var3844, $r11=var3669, $r12=var1290, $r13=var2234}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r4 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	r0 := @parameter0: java.awt.event.ActionEvent;	r15 = virtualinvoke r0.<java.awt.event.ActionEvent: java.lang.String getActionCommand()>();	$r1 = new java.util.StringTokenizer;	specialinvoke $r1.<java.util.StringTokenizer: void <init>(java.lang.String)>(r15);	$r2 = virtualinvoke $r1.<java.util.StringTokenizer: java.lang.String nextToken()>();	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>();	r16 = virtualinvoke $r1.<java.util.StringTokenizer: java.lang.String nextToken(java.lang.String)>("\n");	$r8 := @caughtexception;	$r9 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog;	$r14 = virtualinvoke r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>();	$r10 = new java.lang.StringBuffer;	specialinvoke $r10.<java.lang.StringBuffer: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Unable to load file ");	$r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r16);	$r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r9.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r14, $r13);	return
;block_num 3