(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2431 0)
(declare-sort var1854 0)
(declare-sort var411 0)
(declare-sort var1848 0)
(declare-sort var3243 0)
(declare-sort var1112 0)
(declare-sort var3929 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getActionCommand/1043426425 (var1854) String)
(declare-fun var411-init () var411)
(declare-fun <init>/597479796 (var411 String) void)
(declare-fun nextToken/-418815358 (var411) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun nextToken/508647847 (var411 String) String)
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-fun _mruFileManager/-1291859940 (var2431) var1848)
(declare-fun var1112-init () var1112)
(declare-fun getBaseFrame/-1267267168 (var2431) var3929)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/830736536 (var1112 var3929 String) void)
(declare-const null-var2431 var2431)
(declare-const null-var1854 var1854)
(declare-const null-var3243 var3243)
(declare-const var3228 var2431) ; Statement: r4 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var3228 null-var2431)))
(declare-const var3613 var1854) ; Statement: r0 := @parameter0: java.awt.event.ActionEvent 
(assert (not (= var3613 null-var1854)))
(assert true)
(define-const var771 String (getActionCommand/1043426425 var3613)) ; Statement: r15 = virtualinvoke r0.<java.awt.event.ActionEvent: java.lang.String getActionCommand()>() 
(define-const var3192 var411 var411-init) ; Statement: $r1 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/597479796 var3192 var771)) ; Statement: specialinvoke $r1.<java.util.StringTokenizer: void <init>(java.lang.String)>(r15) 

(declare-const var3192!1 var411)
(declare-const var771!1 String)
(assert true)
(define-const var2870 String (nextToken/-418815358 var3192!1)) ; Statement: $r2 = virtualinvoke $r1.<java.util.StringTokenizer: java.lang.String nextToken()>() 
(assert true)
(define-const var1322 String (trim/-847153721 var2870)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var1125 String (nextToken/508647847 var3192!1 "\n")) ; Statement: r16 = virtualinvoke $r1.<java.util.StringTokenizer: java.lang.String nextToken(java.lang.String)>("\n") 
(assert true) ; Non Conditional
(define-const var2362 Int (Int_parseInt/1370970945 var1322)) ; Statement: $i0 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r3) 
(assert true) ; Non Conditional
(define-const var2510 Int (- var2362 1)) ; Statement: i1 = $i0 - 1 
(assert true) ; Non Conditional
(define-const var1377 var1848 (_mruFileManager/-1291859940 var3228)) ; Statement: $r5 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: org.apache.log4j.lf5.viewer.configure.MRUFileManager _mruFileManager> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3656 var3243) ; Statement: $r8 := @caughtexception 
(assert (not (= var3656 null-var3243)))
(define-const var3591 var1112 var1112-init) ; Statement: $r9 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog 
(assert true)
(define-const var1229 var3929 (getBaseFrame/-1267267168 var3228)) ; Statement: $r14 = virtualinvoke r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>() 
(define-const var1781 String String-init) ; Statement: $r10 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1781)) ; Statement: specialinvoke $r10.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1781!1 String)
(assert true)
(define-const var2466 String (append/1560614132 var1781!1 "Unable to load file ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Unable to load file ") 
(declare-const var1781!2 String)
(assert (str.prefixof var1781!1 var1781!2))
(assert true)
(define-const var3026 String (append/1560614132 var2466 var1125)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r16) 
(declare-const var2466!1 String)
(assert (str.prefixof var2466 var2466!1))
(assert true)
(define-const var2436 String (toString/-222306083 var3026)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/830736536 var3591 var1229 var2436)) ; Statement: specialinvoke $r9.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r14, $r13) 

(declare-const var3591!1 var1112)
(declare-const var1229!1 var3929)
(declare-const var2436!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getActionCommand/1043426425=([java.awt.event.ActionEvent], java.lang.String), var411-init=([], java.util.StringTokenizer), <init>/597479796=([java.util.StringTokenizer, java.lang.String], void), nextToken/-418815358=([java.util.StringTokenizer], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), nextToken/508647847=([java.util.StringTokenizer, java.lang.String], java.lang.String), Int_parseInt/1370970945=([java.lang.String], int), _mruFileManager/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], org.apache.log4j.lf5.viewer.configure.MRUFileManager), var1112-init=([], org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog), getBaseFrame/-1267267168=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JFrame), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/830736536=([org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, javax.swing.JFrame, java.lang.String], void)}
; {var2431=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var3228=r4, var1854=java.awt.event.ActionEvent, var3613=r0, var771=r15, var411=java.util.StringTokenizer, var3192=$r1, var2870=$r2, var1322=r3, var1125=r16, var2362=$i0, var2510=i1, var1848=org.apache.log4j.lf5.viewer.configure.MRUFileManager, var1377=$r5, var3243=java.lang.Exception, var3656=$r8, var1112=org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, var3591=$r9, var3929=javax.swing.JFrame, var1229=$r14, var1781=$r10, var2466=$r11, var3026=$r12, var2436=$r13}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var2431, r4=var3228, java.awt.event.ActionEvent=var1854, r0=var3613, r15=var771, java.util.StringTokenizer=var411, $r1=var3192, $r2=var2870, r3=var1322, r16=var1125, $i0=var2362, i1=var2510, org.apache.log4j.lf5.viewer.configure.MRUFileManager=var1848, $r5=var1377, java.lang.Exception=var3243, $r8=var3656, org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog=var1112, $r9=var3591, javax.swing.JFrame=var3929, $r14=var1229, $r10=var1781, $r11=var2466, $r12=var3026, $r13=var2436}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r4 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	r0 := @parameter0: java.awt.event.ActionEvent;	r15 = virtualinvoke r0.<java.awt.event.ActionEvent: java.lang.String getActionCommand()>();	$r1 = new java.util.StringTokenizer;	specialinvoke $r1.<java.util.StringTokenizer: void <init>(java.lang.String)>(r15);	$r2 = virtualinvoke $r1.<java.util.StringTokenizer: java.lang.String nextToken()>();	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>();	r16 = virtualinvoke $r1.<java.util.StringTokenizer: java.lang.String nextToken(java.lang.String)>("\n");	$i0 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r3);	i1 = $i0 - 1;	$r5 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: org.apache.log4j.lf5.viewer.configure.MRUFileManager _mruFileManager>;	$r8 := @caughtexception;	$r9 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog;	$r14 = virtualinvoke r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>();	$r10 = new java.lang.StringBuffer;	specialinvoke $r10.<java.lang.StringBuffer: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Unable to load file ");	$r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r16);	$r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r9.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r14, $r13);	return
;block_num 6