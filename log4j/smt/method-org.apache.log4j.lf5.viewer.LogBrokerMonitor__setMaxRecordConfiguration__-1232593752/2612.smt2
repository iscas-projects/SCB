(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var777 0)
(declare-sort var2777 0)
(declare-sort var272 0)
(declare-sort var1662 0)
(declare-sort var846 0)
(declare-sort var3853 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2777-init () var2777)
(declare-fun getBaseFrame/-1267267168 (var777) var272)
(declare-fun <init>/-2050340536 (var2777 var272 String String Int) void)
(declare-fun getText/1677759578 (var2777) String)
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-fun var3853-init () var3853)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/830736536 (var3853 var272 String) void)
(declare-fun setMaxRecordConfiguration/-1232593752 (var777) void)
(declare-const null-var777 var777)
(declare-const null-String String)
(declare-const null-var846 var846)
(declare-const var1419 var777) ; Statement: r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var1419 null-var777)))
(define-const var2729 var2777 var2777-init) ; Statement: $r0 = new org.apache.log4j.lf5.viewer.LogFactor5InputDialog 
(assert true)
(define-const var706 var272 (getBaseFrame/-1267267168 var1419)) ; Statement: $r2 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>() 
(assert true)
;(assert (<init>/-2050340536 var2729 var706 "Set Max Number of Records" "" 10)) ; Statement: specialinvoke $r0.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: void <init>(javax.swing.JFrame,java.lang.String,java.lang.String,int)>($r2, "Set Max Number of Records", "", 10) 

(declare-const var2729!1 var2777)
(declare-const var706!1 var272)
(declare-const var991 String)
(declare-const var3282 String)
(declare-const var1279 Int)
(assert true)
(define-const var2218 String (getText/1677759578 var2729!1)) ; Statement: r3 = virtualinvoke $r0.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: java.lang.String getText()>() 
 ; Statement: if r3 == null goto return 
(assert (not (= var2218 null-String))) ; Negate: Cond: r3 == null  
(define-const var133 Int (Int_parseInt/1370970945 var2218)) ; Statement: $i0 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r3) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1992 var846) ; Statement: $r4 := @caughtexception 
(assert (not (= var1992 null-var846)))
(define-const var1260 var3853 var3853-init) ; Statement: $r5 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog 
(assert true)
(define-const var1650 var272 (getBaseFrame/-1267267168 var1419)) ; Statement: $r11 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>() 
(define-const var1369 String String-init) ; Statement: $r6 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1369)) ; Statement: specialinvoke $r6.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1369!1 String)
(assert true)
(define-const var445 String (append/1560614132 var1369!1 "\u0027")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\'") 
(declare-const var1369!2 String)
(assert (str.prefixof var1369!1 var1369!2))
(assert true)
(define-const var755 String (append/1560614132 var445 var2218)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var445!1 String)
(assert (str.prefixof var445 var445!1))
(assert true)
(define-const var2431 String (append/1560614132 var755 "\u0027 is an invalid parameter.\nPlease try again.")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\' is an invalid parameter.\nPlease try again.") 
(declare-const var755!1 String)
(assert (str.prefixof var755 var755!1))
(assert true)
(define-const var1570 String (toString/-222306083 var2431)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/830736536 var1260 var1650 var1570)) ; Statement: specialinvoke $r5.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r11, $r10) 

(declare-const var1260!1 var3853)
(declare-const var1650!1 var272)
(declare-const var1570!1 String)
(assert true)
;(assert (setMaxRecordConfiguration/-1232593752 var1419)) ; Statement: virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: void setMaxRecordConfiguration()>() 

(declare-const var1419!1 var777)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2777-init=([], org.apache.log4j.lf5.viewer.LogFactor5InputDialog), getBaseFrame/-1267267168=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JFrame), <init>/-2050340536=([org.apache.log4j.lf5.viewer.LogFactor5InputDialog, javax.swing.JFrame, java.lang.String, java.lang.String, int], void), getText/1677759578=([org.apache.log4j.lf5.viewer.LogFactor5InputDialog], java.lang.String), Int_parseInt/1370970945=([java.lang.String], int), var3853-init=([], org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/830736536=([org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, javax.swing.JFrame, java.lang.String], void), setMaxRecordConfiguration/-1232593752=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], void)}
; {var777=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var1419=r1, var2777=org.apache.log4j.lf5.viewer.LogFactor5InputDialog, var2729=$r0, var272=javax.swing.JFrame, var706=$r2, var991="Set Max Number of Records", var3282="", var1279=10, var2218=r3, var1662=null_type, var133=$i0, var846=java.lang.NumberFormatException, var1992=$r4, var3853=org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, var1260=$r5, var1650=$r11, var1369=$r6, var445=$r7, var755=$r8, var2431=$r9, var1570=$r10}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var777, r1=var1419, org.apache.log4j.lf5.viewer.LogFactor5InputDialog=var2777, $r0=var2729, javax.swing.JFrame=var272, $r2=var706, "Set Max Number of Records"=var991, ""=var3282, 10=var1279, r3=var2218, null_type=var1662, $i0=var133, java.lang.NumberFormatException=var846, $r4=var1992, org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog=var3853, $r5=var1260, $r11=var1650, $r6=var1369, $r7=var445, $r8=var755, $r9=var2431, $r10=var1570}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	$r0 = new org.apache.log4j.lf5.viewer.LogFactor5InputDialog;	$r2 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>();	specialinvoke $r0.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: void <init>(javax.swing.JFrame,java.lang.String,java.lang.String,int)>($r2, "Set Max Number of Records", "", 10);	r3 = virtualinvoke $r0.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: java.lang.String getText()>();	if r3 == null goto return;	$i0 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r3);	$r4 := @caughtexception;	$r5 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog;	$r11 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>();	$r6 = new java.lang.StringBuffer;	specialinvoke $r6.<java.lang.StringBuffer: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\'");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\' is an invalid parameter.\nPlease try again.");	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r5.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r11, $r10);	virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: void setMaxRecordConfiguration()>();	return
;block_num 4