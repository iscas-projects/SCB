(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var49 0)
(declare-sort var3220 0)
(declare-sort var1254 0)
(declare-sort var1379 0)
(declare-sort var1951 0)
(declare-sort var2985 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getActionCommand/1043426425 (var3220) String)
(declare-fun var1254-init () var1254)
(declare-fun <init>/597479796 (var1254 String) void)
(declare-fun nextToken/-418815358 (var1254) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun nextToken/508647847 (var1254 String) String)
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-fun var1951-init () var1951)
(declare-fun getBaseFrame/-1267267168 (var49) var2985)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/830736536 (var1951 var2985 String) void)
(declare-const null-var49 var49)
(declare-const null-var3220 var3220)
(declare-const null-var1379 var1379)
(declare-const var138 var49) ; Statement: r4 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var138 null-var49)))
(declare-const var3838 var3220) ; Statement: r0 := @parameter0: java.awt.event.ActionEvent 
(assert (not (= var3838 null-var3220)))
(assert true)
(define-const var2353 String (getActionCommand/1043426425 var3838)) ; Statement: r15 = virtualinvoke r0.<java.awt.event.ActionEvent: java.lang.String getActionCommand()>() 
(define-const var2167 var1254 var1254-init) ; Statement: $r1 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/597479796 var2167 var2353)) ; Statement: specialinvoke $r1.<java.util.StringTokenizer: void <init>(java.lang.String)>(r15) 

(declare-const var2167!1 var1254)
(declare-const var2353!1 String)
(assert true)
(define-const var3582 String (nextToken/-418815358 var2167!1)) ; Statement: $r2 = virtualinvoke $r1.<java.util.StringTokenizer: java.lang.String nextToken()>() 
(assert true)
(define-const var3549 String (trim/-847153721 var3582)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var2033 String (nextToken/508647847 var2167!1 "\n")) ; Statement: r16 = virtualinvoke $r1.<java.util.StringTokenizer: java.lang.String nextToken(java.lang.String)>("\n") 
(assert true) ; Non Conditional
(define-const var2556 Int (Int_parseInt/1370970945 var3549)) ; Statement: $i0 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r3) 
(assert true) ; Non Conditional
(define-const var3390 Int (- var2556 1)) ; Statement: i1 = $i0 - 1 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var647 var1379) ; Statement: $r8 := @caughtexception 
(assert (not (= var647 null-var1379)))
(define-const var773 var1951 var1951-init) ; Statement: $r9 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog 
(assert true)
(define-const var3608 var2985 (getBaseFrame/-1267267168 var138)) ; Statement: $r14 = virtualinvoke r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>() 
(define-const var1529 String String-init) ; Statement: $r10 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1529)) ; Statement: specialinvoke $r10.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1529!1 String)
(assert true)
(define-const var1913 String (append/1560614132 var1529!1 "Unable to load file ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Unable to load file ") 
(declare-const var1529!2 String)
(assert (str.prefixof var1529!1 var1529!2))
(assert true)
(define-const var3181 String (append/1560614132 var1913 var2033)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r16) 
(declare-const var1913!1 String)
(assert (str.prefixof var1913 var1913!1))
(assert true)
(define-const var3568 String (toString/-222306083 var3181)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/830736536 var773 var3608 var3568)) ; Statement: specialinvoke $r9.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r14, $r13) 

(declare-const var773!1 var1951)
(declare-const var3608!1 var2985)
(declare-const var3568!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getActionCommand/1043426425=([java.awt.event.ActionEvent], java.lang.String), var1254-init=([], java.util.StringTokenizer), <init>/597479796=([java.util.StringTokenizer, java.lang.String], void), nextToken/-418815358=([java.util.StringTokenizer], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), nextToken/508647847=([java.util.StringTokenizer, java.lang.String], java.lang.String), Int_parseInt/1370970945=([java.lang.String], int), var1951-init=([], org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog), getBaseFrame/-1267267168=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JFrame), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/830736536=([org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, javax.swing.JFrame, java.lang.String], void)}
; {var49=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var138=r4, var3220=java.awt.event.ActionEvent, var3838=r0, var2353=r15, var1254=java.util.StringTokenizer, var2167=$r1, var3582=$r2, var3549=r3, var2033=r16, var2556=$i0, var3390=i1, var1379=java.lang.Exception, var647=$r8, var1951=org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, var773=$r9, var2985=javax.swing.JFrame, var3608=$r14, var1529=$r10, var1913=$r11, var3181=$r12, var3568=$r13}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var49, r4=var138, java.awt.event.ActionEvent=var3220, r0=var3838, r15=var2353, java.util.StringTokenizer=var1254, $r1=var2167, $r2=var3582, r3=var3549, r16=var2033, $i0=var2556, i1=var3390, java.lang.Exception=var1379, $r8=var647, org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog=var1951, $r9=var773, javax.swing.JFrame=var2985, $r14=var3608, $r10=var1529, $r11=var1913, $r12=var3181, $r13=var3568}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r4 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	r0 := @parameter0: java.awt.event.ActionEvent;	r15 = virtualinvoke r0.<java.awt.event.ActionEvent: java.lang.String getActionCommand()>();	$r1 = new java.util.StringTokenizer;	specialinvoke $r1.<java.util.StringTokenizer: void <init>(java.lang.String)>(r15);	$r2 = virtualinvoke $r1.<java.util.StringTokenizer: java.lang.String nextToken()>();	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>();	r16 = virtualinvoke $r1.<java.util.StringTokenizer: java.lang.String nextToken(java.lang.String)>("\n");	$i0 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r3);	i1 = $i0 - 1;	$r8 := @caughtexception;	$r9 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog;	$r14 = virtualinvoke r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>();	$r10 = new java.lang.StringBuffer;	specialinvoke $r10.<java.lang.StringBuffer: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Unable to load file ");	$r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r16);	$r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r9.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r14, $r13);	return
;block_num 5