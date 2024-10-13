(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1125 0)
(declare-sort var1423 0)
(declare-sort var287 0)
(declare-sort var1114 0)
(declare-sort var174 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var1423) String)
(declare-fun log/-1292381875 (var1125 var287 String var1114) void)
(declare-const null-var1125 var1125)
(declare-const null-var1423 var1423)
(declare-const var287-SEVERE var287)
(declare-const null-NullType var174)
(declare-const null-var1114 var1114)
(declare-const var905 var1125) ; Statement: r0 := @this: org.apache.commons.logging.impl.Jdk13LumberjackLogger 
(assert (not (= var905 null-var1125)))
(declare-const var253 var1423) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var253 null-var1423)))
(define-const var1294 var287 var287-SEVERE) ; Statement: $r2 = <java.util.logging.Level: java.util.logging.Level SEVERE> 
(define-const var1970 String (String_valueOf/-333372740 var253)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (log/-1292381875 var905 var1294 var1970 null-var1114)) ; Statement: specialinvoke r0.<org.apache.commons.logging.impl.Jdk13LumberjackLogger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r3, null) 

(declare-const var905!1 var1125)
(declare-const var1294!1 var287)
(declare-const var1970!1 String)
(declare-const var3767 var174)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), log/-1292381875=([org.apache.commons.logging.impl.Jdk13LumberjackLogger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void)}
; {var1125=org.apache.commons.logging.impl.Jdk13LumberjackLogger, var905=r0, var1423=java.lang.Object, var253=r1, var287=java.util.logging.Level, var1294=$r2, var1970=$r3, var1114=java.lang.Throwable, var3767=null, var174=null_type}
; {org.apache.commons.logging.impl.Jdk13LumberjackLogger=var1125, r0=var905, java.lang.Object=var1423, r1=var253, java.util.logging.Level=var287, $r2=var1294, $r3=var1970, java.lang.Throwable=var1114, null=var3767, null_type=var174}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Jdk13LumberjackLogger;	r1 := @parameter0: java.lang.Object;	$r2 = <java.util.logging.Level: java.util.logging.Level SEVERE>;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	specialinvoke r0.<org.apache.commons.logging.impl.Jdk13LumberjackLogger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r3, null);	return
;block_num 1