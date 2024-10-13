(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2762 0)
(declare-sort var3075 0)
(declare-sort var3016 0)
(declare-sort var2070 0)
(declare-sort var2652 0)
(declare-sort var3238 0)
(declare-sort var2790 0)
(declare-sort var418 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getActionCommand/1043426425 (var3075) String)
(declare-fun var3016-init () var3016)
(declare-fun <init>/597479796 (var3016 String) void)
(declare-fun nextToken/-418815358 (var3016) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun nextToken/508647847 (var3016 String) String)
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-fun _mruFileManager/-1291859940 (var2762) var2070)
(declare-fun getInputStream/1603846316 (var2070 Int) var2652)
(declare-fun var2790-init () var2790)
(declare-fun getBaseFrame/-1267267168 (var2762) var418)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/830736536 (var2790 var418 String) void)
(declare-const null-var2762 var2762)
(declare-const null-var3075 var3075)
(declare-const null-var3238 var3238)
(declare-const var2952 var2762) ; Statement: r4 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var2952 null-var2762)))
(declare-const var3368 var3075) ; Statement: r0 := @parameter0: java.awt.event.ActionEvent 
(assert (not (= var3368 null-var3075)))
(assert true)
(define-const var3959 String (getActionCommand/1043426425 var3368)) ; Statement: r15 = virtualinvoke r0.<java.awt.event.ActionEvent: java.lang.String getActionCommand()>() 
(define-const var2002 var3016 var3016-init) ; Statement: $r1 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/597479796 var2002 var3959)) ; Statement: specialinvoke $r1.<java.util.StringTokenizer: void <init>(java.lang.String)>(r15) 

(declare-const var2002!1 var3016)
(declare-const var3959!1 String)
(assert true)
(define-const var2118 String (nextToken/-418815358 var2002!1)) ; Statement: $r2 = virtualinvoke $r1.<java.util.StringTokenizer: java.lang.String nextToken()>() 
(assert true)
(define-const var3984 String (trim/-847153721 var2118)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var336 String (nextToken/508647847 var2002!1 "\n")) ; Statement: r16 = virtualinvoke $r1.<java.util.StringTokenizer: java.lang.String nextToken(java.lang.String)>("\n") 
(assert true) ; Non Conditional
(define-const var1078 Int (Int_parseInt/1370970945 var3984)) ; Statement: $i0 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r3) 
(assert true) ; Non Conditional
(define-const var3838 Int (- var1078 1)) ; Statement: i1 = $i0 - 1 
(assert true) ; Non Conditional
(define-const var2676 var2070 (_mruFileManager/-1291859940 var2952)) ; Statement: $r5 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: org.apache.log4j.lf5.viewer.configure.MRUFileManager _mruFileManager> 
(assert true) ; Non Conditional
(assert true)
(define-const var2321 var2652 (getInputStream/1603846316 var2676 var3838)) ; Statement: r17 = virtualinvoke $r5.<org.apache.log4j.lf5.viewer.configure.MRUFileManager: java.io.InputStream getInputStream(int)>(i1) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var397 var3238) ; Statement: $r8 := @caughtexception 
(assert (not (= var397 null-var3238)))
(define-const var2702 var2790 var2790-init) ; Statement: $r9 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog 
(assert true)
(define-const var2958 var418 (getBaseFrame/-1267267168 var2952)) ; Statement: $r14 = virtualinvoke r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>() 
(define-const var1541 String String-init) ; Statement: $r10 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1541)) ; Statement: specialinvoke $r10.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1541!1 String)
(assert true)
(define-const var3593 String (append/1560614132 var1541!1 "Unable to load file ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Unable to load file ") 
(declare-const var1541!2 String)
(assert (str.prefixof var1541!1 var1541!2))
(assert true)
(define-const var3925 String (append/1560614132 var3593 var336)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r16) 
(declare-const var3593!1 String)
(assert (str.prefixof var3593 var3593!1))
(assert true)
(define-const var3008 String (toString/-222306083 var3925)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/830736536 var2702 var2958 var3008)) ; Statement: specialinvoke $r9.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r14, $r13) 

(declare-const var2702!1 var2790)
(declare-const var2958!1 var418)
(declare-const var3008!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getActionCommand/1043426425=([java.awt.event.ActionEvent], java.lang.String), var3016-init=([], java.util.StringTokenizer), <init>/597479796=([java.util.StringTokenizer, java.lang.String], void), nextToken/-418815358=([java.util.StringTokenizer], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), nextToken/508647847=([java.util.StringTokenizer, java.lang.String], java.lang.String), Int_parseInt/1370970945=([java.lang.String], int), _mruFileManager/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], org.apache.log4j.lf5.viewer.configure.MRUFileManager), getInputStream/1603846316=([org.apache.log4j.lf5.viewer.configure.MRUFileManager, int], java.io.InputStream), var2790-init=([], org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog), getBaseFrame/-1267267168=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JFrame), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/830736536=([org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, javax.swing.JFrame, java.lang.String], void)}
; {var2762=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var2952=r4, var3075=java.awt.event.ActionEvent, var3368=r0, var3959=r15, var3016=java.util.StringTokenizer, var2002=$r1, var2118=$r2, var3984=r3, var336=r16, var1078=$i0, var3838=i1, var2070=org.apache.log4j.lf5.viewer.configure.MRUFileManager, var2676=$r5, var2652=java.io.InputStream, var2321=r17, var3238=java.lang.Exception, var397=$r8, var2790=org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, var2702=$r9, var418=javax.swing.JFrame, var2958=$r14, var1541=$r10, var3593=$r11, var3925=$r12, var3008=$r13}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var2762, r4=var2952, java.awt.event.ActionEvent=var3075, r0=var3368, r15=var3959, java.util.StringTokenizer=var3016, $r1=var2002, $r2=var2118, r3=var3984, r16=var336, $i0=var1078, i1=var3838, org.apache.log4j.lf5.viewer.configure.MRUFileManager=var2070, $r5=var2676, java.io.InputStream=var2652, r17=var2321, java.lang.Exception=var3238, $r8=var397, org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog=var2790, $r9=var2702, javax.swing.JFrame=var418, $r14=var2958, $r10=var1541, $r11=var3593, $r12=var3925, $r13=var3008}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r4 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	r0 := @parameter0: java.awt.event.ActionEvent;	r15 = virtualinvoke r0.<java.awt.event.ActionEvent: java.lang.String getActionCommand()>();	$r1 = new java.util.StringTokenizer;	specialinvoke $r1.<java.util.StringTokenizer: void <init>(java.lang.String)>(r15);	$r2 = virtualinvoke $r1.<java.util.StringTokenizer: java.lang.String nextToken()>();	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>();	r16 = virtualinvoke $r1.<java.util.StringTokenizer: java.lang.String nextToken(java.lang.String)>("\n");	$i0 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r3);	i1 = $i0 - 1;	$r5 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: org.apache.log4j.lf5.viewer.configure.MRUFileManager _mruFileManager>;	r17 = virtualinvoke $r5.<org.apache.log4j.lf5.viewer.configure.MRUFileManager: java.io.InputStream getInputStream(int)>(i1);	$r8 := @caughtexception;	$r9 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog;	$r14 = virtualinvoke r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>();	$r10 = new java.lang.StringBuffer;	specialinvoke $r10.<java.lang.StringBuffer: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Unable to load file ");	$r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r16);	$r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r9.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r14, $r13);	return
;block_num 7