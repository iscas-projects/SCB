(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1553 0)
(declare-sort var438 0)
(declare-sort var3777 0)
(declare-sort var3250 0)
(declare-sort var25 0)
(declare-sort var3641 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var438-init () var438)
(declare-fun getBaseFrame/-1267267168 (var1553) var3777)
(declare-fun <init>/-2050340536 (var438 var3777 String String Int) void)
(declare-fun getText/1677759578 (var438) String)
(declare-fun var3641-init () var3641)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/830736536 (var3641 var3777 String) void)
(declare-fun setMaxRecordConfiguration/-1232593752 (var1553) void)
(declare-const null-var1553 var1553)
(declare-const null-String String)
(declare-const null-var25 var25)
(declare-const var3148 var1553) ; Statement: r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var3148 null-var1553)))
(define-const var2972 var438 var438-init) ; Statement: $r0 = new org.apache.log4j.lf5.viewer.LogFactor5InputDialog 
(assert true)
(define-const var1559 var3777 (getBaseFrame/-1267267168 var3148)) ; Statement: $r2 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>() 
(assert true)
;(assert (<init>/-2050340536 var2972 var1559 "Set Max Number of Records" "" 10)) ; Statement: specialinvoke $r0.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: void <init>(javax.swing.JFrame,java.lang.String,java.lang.String,int)>($r2, "Set Max Number of Records", "", 10) 

(declare-const var2972!1 var438)
(declare-const var1559!1 var3777)
(declare-const var2564 String)
(declare-const var2895 String)
(declare-const var151 Int)
(assert true)
(define-const var1773 String (getText/1677759578 var2972!1)) ; Statement: r3 = virtualinvoke $r0.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: java.lang.String getText()>() 
 ; Statement: if r3 == null goto return 
(assert (not (= var1773 null-String))) ; Negate: Cond: r3 == null  
(declare-const var2609 var25) ; Statement: $r4 := @caughtexception 
(assert (not (= var2609 null-var25)))
(define-const var1806 var3641 var3641-init) ; Statement: $r5 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog 
(assert true)
(define-const var69 var3777 (getBaseFrame/-1267267168 var3148)) ; Statement: $r11 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>() 
(define-const var451 String String-init) ; Statement: $r6 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var451)) ; Statement: specialinvoke $r6.<java.lang.StringBuffer: void <init>()>() 

(declare-const var451!1 String)
(assert true)
(define-const var3833 String (append/1560614132 var451!1 "\u0027")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\'") 
(declare-const var451!2 String)
(assert (str.prefixof var451!1 var451!2))
(assert true)
(define-const var550 String (append/1560614132 var3833 var1773)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var3833!1 String)
(assert (str.prefixof var3833 var3833!1))
(assert true)
(define-const var1053 String (append/1560614132 var550 "\u0027 is an invalid parameter.\nPlease try again.")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\' is an invalid parameter.\nPlease try again.") 
(declare-const var550!1 String)
(assert (str.prefixof var550 var550!1))
(assert true)
(define-const var1112 String (toString/-222306083 var1053)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/830736536 var1806 var69 var1112)) ; Statement: specialinvoke $r5.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r11, $r10) 

(declare-const var1806!1 var3641)
(declare-const var69!1 var3777)
(declare-const var1112!1 String)
(assert true)
;(assert (setMaxRecordConfiguration/-1232593752 var3148)) ; Statement: virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: void setMaxRecordConfiguration()>() 

(declare-const var3148!1 var1553)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var438-init=([], org.apache.log4j.lf5.viewer.LogFactor5InputDialog), getBaseFrame/-1267267168=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JFrame), <init>/-2050340536=([org.apache.log4j.lf5.viewer.LogFactor5InputDialog, javax.swing.JFrame, java.lang.String, java.lang.String, int], void), getText/1677759578=([org.apache.log4j.lf5.viewer.LogFactor5InputDialog], java.lang.String), var3641-init=([], org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/830736536=([org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, javax.swing.JFrame, java.lang.String], void), setMaxRecordConfiguration/-1232593752=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], void)}
; {var1553=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var3148=r1, var438=org.apache.log4j.lf5.viewer.LogFactor5InputDialog, var2972=$r0, var3777=javax.swing.JFrame, var1559=$r2, var2564="Set Max Number of Records", var2895="", var151=10, var1773=r3, var3250=null_type, var25=java.lang.NumberFormatException, var2609=$r4, var3641=org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, var1806=$r5, var69=$r11, var451=$r6, var3833=$r7, var550=$r8, var1053=$r9, var1112=$r10}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var1553, r1=var3148, org.apache.log4j.lf5.viewer.LogFactor5InputDialog=var438, $r0=var2972, javax.swing.JFrame=var3777, $r2=var1559, "Set Max Number of Records"=var2564, ""=var2895, 10=var151, r3=var1773, null_type=var3250, java.lang.NumberFormatException=var25, $r4=var2609, org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog=var3641, $r5=var1806, $r11=var69, $r6=var451, $r7=var3833, $r8=var550, $r9=var1053, $r10=var1112}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	$r0 = new org.apache.log4j.lf5.viewer.LogFactor5InputDialog;	$r2 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>();	specialinvoke $r0.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: void <init>(javax.swing.JFrame,java.lang.String,java.lang.String,int)>($r2, "Set Max Number of Records", "", 10);	r3 = virtualinvoke $r0.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: java.lang.String getText()>();	if r3 == null goto return;	$r4 := @caughtexception;	$r5 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog;	$r11 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>();	$r6 = new java.lang.StringBuffer;	specialinvoke $r6.<java.lang.StringBuffer: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\'");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\' is an invalid parameter.\nPlease try again.");	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r5.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r11, $r10);	virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: void setMaxRecordConfiguration()>();	return
;block_num 3