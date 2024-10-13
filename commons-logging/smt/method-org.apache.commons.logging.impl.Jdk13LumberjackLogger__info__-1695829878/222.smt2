(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2322 0)
(declare-sort var2621 0)
(declare-sort var1855 0)
(declare-sort var3134 0)
(declare-sort var1340 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var2621) String)
(declare-fun log/-1292381875 (var2322 var1855 String var3134) void)
(declare-const null-var2322 var2322)
(declare-const null-var2621 var2621)
(declare-const var1855-INFO var1855)
(declare-const null-NullType var1340)
(declare-const null-var3134 var3134)
(declare-const var175 var2322) ; Statement: r0 := @this: org.apache.commons.logging.impl.Jdk13LumberjackLogger 
(assert (not (= var175 null-var2322)))
(declare-const var3778 var2621) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3778 null-var2621)))
(define-const var53 var1855 var1855-INFO) ; Statement: $r2 = <java.util.logging.Level: java.util.logging.Level INFO> 
(define-const var3650 String (String_valueOf/-333372740 var3778)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (log/-1292381875 var175 var53 var3650 null-var3134)) ; Statement: specialinvoke r0.<org.apache.commons.logging.impl.Jdk13LumberjackLogger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r3, null) 

(declare-const var175!1 var2322)
(declare-const var53!1 var1855)
(declare-const var3650!1 String)
(declare-const var2332 var1340)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), log/-1292381875=([org.apache.commons.logging.impl.Jdk13LumberjackLogger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void)}
; {var2322=org.apache.commons.logging.impl.Jdk13LumberjackLogger, var175=r0, var2621=java.lang.Object, var3778=r1, var1855=java.util.logging.Level, var53=$r2, var3650=$r3, var3134=java.lang.Throwable, var2332=null, var1340=null_type}
; {org.apache.commons.logging.impl.Jdk13LumberjackLogger=var2322, r0=var175, java.lang.Object=var2621, r1=var3778, java.util.logging.Level=var1855, $r2=var53, $r3=var3650, java.lang.Throwable=var3134, null=var2332, null_type=var1340}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Jdk13LumberjackLogger;	r1 := @parameter0: java.lang.Object;	$r2 = <java.util.logging.Level: java.util.logging.Level INFO>;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	specialinvoke r0.<org.apache.commons.logging.impl.Jdk13LumberjackLogger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r3, null);	return
;block_num 1