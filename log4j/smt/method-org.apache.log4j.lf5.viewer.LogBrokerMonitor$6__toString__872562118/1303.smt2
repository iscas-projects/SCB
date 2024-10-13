(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2747 0)
(declare-sort var2360 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$model/-231852626 (var2747) var2360)
(declare-fun _maxNumberOfLogRecords/-1828067543 (var2360) Int)
(declare-fun append/1845021834 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var2747 var2747)
(declare-const var1340 var2747) ; Statement: r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor$6 
(assert (not (= var1340 null-var2747)))
(define-const var3280 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3280)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3280!1 String)
(assert true)
(define-const var1840 String (append/1560614132 var3280!1 "Maximum number of displayed LogRecords: ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Maximum number of displayed LogRecords: ") 
(declare-const var3280!2 String)
(assert (str.prefixof var3280!1 var3280!2))
(define-const var3935 var2360 (val$model/-231852626 var1340)) ; Statement: $r2 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$6: org.apache.log4j.lf5.viewer.FilteredLogTableModel val$model> 
(define-const var2738 Int (_maxNumberOfLogRecords/-1828067543 var3935)) ; Statement: $i0 = $r2.<org.apache.log4j.lf5.viewer.FilteredLogTableModel: int _maxNumberOfLogRecords> 
(assert true)
(define-const var3237 String (append/1845021834 var1840 var2738)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i0) 
(assert true)
(define-const var3859 String (toString/-222306083 var3237)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), val$model/-231852626=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$6], org.apache.log4j.lf5.viewer.FilteredLogTableModel), _maxNumberOfLogRecords/-1828067543=([org.apache.log4j.lf5.viewer.FilteredLogTableModel], int), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var2747=org.apache.log4j.lf5.viewer.LogBrokerMonitor$6, var1340=r1, var3280=$r0, var1840=$r3, var2360=org.apache.log4j.lf5.viewer.FilteredLogTableModel, var3935=$r2, var2738=$i0, var3237=$r4, var3859=$r5}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor$6=var2747, r1=var1340, $r0=var3280, $r3=var1840, org.apache.log4j.lf5.viewer.FilteredLogTableModel=var2360, $r2=var3935, $i0=var2738, $r4=var3237, $r5=var3859}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor$6;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Maximum number of displayed LogRecords: ");	$r2 = r1.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$6: org.apache.log4j.lf5.viewer.FilteredLogTableModel val$model>;	$i0 = $r2.<org.apache.log4j.lf5.viewer.FilteredLogTableModel: int _maxNumberOfLogRecords>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>();	return $r5
;block_num 1