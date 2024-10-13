(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2953 0)
(declare-sort var2181 0)
(declare-sort var645 0)
(declare-sort var3305 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLogger/-1412858970 (var2953) var3305)
(declare-fun var3305_isWarnEnabled/-51508077 (var3305) Bool)
(declare-fun String_valueOf/-333372740 (var2181) String)
(declare-fun var3305_warn/-181148641 (var3305 String var645) void)
(declare-const null-var2953 var2953)
(declare-const null-var2181 var2181)
(declare-const null-var645 var645)
(declare-const var3227 var2953) ; Statement: r0 := @this: org.apache.commons.logging.impl.AvalonLogger 
(assert (not (= var3227 null-var2953)))
(declare-const var1891 var2181) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var1891 null-var2181)))
(declare-const var1546 var645) ; Statement: r3 := @parameter1: java.lang.Throwable 
(assert (not (= var1546 null-var645)))
(assert true)
(define-const var1983 var3305 (getLogger/-1412858970 var3227)) ; Statement: $r1 = virtualinvoke r0.<org.apache.commons.logging.impl.AvalonLogger: org.apache.avalon.framework.logger.Logger getLogger()>() 
(define-const var3985 Bool (var3305_isWarnEnabled/-51508077 var1983)) ; Statement: $z0 = interfaceinvoke $r1.<org.apache.avalon.framework.logger.Logger: boolean isWarnEnabled()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var3985 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1748 var3305 (getLogger/-1412858970 var3227)) ; Statement: $r5 = virtualinvoke r0.<org.apache.commons.logging.impl.AvalonLogger: org.apache.avalon.framework.logger.Logger getLogger()>() 
(define-const var66 String (String_valueOf/-333372740 var1891)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2) 
;(assert (var3305_warn/-181148641 var1748 var66 var1546)) ; Statement: interfaceinvoke $r5.<org.apache.avalon.framework.logger.Logger: void warn(java.lang.String,java.lang.Throwable)>($r4, r3) 

(declare-const var1748!1 var3305)
(declare-const var66!1 String)
(declare-const var1546!1 var645)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getLogger/-1412858970=([org.apache.commons.logging.impl.AvalonLogger], org.apache.avalon.framework.logger.Logger), var3305_isWarnEnabled/-51508077=([org.apache.avalon.framework.logger.Logger], boolean), String_valueOf/-333372740=([java.lang.Object], java.lang.String), var3305_warn/-181148641=([org.apache.avalon.framework.logger.Logger, java.lang.String, java.lang.Throwable], void)}
; {var2953=org.apache.commons.logging.impl.AvalonLogger, var3227=r0, var2181=java.lang.Object, var1891=r2, var645=java.lang.Throwable, var1546=r3, var3305=org.apache.avalon.framework.logger.Logger, var1983=$r1, var3985=$z0, var1748=$r5, var66=$r4}
; {org.apache.commons.logging.impl.AvalonLogger=var2953, r0=var3227, java.lang.Object=var2181, r2=var1891, java.lang.Throwable=var645, r3=var1546, org.apache.avalon.framework.logger.Logger=var3305, $r1=var1983, $z0=var3985, $r5=var1748, $r4=var66}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.AvalonLogger;	r2 := @parameter0: java.lang.Object;	r3 := @parameter1: java.lang.Throwable;	$r1 = virtualinvoke r0.<org.apache.commons.logging.impl.AvalonLogger: org.apache.avalon.framework.logger.Logger getLogger()>();	$z0 = interfaceinvoke $r1.<org.apache.avalon.framework.logger.Logger: boolean isWarnEnabled()>();	if $z0 == 0 goto return;	$r5 = virtualinvoke r0.<org.apache.commons.logging.impl.AvalonLogger: org.apache.avalon.framework.logger.Logger getLogger()>();	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2);	interfaceinvoke $r5.<org.apache.avalon.framework.logger.Logger: void warn(java.lang.String,java.lang.Throwable)>($r4, r3);	return
;block_num 3