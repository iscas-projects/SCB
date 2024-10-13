(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var391 0)
(declare-sort var1882 0)
(declare-sort var138 0)
(declare-sort var2505 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var1882) String)
(declare-fun log/-1292381875 (var391 var2505 String var138) void)
(declare-const null-var391 var391)
(declare-const null-var1882 var1882)
(declare-const null-var138 var138)
(declare-const var2505-FINEST var2505)
(declare-const var2313 var391) ; Statement: r0 := @this: org.apache.commons.logging.impl.Jdk13LumberjackLogger 
(assert (not (= var2313 null-var391)))
(declare-const var3838 var1882) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3838 null-var1882)))
(declare-const var2286 var138) ; Statement: r3 := @parameter1: java.lang.Throwable 
(assert (not (= var2286 null-var138)))
(define-const var2653 var2505 var2505-FINEST) ; Statement: $r2 = <java.util.logging.Level: java.util.logging.Level FINEST> 
(define-const var1567 String (String_valueOf/-333372740 var3838)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (log/-1292381875 var2313 var2653 var1567 var2286)) ; Statement: specialinvoke r0.<org.apache.commons.logging.impl.Jdk13LumberjackLogger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r4, r3) 

(declare-const var2313!1 var391)
(declare-const var2653!1 var2505)
(declare-const var1567!1 String)
(declare-const var2286!1 var138)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), log/-1292381875=([org.apache.commons.logging.impl.Jdk13LumberjackLogger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void)}
; {var391=org.apache.commons.logging.impl.Jdk13LumberjackLogger, var2313=r0, var1882=java.lang.Object, var3838=r1, var138=java.lang.Throwable, var2286=r3, var2505=java.util.logging.Level, var2653=$r2, var1567=$r4}
; {org.apache.commons.logging.impl.Jdk13LumberjackLogger=var391, r0=var2313, java.lang.Object=var1882, r1=var3838, java.lang.Throwable=var138, r3=var2286, java.util.logging.Level=var2505, $r2=var2653, $r4=var1567}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Jdk13LumberjackLogger;	r1 := @parameter0: java.lang.Object;	r3 := @parameter1: java.lang.Throwable;	$r2 = <java.util.logging.Level: java.util.logging.Level FINEST>;	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	specialinvoke r0.<org.apache.commons.logging.impl.Jdk13LumberjackLogger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r4, r3);	return
;block_num 1