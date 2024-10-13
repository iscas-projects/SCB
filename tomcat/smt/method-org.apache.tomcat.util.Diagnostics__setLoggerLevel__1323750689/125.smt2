(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3990 0)
(declare-sort var3038 0)
(declare-sort var821 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3038_setLoggerLevel/-734574267 (var3038 String String) void)
(declare-fun var3038_getLoggerLevel/-1221151973 (var3038 String) String)
(declare-const null-String String)
(declare-const var821-loggingMXBean var3038)
(declare-const var3374 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3374 null-String)))
(declare-const var153 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var153 null-String)))
(define-const var693 var3038 var821-loggingMXBean) ; Statement: $r2 = <org.apache.tomcat.util.Diagnostics: java.lang.management.PlatformLoggingMXBean loggingMXBean> 
;(assert (var3038_setLoggerLevel/-734574267 var693 var3374 var153)) ; Statement: interfaceinvoke $r2.<java.lang.management.PlatformLoggingMXBean: void setLoggerLevel(java.lang.String,java.lang.String)>(r0, r1) 

(declare-const var693!1 var3038)
(declare-const var3374!1 String)
(declare-const var153!1 String)
(define-const var320 var3038 var821-loggingMXBean) ; Statement: $r3 = <org.apache.tomcat.util.Diagnostics: java.lang.management.PlatformLoggingMXBean loggingMXBean> 
(define-const var2847 String (var3038_getLoggerLevel/-1221151973 var320 var3374!1)) ; Statement: r4 = interfaceinvoke $r3.<java.lang.management.PlatformLoggingMXBean: java.lang.String getLoggerLevel(java.lang.String)>(r0) 
(assert true)
(define-const var2818 Bool (= var2847 var153!1)) ; Statement: $z0 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var2818 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3038_setLoggerLevel/-734574267=([java.lang.management.PlatformLoggingMXBean, java.lang.String, java.lang.String], void), var3038_getLoggerLevel/-1221151973=([java.lang.management.PlatformLoggingMXBean, java.lang.String], java.lang.String)}
; {var3374=r0, var3990=null_type, var153=r1, var3038=java.lang.management.PlatformLoggingMXBean, var821=org.apache.tomcat.util.Diagnostics, var693=$r2, var320=$r3, var2847=r4, var2818=$z0}
; {r0=var3374, null_type=var3990, r1=var153, java.lang.management.PlatformLoggingMXBean=var3038, org.apache.tomcat.util.Diagnostics=var821, $r2=var693, $r3=var320, r4=var2847, $z0=var2818}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$r2 = <org.apache.tomcat.util.Diagnostics: java.lang.management.PlatformLoggingMXBean loggingMXBean>;	interfaceinvoke $r2.<java.lang.management.PlatformLoggingMXBean: void setLoggerLevel(java.lang.String,java.lang.String)>(r0, r1);	$r3 = <org.apache.tomcat.util.Diagnostics: java.lang.management.PlatformLoggingMXBean loggingMXBean>;	r4 = interfaceinvoke $r3.<java.lang.management.PlatformLoggingMXBean: java.lang.String getLoggerLevel(java.lang.String)>(r0);	$z0 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto return;	return
;block_num 2