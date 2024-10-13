(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2927 0)
(declare-sort var2348 0)
(declare-sort var1460 0)
(declare-sort var622 0)
(declare-sort var1304 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun _searchText/-1291859940 (var2927) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun _logMonitorFrame/-1291859940 (var2927) var2348)
(declare-fun var1460_showMessageDialog/122806564 (var622 var1304 String Int) void)
(declare-fun cast-from-var2348-to-var622 (var2348) var622)
(declare-fun cast-from-String-to-var1304 (String) var1304)
(declare-const null-var2927 var2927)
(declare-const null-Int Int)
(declare-const var214 var2927) ; Statement: r0 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var214 null-var2927)))
(declare-const var183 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var183 null-Int)))
(define-const var1143 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r2 = r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: org.apache.log4j.lf5.viewer.LogTable _table> 
(assert (not (not (= var183 var1143)))) ; Negate: Cond: i0 != $i2  
(define-const var3721 String String-init) ; Statement: $r9 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3721)) ; Statement: specialinvoke $r9.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3721!1 String)
(define-const var3633 String (_searchText/-1291859940 var214)) ; Statement: $r4 = r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _searchText> 
(assert true)
(define-const var3545 String (append/1560614132 var3721!1 var3633)) ; Statement: $r5 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4) 
(declare-const var3721!2 String)
(assert (str.prefixof var3721!1 var3721!2))
(assert true)
(define-const var1055 String (append/1560614132 var3545 " not found.")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" not found.") 
(declare-const var3545!1 String)
(assert (str.prefixof var3545 var3545!1))
(assert true)
(define-const var2444 String (toString/-222306083 var1055)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var613 var2348 (_logMonitorFrame/-1291859940 var214)) ; Statement: $r8 = r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame _logMonitorFrame> 
;(assert (var1460_showMessageDialog/122806564 (cast-from-var2348-to-var622 var613) (cast-from-String-to-var1304 var2444) "Text not found" 1)) ; Statement: staticinvoke <javax.swing.JOptionPane: void showMessageDialog(java.awt.Component,java.lang.Object,java.lang.String,int)>($r8, r7, "Text not found", 1) 

(declare-const var613!1 var2348)
(declare-const var2444!1 String)
(declare-const var173 String)
(declare-const var609 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), _searchText/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), _logMonitorFrame/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JFrame), var1460_showMessageDialog/122806564=([java.awt.Component, java.lang.Object, java.lang.String, int], void), cast-from-var2348-to-var622=([javax.swing.JFrame], java.awt.Component), cast-from-String-to-var1304=([java.lang.String], java.lang.Object)}
; {var2927=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var214=r0, var183=i0, var1143=$i2, var3721=$r9, var3633=$r4, var3545=$r5, var1055=$r6, var2444=r7, var2348=javax.swing.JFrame, var613=$r8, var1460=javax.swing.JOptionPane, var622=java.awt.Component, var1304=java.lang.Object, var173="Text not found", var609=1}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var2927, r0=var214, i0=var183, $i2=var1143, $r9=var3721, $r4=var3633, $r5=var3545, $r6=var1055, r7=var2444, javax.swing.JFrame=var2348, $r8=var613, javax.swing.JOptionPane=var1460, java.awt.Component=var622, java.lang.Object=var1304, "Text not found"=var173, 1=var609}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	i0 := @parameter0: int;	$i2 = (int) -1;	if i0 != $i2 goto $r2 = r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: org.apache.log4j.lf5.viewer.LogTable _table>;	$r9 = new java.lang.StringBuffer;	specialinvoke $r9.<java.lang.StringBuffer: void <init>()>();	$r4 = r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _searchText>;	$r5 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" not found.");	r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>();	$r8 = r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame _logMonitorFrame>;	staticinvoke <javax.swing.JOptionPane: void showMessageDialog(java.awt.Component,java.lang.Object,java.lang.String,int)>($r8, r7, "Text not found", 1);	return
;block_num 2