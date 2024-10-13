(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var431 0)
(declare-sort var3189 0)
(declare-sort var919 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLogger/-1412858970 (var431) var919)
(declare-fun var919_isDebugEnabled/-1946226594 (var919) Bool)
(declare-fun String_valueOf/-333372740 (var3189) String)
(declare-fun var919_debug/-617166452 (var919 String) void)
(declare-const null-var431 var431)
(declare-const null-var3189 var3189)
(declare-const var3935 var431) ; Statement: r0 := @this: org.apache.commons.logging.impl.AvalonLogger 
(assert (not (= var3935 null-var431)))
(declare-const var1469 var3189) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var1469 null-var3189)))
(assert true)
(define-const var1320 var919 (getLogger/-1412858970 var3935)) ; Statement: $r1 = virtualinvoke r0.<org.apache.commons.logging.impl.AvalonLogger: org.apache.avalon.framework.logger.Logger getLogger()>() 
(define-const var3562 Bool (var919_isDebugEnabled/-1946226594 var1320)) ; Statement: $z0 = interfaceinvoke $r1.<org.apache.avalon.framework.logger.Logger: boolean isDebugEnabled()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var3562 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1134 var919 (getLogger/-1412858970 var3935)) ; Statement: $r4 = virtualinvoke r0.<org.apache.commons.logging.impl.AvalonLogger: org.apache.avalon.framework.logger.Logger getLogger()>() 
(define-const var3410 String (String_valueOf/-333372740 var1469)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2) 
;(assert (var919_debug/-617166452 var1134 var3410)) ; Statement: interfaceinvoke $r4.<org.apache.avalon.framework.logger.Logger: void debug(java.lang.String)>($r3) 

(declare-const var1134!1 var919)
(declare-const var3410!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getLogger/-1412858970=([org.apache.commons.logging.impl.AvalonLogger], org.apache.avalon.framework.logger.Logger), var919_isDebugEnabled/-1946226594=([org.apache.avalon.framework.logger.Logger], boolean), String_valueOf/-333372740=([java.lang.Object], java.lang.String), var919_debug/-617166452=([org.apache.avalon.framework.logger.Logger, java.lang.String], void)}
; {var431=org.apache.commons.logging.impl.AvalonLogger, var3935=r0, var3189=java.lang.Object, var1469=r2, var919=org.apache.avalon.framework.logger.Logger, var1320=$r1, var3562=$z0, var1134=$r4, var3410=$r3}
; {org.apache.commons.logging.impl.AvalonLogger=var431, r0=var3935, java.lang.Object=var3189, r2=var1469, org.apache.avalon.framework.logger.Logger=var919, $r1=var1320, $z0=var3562, $r4=var1134, $r3=var3410}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.AvalonLogger;	r2 := @parameter0: java.lang.Object;	$r1 = virtualinvoke r0.<org.apache.commons.logging.impl.AvalonLogger: org.apache.avalon.framework.logger.Logger getLogger()>();	$z0 = interfaceinvoke $r1.<org.apache.avalon.framework.logger.Logger: boolean isDebugEnabled()>();	if $z0 == 0 goto return;	$r4 = virtualinvoke r0.<org.apache.commons.logging.impl.AvalonLogger: org.apache.avalon.framework.logger.Logger getLogger()>();	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2);	interfaceinvoke $r4.<org.apache.avalon.framework.logger.Logger: void debug(java.lang.String)>($r3);	return
;block_num 3