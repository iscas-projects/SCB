(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3194 0)
(declare-sort var3460 0)
(declare-sort var103 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun setDetailedView/741445863 (var103) void)
(declare-fun _currentView/-1291859940 (var3194) String)
(declare-const null-var3194 var3194)
(declare-const null-String String)
(declare-const null-var103 var103)
(declare-const var2231 var3194) ; Statement: r8 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var2231 null-var3194)))
(declare-const var773 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var773 null-String)))
(declare-const var188 var103) ; Statement: r7 := @parameter1: org.apache.log4j.lf5.viewer.LogTable 
(assert (not (= var188 null-var103)))
(define-const var1477 String "Detailed") ; Statement: $r1 = "Detailed" 
(assert true)
(define-const var1703 Bool (= var1477 var773)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.StringBuffer 
(assert (not (= (ite var1703 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (setDetailedView/741445863 var188)) ; Statement: virtualinvoke r7.<org.apache.log4j.lf5.viewer.LogTable: void setDetailedView()>() 

(declare-const var188!1 var103)
 ; Statement: goto [?= r8.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _currentView> = r0] 
(assert true) ; Non Conditional
(declare-const var2231!1 var3194)
(assert (not (= var2231!1 null-var3194)))
(assert (= (_currentView/-1291859940 var2231!1) var773)) ; Statement: r8.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _currentView> = r0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {setDetailedView/741445863=([org.apache.log4j.lf5.viewer.LogTable], void), _currentView/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.lang.String)}
; {var3194=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var2231=r8, var773=r0, var3460=null_type, var103=org.apache.log4j.lf5.viewer.LogTable, var188=r7, var1477=$r1, var1703=$z0}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var3194, r8=var2231, r0=var773, null_type=var3460, org.apache.log4j.lf5.viewer.LogTable=var103, r7=var188, $r1=var1477, $z0=var1703}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r8 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	r0 := @parameter0: java.lang.String;	r7 := @parameter1: org.apache.log4j.lf5.viewer.LogTable;	$r1 = "Detailed";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = new java.lang.StringBuffer;	virtualinvoke r7.<org.apache.log4j.lf5.viewer.LogTable: void setDetailedView()>();	goto [?= r8.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _currentView> = r0];	r8.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _currentView> = r0;	return
;block_num 3