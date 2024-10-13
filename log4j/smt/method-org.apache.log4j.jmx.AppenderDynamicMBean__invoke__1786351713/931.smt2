(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3079 0)
(declare-sort var3077 0)
(declare-sort var2849 0)
(declare-sort var3854 0)
(declare-sort var3324 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun appender/1256938504 (var3079) var3854)
(declare-fun cast-from-var3854-to-var3324 (var3854) var3324)
(declare-fun var3324_activateOptions/189825011 (var3324) void)
(declare-const null-var3079 var3079)
(declare-const null-String String)
(declare-const null-__Array__Int__var2849__ (Array Int var2849))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3587 var3079) ; Statement: r6 := @this: org.apache.log4j.jmx.AppenderDynamicMBean 
(assert (not (= var3587 null-var3079)))
(declare-const var3704 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3704 null-String)))
(declare-const var3008 (Array Int var2849)) ; Statement: r1 := @parameter1: java.lang.Object[] 
(assert (not (= var3008 null-__Array__Int__var2849__)))
(declare-const var710 (Array Int String)) ; Statement: r11 := @parameter2: java.lang.String[] 
(assert (not (= var710 null-__Array__Int__String__)))
(assert true)
(define-const var3477 Bool (= var3704 "activateOptions")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("activateOptions") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("setLayout") 
(assert (not (= (ite var3477 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var49 var3854 (appender/1256938504 var3587)) ; Statement: $r9 = r6.<org.apache.log4j.jmx.AppenderDynamicMBean: org.apache.log4j.Appender appender> 
(define-const var468 Bool true) ; Statement: $z2 = $r9 instanceof org.apache.log4j.spi.OptionHandler 
 ; Statement: if $z2 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("setLayout") 
(assert (not (= (ite var468 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3952 var3854 (appender/1256938504 var3587)) ; Statement: $r10 = r6.<org.apache.log4j.jmx.AppenderDynamicMBean: org.apache.log4j.Appender appender> 
(define-const var1537 var3324 (cast-from-var3854-to-var3324 var3952)) ; Statement: r12 = (org.apache.log4j.spi.OptionHandler) $r10 
;(assert (var3324_activateOptions/189825011 var1537)) ; Statement: interfaceinvoke r12.<org.apache.log4j.spi.OptionHandler: void activateOptions()>() 

(declare-const var1537!1 var3324)
 ; Statement: return "Options activated." 
(check-sat)
(get-model)
(get-unsat-core)
; {appender/1256938504=([org.apache.log4j.jmx.AppenderDynamicMBean], org.apache.log4j.Appender), cast-from-var3854-to-var3324=([org.apache.log4j.Appender], org.apache.log4j.spi.OptionHandler), var3324_activateOptions/189825011=([org.apache.log4j.spi.OptionHandler], void)}
; {var3079=org.apache.log4j.jmx.AppenderDynamicMBean, var3587=r6, var3704=r0, var3077=null_type, var2849=java.lang.Object, var3008=r1, var710=r11, var3477=$z0, var3854=org.apache.log4j.Appender, var49=$r9, var468=$z2, var3952=$r10, var3324=org.apache.log4j.spi.OptionHandler, var1537=r12}
; {org.apache.log4j.jmx.AppenderDynamicMBean=var3079, r6=var3587, r0=var3704, null_type=var3077, java.lang.Object=var2849, r1=var3008, r11=var710, $z0=var3477, org.apache.log4j.Appender=var3854, $r9=var49, $z2=var468, $r10=var3952, org.apache.log4j.spi.OptionHandler=var3324, r12=var1537}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r6 := @this: org.apache.log4j.jmx.AppenderDynamicMBean;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.Object[];	r11 := @parameter2: java.lang.String[];	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("activateOptions");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("setLayout");	$r9 = r6.<org.apache.log4j.jmx.AppenderDynamicMBean: org.apache.log4j.Appender appender>;	$z2 = $r9 instanceof org.apache.log4j.spi.OptionHandler;	if $z2 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("setLayout");	$r10 = r6.<org.apache.log4j.jmx.AppenderDynamicMBean: org.apache.log4j.Appender appender>;	r12 = (org.apache.log4j.spi.OptionHandler) $r10;	interfaceinvoke r12.<org.apache.log4j.spi.OptionHandler: void activateOptions()>();	return "Options activated."
;block_num 3