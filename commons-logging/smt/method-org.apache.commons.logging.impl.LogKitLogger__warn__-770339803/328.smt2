(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2651 0)
(declare-sort var3052 0)
(declare-sort var400 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLogger/100686094 (var2651) var400)
(declare-fun String_valueOf/-333372740 (var3052) String)
(declare-fun warn/-9348662 (var400 String) void)
(declare-const null-var2651 var2651)
(declare-const null-var3052 var3052)
(declare-const var2451 var2651) ; Statement: r1 := @this: org.apache.commons.logging.impl.LogKitLogger 
(assert (not (= var2451 null-var2651)))
(declare-const var2276 var3052) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2276 null-var3052)))
 ; Statement: if r0 == null goto return 
(assert (not (= var2276 null-var3052))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var2593 var400 (getLogger/100686094 var2451)) ; Statement: $r3 = virtualinvoke r1.<org.apache.commons.logging.impl.LogKitLogger: org.apache.log.Logger getLogger()>() 
(define-const var3852 String (String_valueOf/-333372740 var2276)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0) 
(assert true)
;(assert (warn/-9348662 var2593 var3852)) ; Statement: virtualinvoke $r3.<org.apache.log.Logger: void warn(java.lang.String)>($r2) 

(declare-const var2593!1 var400)
(declare-const var3852!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getLogger/100686094=([org.apache.commons.logging.impl.LogKitLogger], org.apache.log.Logger), String_valueOf/-333372740=([java.lang.Object], java.lang.String), warn/-9348662=([org.apache.log.Logger, java.lang.String], void)}
; {var2651=org.apache.commons.logging.impl.LogKitLogger, var2451=r1, var3052=java.lang.Object, var2276=r0, var400=org.apache.log.Logger, var2593=$r3, var3852=$r2}
; {org.apache.commons.logging.impl.LogKitLogger=var2651, r1=var2451, java.lang.Object=var3052, r0=var2276, org.apache.log.Logger=var400, $r3=var2593, $r2=var3852}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.commons.logging.impl.LogKitLogger;	r0 := @parameter0: java.lang.Object;	if r0 == null goto return;	$r3 = virtualinvoke r1.<org.apache.commons.logging.impl.LogKitLogger: org.apache.log.Logger getLogger()>();	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0);	virtualinvoke $r3.<org.apache.log.Logger: void warn(java.lang.String)>($r2);	return
;block_num 3