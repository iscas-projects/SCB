(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2773 0)
(declare-sort var581 0)
(declare-sort var461 0)
(declare-sort var3726 0)
(declare-sort var1914 0)
(declare-sort var708 0)
(declare-sort var2080 0)
(declare-sort var1407 0)
(declare-sort var1689 0)
(declare-sort var3596 0)
(declare-sort var2237 0)
(declare-sort var3154 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var461_getProperty/258823597 (String) String)
(declare-fun var1914-init () var1914)
(declare-fun fatal/1939467046 (var1407 var1689 var3596) void)
(declare-fun cast-from-var2080-to-var1407 (var2080) var1407)
(declare-fun cast-from-String-to-var1689 (String) var1689)
(declare-fun cast-from-var708-to-var3596 (var708) var3596)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1845021834 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2237_showMessageDialog/122806564 (var3154 var1689 String Int) void)
(declare-fun cast-from-var2773-to-var3154 (var2773) var3154)
(declare-fun var461_exit/142839841 (Int) void)
(declare-const null-var2773 var2773)
(declare-const null-var581 var581)
(declare-const null-String String)
(declare-const null-var708 var708)
(declare-const var2773-LOG var2080)
(declare-const var3877 var2773) ; Statement: r4 := @this: org.apache.log4j.chainsaw.Main 
(assert (not (= var3877 null-var2773)))
(declare-const var1510 var581) ; Statement: r1 := @parameter0: org.apache.log4j.chainsaw.MyTableModel 
(assert (not (= var1510 null-var581)))
(define-const var2755 Int 4445) ; Statement: i0 = 4445 
(define-const var3167 String (var461_getProperty/258823597 "chainsaw.port")) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("chainsaw.port") 
 ; Statement: if r0 == null goto $r22 = new org.apache.log4j.chainsaw.LoggingReceiver 
(assert (= var3167 null-String)) ; Cond: r0 == null 
(define-const var2433 var1914 var1914-init) ; Statement: $r22 = new org.apache.log4j.chainsaw.LoggingReceiver 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var422 var708) ; Statement: $r2 := @caughtexception 
(assert (not (= var422 null-var708)))
(define-const var1324 var2080 var2773-LOG) ; Statement: $r3 = <org.apache.log4j.chainsaw.Main: org.apache.log4j.Logger LOG> 
(assert true)
;(assert (fatal/1939467046 (cast-from-var2080-to-var1407 var1324) (cast-from-String-to-var1689 "Unable to connect to socket server, quiting") (cast-from-var708-to-var3596 var422))) ; Statement: virtualinvoke $r3.<org.apache.log4j.Logger: void fatal(java.lang.Object,java.lang.Throwable)>("Unable to connect to socket server, quiting", $r2) 

(declare-const var1324!1 var2080)
(declare-const var2874 String)
(declare-const var422!1 var708)
(define-const var3070 String String-init) ; Statement: $r5 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3070)) ; Statement: specialinvoke $r5.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3070!1 String)
(assert true)
(define-const var3594 String (append/1560614132 var3070!1 "Unable to create socket on port ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Unable to create socket on port ") 
(declare-const var3070!2 String)
(assert (str.prefixof var3070!1 var3070!2))
(assert true)
(define-const var2348 String (append/1845021834 var3594 var2755)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0) 
(assert true)
(define-const var3950 String (append/1560614132 var2348 ", quitting.")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", quitting.") 
(declare-const var2348!1 String)
(assert (str.prefixof var2348 var2348!1))
(assert true)
(define-const var3737 String (toString/-222306083 var3950)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2237_showMessageDialog/122806564 (cast-from-var2773-to-var3154 var3877) (cast-from-String-to-var1689 var3737) "CHAINSAW" 0)) ; Statement: staticinvoke <javax.swing.JOptionPane: void showMessageDialog(java.awt.Component,java.lang.Object,java.lang.String,int)>(r4, $r9, "CHAINSAW", 0) 

(declare-const var3877!1 var2773)
(declare-const var3737!1 String)
(declare-const var2909 String)
(declare-const var2310 Int)
;(assert (var461_exit/142839841 1)) ; Statement: staticinvoke <java.lang.System: void exit(int)>(1) 

(declare-const var2679 Int)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var461_getProperty/258823597=([java.lang.String], java.lang.String), var1914-init=([], org.apache.log4j.chainsaw.LoggingReceiver), fatal/1939467046=([org.apache.log4j.Category, java.lang.Object, java.lang.Throwable], void), cast-from-var2080-to-var1407=([org.apache.log4j.Logger], org.apache.log4j.Category), cast-from-String-to-var1689=([java.lang.String], java.lang.Object), cast-from-var708-to-var3596=([java.io.IOException], java.lang.Throwable), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2237_showMessageDialog/122806564=([java.awt.Component, java.lang.Object, java.lang.String, int], void), cast-from-var2773-to-var3154=([org.apache.log4j.chainsaw.Main], java.awt.Component), var461_exit/142839841=([int], void)}
; {var2773=org.apache.log4j.chainsaw.Main, var3877=r4, var581=org.apache.log4j.chainsaw.MyTableModel, var1510=r1, var2755=i0, var461=java.lang.System, var3167=r0, var3726=null_type, var1914=org.apache.log4j.chainsaw.LoggingReceiver, var2433=$r22, var708=java.io.IOException, var422=$r2, var2080=org.apache.log4j.Logger, var1324=$r3, var1407=org.apache.log4j.Category, var1689=java.lang.Object, var3596=java.lang.Throwable, var2874="Unable to connect to socket server, quiting", var3070=$r5, var3594=$r6, var2348=$r7, var3950=$r8, var3737=$r9, var2237=javax.swing.JOptionPane, var3154=java.awt.Component, var2909="CHAINSAW", var2310=0, var2679=1}
; {org.apache.log4j.chainsaw.Main=var2773, r4=var3877, org.apache.log4j.chainsaw.MyTableModel=var581, r1=var1510, i0=var2755, java.lang.System=var461, r0=var3167, null_type=var3726, org.apache.log4j.chainsaw.LoggingReceiver=var1914, $r22=var2433, java.io.IOException=var708, $r2=var422, org.apache.log4j.Logger=var2080, $r3=var1324, org.apache.log4j.Category=var1407, java.lang.Object=var1689, java.lang.Throwable=var3596, "Unable to connect to socket server, quiting"=var2874, $r5=var3070, $r6=var3594, $r7=var2348, $r8=var3950, $r9=var3737, javax.swing.JOptionPane=var2237, java.awt.Component=var3154, "CHAINSAW"=var2909, 0=var2310, 1=var2679}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r4 := @this: org.apache.log4j.chainsaw.Main;	r1 := @parameter0: org.apache.log4j.chainsaw.MyTableModel;	i0 = 4445;	r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("chainsaw.port");	if r0 == null goto $r22 = new org.apache.log4j.chainsaw.LoggingReceiver;	$r22 = new org.apache.log4j.chainsaw.LoggingReceiver;	$r2 := @caughtexception;	$r3 = <org.apache.log4j.chainsaw.Main: org.apache.log4j.Logger LOG>;	virtualinvoke $r3.<org.apache.log4j.Logger: void fatal(java.lang.Object,java.lang.Throwable)>("Unable to connect to socket server, quiting", $r2);	$r5 = new java.lang.StringBuffer;	specialinvoke $r5.<java.lang.StringBuffer: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Unable to create socket on port ");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", quitting.");	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <javax.swing.JOptionPane: void showMessageDialog(java.awt.Component,java.lang.Object,java.lang.String,int)>(r4, $r9, "CHAINSAW", 0);	staticinvoke <java.lang.System: void exit(int)>(1);	return
;block_num 4