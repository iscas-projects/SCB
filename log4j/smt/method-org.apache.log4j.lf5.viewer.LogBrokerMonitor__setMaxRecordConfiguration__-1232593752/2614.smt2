(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1279 0)
(declare-sort var826 0)
(declare-sort var2924 0)
(declare-sort var253 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var826-init () var826)
(declare-fun getBaseFrame/-1267267168 (var1279) var2924)
(declare-fun <init>/-2050340536 (var826 var2924 String String Int) void)
(declare-fun getText/1677759578 (var826) String)
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-fun setMaxNumberOfLogRecords/-1732402998 (var1279 Int) void)
(declare-const null-var1279 var1279)
(declare-const null-String String)
(declare-const var1357 var1279) ; Statement: r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var1357 null-var1279)))
(define-const var3910 var826 var826-init) ; Statement: $r0 = new org.apache.log4j.lf5.viewer.LogFactor5InputDialog 
(assert true)
(define-const var3638 var2924 (getBaseFrame/-1267267168 var1357)) ; Statement: $r2 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>() 
(assert true)
;(assert (<init>/-2050340536 var3910 var3638 "Set Max Number of Records" "" 10)) ; Statement: specialinvoke $r0.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: void <init>(javax.swing.JFrame,java.lang.String,java.lang.String,int)>($r2, "Set Max Number of Records", "", 10) 

(declare-const var3910!1 var826)
(declare-const var3638!1 var2924)
(declare-const var1273 String)
(declare-const var994 String)
(declare-const var0 Int)
(assert true)
(define-const var1757 String (getText/1677759578 var3910!1)) ; Statement: r3 = virtualinvoke $r0.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: java.lang.String getText()>() 
 ; Statement: if r3 == null goto return 
(assert (not (= var1757 null-String))) ; Negate: Cond: r3 == null  
(define-const var2832 Int (Int_parseInt/1370970945 var1757)) ; Statement: $i0 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r3) 
(assert true) ; Non Conditional
(assert true)
;(assert (setMaxNumberOfLogRecords/-1732402998 var1357 var2832)) ; Statement: virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: void setMaxNumberOfLogRecords(int)>($i0) 

(declare-const var1357!1 var1279)
(declare-const var2832!1 Int)
(assert true) ; Non Conditional
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var826-init=([], org.apache.log4j.lf5.viewer.LogFactor5InputDialog), getBaseFrame/-1267267168=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JFrame), <init>/-2050340536=([org.apache.log4j.lf5.viewer.LogFactor5InputDialog, javax.swing.JFrame, java.lang.String, java.lang.String, int], void), getText/1677759578=([org.apache.log4j.lf5.viewer.LogFactor5InputDialog], java.lang.String), Int_parseInt/1370970945=([java.lang.String], int), setMaxNumberOfLogRecords/-1732402998=([org.apache.log4j.lf5.viewer.LogBrokerMonitor, int], void)}
; {var1279=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var1357=r1, var826=org.apache.log4j.lf5.viewer.LogFactor5InputDialog, var3910=$r0, var2924=javax.swing.JFrame, var3638=$r2, var1273="Set Max Number of Records", var994="", var0=10, var1757=r3, var253=null_type, var2832=$i0}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var1279, r1=var1357, org.apache.log4j.lf5.viewer.LogFactor5InputDialog=var826, $r0=var3910, javax.swing.JFrame=var2924, $r2=var3638, "Set Max Number of Records"=var1273, ""=var994, 10=var0, r3=var1757, null_type=var253, $i0=var2832}
;seq 
;cnt {}
;stmts r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	$r0 = new org.apache.log4j.lf5.viewer.LogFactor5InputDialog;	$r2 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame getBaseFrame()>();	specialinvoke $r0.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: void <init>(javax.swing.JFrame,java.lang.String,java.lang.String,int)>($r2, "Set Max Number of Records", "", 10);	r3 = virtualinvoke $r0.<org.apache.log4j.lf5.viewer.LogFactor5InputDialog: java.lang.String getText()>();	if r3 == null goto return;	$i0 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r3);	virtualinvoke r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: void setMaxNumberOfLogRecords(int)>($i0);	goto [?= return];	return
;block_num 5