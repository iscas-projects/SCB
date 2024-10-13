(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3295 0)
(declare-sort var1609 0)
(declare-sort var3783 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLogger/-1412858970 (var3295) var3783)
(declare-fun var3783_isWarnEnabled/-51508077 (var3783) Bool)
(declare-fun String_valueOf/-333372740 (var1609) String)
(declare-fun var3783_warn/625345119 (var3783 String) void)
(declare-const null-var3295 var3295)
(declare-const null-var1609 var1609)
(declare-const var1123 var3295) ; Statement: r0 := @this: org.apache.commons.logging.impl.AvalonLogger 
(assert (not (= var1123 null-var3295)))
(declare-const var2405 var1609) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var2405 null-var1609)))
(assert true)
(define-const var1154 var3783 (getLogger/-1412858970 var1123)) ; Statement: $r1 = virtualinvoke r0.<org.apache.commons.logging.impl.AvalonLogger: org.apache.avalon.framework.logger.Logger getLogger()>() 
(define-const var270 Bool (var3783_isWarnEnabled/-51508077 var1154)) ; Statement: $z0 = interfaceinvoke $r1.<org.apache.avalon.framework.logger.Logger: boolean isWarnEnabled()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var270 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1835 var3783 (getLogger/-1412858970 var1123)) ; Statement: $r4 = virtualinvoke r0.<org.apache.commons.logging.impl.AvalonLogger: org.apache.avalon.framework.logger.Logger getLogger()>() 
(define-const var2077 String (String_valueOf/-333372740 var2405)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2) 
;(assert (var3783_warn/625345119 var1835 var2077)) ; Statement: interfaceinvoke $r4.<org.apache.avalon.framework.logger.Logger: void warn(java.lang.String)>($r3) 

(declare-const var1835!1 var3783)
(declare-const var2077!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getLogger/-1412858970=([org.apache.commons.logging.impl.AvalonLogger], org.apache.avalon.framework.logger.Logger), var3783_isWarnEnabled/-51508077=([org.apache.avalon.framework.logger.Logger], boolean), String_valueOf/-333372740=([java.lang.Object], java.lang.String), var3783_warn/625345119=([org.apache.avalon.framework.logger.Logger, java.lang.String], void)}
; {var3295=org.apache.commons.logging.impl.AvalonLogger, var1123=r0, var1609=java.lang.Object, var2405=r2, var3783=org.apache.avalon.framework.logger.Logger, var1154=$r1, var270=$z0, var1835=$r4, var2077=$r3}
; {org.apache.commons.logging.impl.AvalonLogger=var3295, r0=var1123, java.lang.Object=var1609, r2=var2405, org.apache.avalon.framework.logger.Logger=var3783, $r1=var1154, $z0=var270, $r4=var1835, $r3=var2077}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.AvalonLogger;	r2 := @parameter0: java.lang.Object;	$r1 = virtualinvoke r0.<org.apache.commons.logging.impl.AvalonLogger: org.apache.avalon.framework.logger.Logger getLogger()>();	$z0 = interfaceinvoke $r1.<org.apache.avalon.framework.logger.Logger: boolean isWarnEnabled()>();	if $z0 == 0 goto return;	$r4 = virtualinvoke r0.<org.apache.commons.logging.impl.AvalonLogger: org.apache.avalon.framework.logger.Logger getLogger()>();	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2);	interfaceinvoke $r4.<org.apache.avalon.framework.logger.Logger: void warn(java.lang.String)>($r3);	return
;block_num 3