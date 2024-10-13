(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1356 0)
(declare-sort var720 0)
(declare-sort var763 0)
(declare-sort var2501 0)
(declare-sort var1205 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var720) String)
(declare-fun log/-1292381875 (var1356 var763 String var2501) void)
(declare-const null-var1356 var1356)
(declare-const null-var720 var720)
(declare-const var763-FINE var763)
(declare-const null-NullType var1205)
(declare-const null-var2501 var2501)
(declare-const var3131 var1356) ; Statement: r0 := @this: org.apache.commons.logging.impl.Jdk13LumberjackLogger 
(assert (not (= var3131 null-var1356)))
(declare-const var2213 var720) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var2213 null-var720)))
(define-const var2205 var763 var763-FINE) ; Statement: $r2 = <java.util.logging.Level: java.util.logging.Level FINE> 
(define-const var946 String (String_valueOf/-333372740 var2213)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (log/-1292381875 var3131 var2205 var946 null-var2501)) ; Statement: specialinvoke r0.<org.apache.commons.logging.impl.Jdk13LumberjackLogger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r3, null) 

(declare-const var3131!1 var1356)
(declare-const var2205!1 var763)
(declare-const var946!1 String)
(declare-const var568 var1205)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), log/-1292381875=([org.apache.commons.logging.impl.Jdk13LumberjackLogger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void)}
; {var1356=org.apache.commons.logging.impl.Jdk13LumberjackLogger, var3131=r0, var720=java.lang.Object, var2213=r1, var763=java.util.logging.Level, var2205=$r2, var946=$r3, var2501=java.lang.Throwable, var568=null, var1205=null_type}
; {org.apache.commons.logging.impl.Jdk13LumberjackLogger=var1356, r0=var3131, java.lang.Object=var720, r1=var2213, java.util.logging.Level=var763, $r2=var2205, $r3=var946, java.lang.Throwable=var2501, null=var568, null_type=var1205}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Jdk13LumberjackLogger;	r1 := @parameter0: java.lang.Object;	$r2 = <java.util.logging.Level: java.util.logging.Level FINE>;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	specialinvoke r0.<org.apache.commons.logging.impl.Jdk13LumberjackLogger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r3, null);	return
;block_num 1