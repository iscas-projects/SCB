(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1585 0)
(declare-sort var2576 0)
(declare-sort var2077 0)
(declare-sort var2948 0)
(declare-sort var1817 0)
(declare-sort var3156 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2576-init () var2576)
(declare-fun getBaseFrame/-1267267168 (var1585) var2077)
(declare-fun <init>/-2050340536 (var2576 var2077 String String Int) void)
(declare-fun getText/1677759578 (var2576) String)
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-fun setMaxNumberOfLogRecords/-1732402998 (var1585 Int) void)
(declare-fun var3156-init () var3156)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/830736536 (var3156 var2077 String) void)
(declare-fun setMaxRecordConfiguration/-1232593752 (var1585) void)
(declare-const null-var1585 var1585)
(declare-const null-String String)
(declare-const null-var1817 var1817)
(declare-const var1333 var1585) ; Statement: r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var1333 null-var1585)))
(define-const var2410 var2576 var2576-init) ; Statement: $r0 = new org.apache.log4j.lf5.viewer.LogFactor5InputDialog 
(assert true)
(define-const var550 var2077 (getBaseFrame/-1267267168 var1333)) ; Statement: $r2 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>() 
(assert true)
;(assert (<init>/-2050340536 var2410 var550 "Set Max Number of Records" "" 10)) ; Statement: specialinvoke $r0.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: void <init>(javax.swing.JFrame,java.lang.String,java.lang.String,int)>($r2, "Set Max Number of Records", "", 10) 

(declare-const var2410!1 var2576)
(declare-const var550!1 var2077)
(declare-const var2404 String)
(declare-const var3657 String)
(declare-const var2701 Int)
(assert true)
(define-const var2234 String (getText/1677759578 var2410!1)) ; Statement: r3 = virtualinvoke $r0.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: java.lang.String getText()>() 
 ; Statement: if r3 == null goto return 
(assert (not (= var2234 null-String))) ; Negate: Cond: r3 == null  
(define-const var2772 Int (Int_parseInt/1370970945 var2234)) ; Statement: $i0 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r3) 
(assert true) ; Non Conditional
(assert true)
;(assert (setMaxNumberOfLogRecords/-1732402998 var1333 var2772)) ; Statement: virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: void setMaxNumberOfLogRecords(int)>($i0) 

(declare-const var1333!1 var1585)
(declare-const var2772!1 Int)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3571 var1817) ; Statement: $r4 := @caughtexception 
(assert (not (= var3571 null-var1817)))
(define-const var3229 var3156 var3156-init) ; Statement: $r5 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog 
(assert true)
(define-const var3915 var2077 (getBaseFrame/-1267267168 var1333!1)) ; Statement: $r11 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>() 
(define-const var2894 String String-init) ; Statement: $r6 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2894)) ; Statement: specialinvoke $r6.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2894!1 String)
(assert true)
(define-const var2377 String (append/1560614132 var2894!1 "\u0027")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\'") 
(declare-const var2894!2 String)
(assert (str.prefixof var2894!1 var2894!2))
(assert true)
(define-const var132 String (append/1560614132 var2377 var2234)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var2377!1 String)
(assert (str.prefixof var2377 var2377!1))
(assert true)
(define-const var3135 String (append/1560614132 var132 "\u0027 is an invalid parameter.\nPlease try again.")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\' is an invalid parameter.\nPlease try again.") 
(declare-const var132!1 String)
(assert (str.prefixof var132 var132!1))
(assert true)
(define-const var3182 String (toString/-222306083 var3135)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/830736536 var3229 var3915 var3182)) ; Statement: specialinvoke $r5.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r11, $r10) 

(declare-const var3229!1 var3156)
(declare-const var3915!1 var2077)
(declare-const var3182!1 String)
(assert true)
;(assert (setMaxRecordConfiguration/-1232593752 var1333!1)) ; Statement: virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: void setMaxRecordConfiguration()>() 

(declare-const var1333!2 var1585)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2576-init=([], org.apache.log4j.lf5.viewer.LogFactor5InputDialog), getBaseFrame/-1267267168=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JFrame), <init>/-2050340536=([org.apache.log4j.lf5.viewer.LogFactor5InputDialog, javax.swing.JFrame, java.lang.String, java.lang.String, int], void), getText/1677759578=([org.apache.log4j.lf5.viewer.LogFactor5InputDialog], java.lang.String), Int_parseInt/1370970945=([java.lang.String], int), setMaxNumberOfLogRecords/-1732402998=([org.apache.log4j.lf5.viewer.LogBrokerMonitor, int], void), var3156-init=([], org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/830736536=([org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, javax.swing.JFrame, java.lang.String], void), setMaxRecordConfiguration/-1232593752=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], void)}
; {var1585=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var1333=r1, var2576=org.apache.log4j.lf5.viewer.LogFactor5InputDialog, var2410=$r0, var2077=javax.swing.JFrame, var550=$r2, var2404="Set Max Number of Records", var3657="", var2701=10, var2234=r3, var2948=null_type, var2772=$i0, var1817=java.lang.NumberFormatException, var3571=$r4, var3156=org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog, var3229=$r5, var3915=$r11, var2894=$r6, var2377=$r7, var132=$r8, var3135=$r9, var3182=$r10}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var1585, r1=var1333, org.apache.log4j.lf5.viewer.LogFactor5InputDialog=var2576, $r0=var2410, javax.swing.JFrame=var2077, $r2=var550, "Set Max Number of Records"=var2404, ""=var3657, 10=var2701, r3=var2234, null_type=var2948, $i0=var2772, java.lang.NumberFormatException=var1817, $r4=var3571, org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog=var3156, $r5=var3229, $r11=var3915, $r6=var2894, $r7=var2377, $r8=var132, $r9=var3135, $r10=var3182}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	$r0 = new org.apache.log4j.lf5.viewer.LogFactor5InputDialog;	$r2 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>();	specialinvoke $r0.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: void <init>(javax.swing.JFrame,java.lang.String,java.lang.String,int)>($r2, "Set Max Number of Records", "", 10);	r3 = virtualinvoke $r0.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: java.lang.String getText()>();	if r3 == null goto return;	$i0 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r3);	virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: void setMaxNumberOfLogRecords(int)>($i0);	$r4 := @caughtexception;	$r5 = new org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog;	$r11 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>();	$r6 = new java.lang.StringBuffer;	specialinvoke $r6.<java.lang.StringBuffer: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\'");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\' is an invalid parameter.\nPlease try again.");	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r5.<org.apache.log4j.lf5.viewer.LogFactor5ErrorDialog: void <init>(javax.swing.JFrame,java.lang.String)>($r11, $r10);	virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: void setMaxRecordConfiguration()>();	return
;block_num 5