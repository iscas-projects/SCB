(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2641 0)
(declare-sort var535 0)
(declare-sort var1144 0)
(declare-sort var2928 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var535) String)
(declare-fun log/-1292381875 (var2641 var2928 String var1144) void)
(declare-const null-var2641 var2641)
(declare-const null-var535 var535)
(declare-const null-var1144 var1144)
(declare-const var2928-INFO var2928)
(declare-const var826 var2641) ; Statement: r0 := @this: org.apache.commons.logging.impl.Jdk13LumberjackLogger 
(assert (not (= var826 null-var2641)))
(declare-const var3115 var535) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3115 null-var535)))
(declare-const var940 var1144) ; Statement: r3 := @parameter1: java.lang.Throwable 
(assert (not (= var940 null-var1144)))
(define-const var1530 var2928 var2928-INFO) ; Statement: $r2 = <java.util.logging.Level: java.util.logging.Level INFO> 
(define-const var1179 String (String_valueOf/-333372740 var3115)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (log/-1292381875 var826 var1530 var1179 var940)) ; Statement: specialinvoke r0.<org.apache.commons.logging.impl.Jdk13LumberjackLogger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r4, r3) 

(declare-const var826!1 var2641)
(declare-const var1530!1 var2928)
(declare-const var1179!1 String)
(declare-const var940!1 var1144)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), log/-1292381875=([org.apache.commons.logging.impl.Jdk13LumberjackLogger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void)}
; {var2641=org.apache.commons.logging.impl.Jdk13LumberjackLogger, var826=r0, var535=java.lang.Object, var3115=r1, var1144=java.lang.Throwable, var940=r3, var2928=java.util.logging.Level, var1530=$r2, var1179=$r4}
; {org.apache.commons.logging.impl.Jdk13LumberjackLogger=var2641, r0=var826, java.lang.Object=var535, r1=var3115, java.lang.Throwable=var1144, r3=var940, java.util.logging.Level=var2928, $r2=var1530, $r4=var1179}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Jdk13LumberjackLogger;	r1 := @parameter0: java.lang.Object;	r3 := @parameter1: java.lang.Throwable;	$r2 = <java.util.logging.Level: java.util.logging.Level INFO>;	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	specialinvoke r0.<org.apache.commons.logging.impl.Jdk13LumberjackLogger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r4, r3);	return
;block_num 1