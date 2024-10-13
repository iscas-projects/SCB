(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3982 0)
(declare-sort var690 0)
(declare-sort var3586 0)
(declare-sort var2172 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var690) String)
(declare-fun log/-1292381875 (var3982 var2172 String var3586) void)
(declare-const null-var3982 var3982)
(declare-const null-var690 var690)
(declare-const null-var3586 var3586)
(declare-const var2172-FINE var2172)
(declare-const var552 var3982) ; Statement: r0 := @this: org.apache.commons.logging.impl.Jdk13LumberjackLogger 
(assert (not (= var552 null-var3982)))
(declare-const var1117 var690) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var1117 null-var690)))
(declare-const var3846 var3586) ; Statement: r3 := @parameter1: java.lang.Throwable 
(assert (not (= var3846 null-var3586)))
(define-const var347 var2172 var2172-FINE) ; Statement: $r2 = <java.util.logging.Level: java.util.logging.Level FINE> 
(define-const var3922 String (String_valueOf/-333372740 var1117)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (log/-1292381875 var552 var347 var3922 var3846)) ; Statement: specialinvoke r0.<org.apache.commons.logging.impl.Jdk13LumberjackLogger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r4, r3) 

(declare-const var552!1 var3982)
(declare-const var347!1 var2172)
(declare-const var3922!1 String)
(declare-const var3846!1 var3586)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), log/-1292381875=([org.apache.commons.logging.impl.Jdk13LumberjackLogger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void)}
; {var3982=org.apache.commons.logging.impl.Jdk13LumberjackLogger, var552=r0, var690=java.lang.Object, var1117=r1, var3586=java.lang.Throwable, var3846=r3, var2172=java.util.logging.Level, var347=$r2, var3922=$r4}
; {org.apache.commons.logging.impl.Jdk13LumberjackLogger=var3982, r0=var552, java.lang.Object=var690, r1=var1117, java.lang.Throwable=var3586, r3=var3846, java.util.logging.Level=var2172, $r2=var347, $r4=var3922}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Jdk13LumberjackLogger;	r1 := @parameter0: java.lang.Object;	r3 := @parameter1: java.lang.Throwable;	$r2 = <java.util.logging.Level: java.util.logging.Level FINE>;	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	specialinvoke r0.<org.apache.commons.logging.impl.Jdk13LumberjackLogger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r4, r3);	return
;block_num 1