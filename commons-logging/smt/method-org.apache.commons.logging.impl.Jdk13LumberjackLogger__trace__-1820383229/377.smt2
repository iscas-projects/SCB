(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1254 0)
(declare-sort var2278 0)
(declare-sort var2678 0)
(declare-sort var1617 0)
(declare-sort var3112 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var2278) String)
(declare-fun log/-1292381875 (var1254 var2678 String var1617) void)
(declare-const null-var1254 var1254)
(declare-const null-var2278 var2278)
(declare-const var2678-FINEST var2678)
(declare-const null-NullType var3112)
(declare-const null-var1617 var1617)
(declare-const var2159 var1254) ; Statement: r0 := @this: org.apache.commons.logging.impl.Jdk13LumberjackLogger 
(assert (not (= var2159 null-var1254)))
(declare-const var26 var2278) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var26 null-var2278)))
(define-const var523 var2678 var2678-FINEST) ; Statement: $r2 = <java.util.logging.Level: java.util.logging.Level FINEST> 
(define-const var2588 String (String_valueOf/-333372740 var26)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (log/-1292381875 var2159 var523 var2588 null-var1617)) ; Statement: specialinvoke r0.<org.apache.commons.logging.impl.Jdk13LumberjackLogger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r3, null) 

(declare-const var2159!1 var1254)
(declare-const var523!1 var2678)
(declare-const var2588!1 String)
(declare-const var1713 var3112)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), log/-1292381875=([org.apache.commons.logging.impl.Jdk13LumberjackLogger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void)}
; {var1254=org.apache.commons.logging.impl.Jdk13LumberjackLogger, var2159=r0, var2278=java.lang.Object, var26=r1, var2678=java.util.logging.Level, var523=$r2, var2588=$r3, var1617=java.lang.Throwable, var1713=null, var3112=null_type}
; {org.apache.commons.logging.impl.Jdk13LumberjackLogger=var1254, r0=var2159, java.lang.Object=var2278, r1=var26, java.util.logging.Level=var2678, $r2=var523, $r3=var2588, java.lang.Throwable=var1617, null=var1713, null_type=var3112}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Jdk13LumberjackLogger;	r1 := @parameter0: java.lang.Object;	$r2 = <java.util.logging.Level: java.util.logging.Level FINEST>;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	specialinvoke r0.<org.apache.commons.logging.impl.Jdk13LumberjackLogger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r3, null);	return
;block_num 1