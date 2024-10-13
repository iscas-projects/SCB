(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2076 0)
(declare-sort var3694 0)
(declare-sort var3528 0)
(declare-sort var2539 0)
(declare-sort var3282 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var3694) String)
(declare-fun log/-1292381875 (var2076 var3528 String var2539) void)
(declare-const null-var2076 var2076)
(declare-const null-var3694 var3694)
(declare-const var3528-SEVERE var3528)
(declare-const null-NullType var3282)
(declare-const null-var2539 var2539)
(declare-const var2553 var2076) ; Statement: r0 := @this: org.apache.commons.logging.impl.Jdk13LumberjackLogger 
(assert (not (= var2553 null-var2076)))
(declare-const var2730 var3694) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var2730 null-var3694)))
(define-const var818 var3528 var3528-SEVERE) ; Statement: $r2 = <java.util.logging.Level: java.util.logging.Level SEVERE> 
(define-const var138 String (String_valueOf/-333372740 var2730)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (log/-1292381875 var2553 var818 var138 null-var2539)) ; Statement: specialinvoke r0.<org.apache.commons.logging.impl.Jdk13LumberjackLogger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r3, null) 

(declare-const var2553!1 var2076)
(declare-const var818!1 var3528)
(declare-const var138!1 String)
(declare-const var58 var3282)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), log/-1292381875=([org.apache.commons.logging.impl.Jdk13LumberjackLogger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void)}
; {var2076=org.apache.commons.logging.impl.Jdk13LumberjackLogger, var2553=r0, var3694=java.lang.Object, var2730=r1, var3528=java.util.logging.Level, var818=$r2, var138=$r3, var2539=java.lang.Throwable, var58=null, var3282=null_type}
; {org.apache.commons.logging.impl.Jdk13LumberjackLogger=var2076, r0=var2553, java.lang.Object=var3694, r1=var2730, java.util.logging.Level=var3528, $r2=var818, $r3=var138, java.lang.Throwable=var2539, null=var58, null_type=var3282}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Jdk13LumberjackLogger;	r1 := @parameter0: java.lang.Object;	$r2 = <java.util.logging.Level: java.util.logging.Level SEVERE>;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	specialinvoke r0.<org.apache.commons.logging.impl.Jdk13LumberjackLogger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r3, null);	return
;block_num 1